
include_recipe "aws"
aws = data_bag_item("aws", "main")

unless node['aws-tag']['tags'].empty? || node['aws-tag']['tags'].nil?
    aws_resource_tag node['ec2']['instance_id'] do
        aws_access_key aws['aws_access_key_id']
        aws_secret_access_key aws['aws_secret_access_key']
        tags(node['aws-tag']['tags'])
        action :update
    end
end
