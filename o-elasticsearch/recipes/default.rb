# using logstash from elasticsearch/cookbook-elasticsearch

include_recipe 'elasticsearch'
include_recipe 'elasticsearch::aws'
include_recipe 'elasticsearch::plugins'

node.override['elasticsearch']['version'] = '1.1.0'
node.override['elasticsearch']['cluster']['name'] = 'elasticsearch'
node.override['elasticsearch']['node']['master'] = true
node.override['elasticsearch']['node']['data'] = true
node.override['elasticsearch']['logging']['action.discovery.ec2'] = 'WARN'
node.override['elasticsearch']['plugins']['elasticsearch/elasticsearch-cloud-aws']['version'] = '2.1.0'
node.override['elasticsearch']['cloud']['aws']['region'] = 'eu-west-1'
node.override['elasticsearch']['index']['number_of_shards'] = 3
node.override['elasticsearch']['index']['number_of_replicas'] = 2
node.override['elasticsearch']['discovery']['type'] = 'ec2'
node.override['elasticsearch']['discovery']['zen']['minimum_master_nodes'] = 1
node.override['elasticsearch']['discovery']['ping']['multicast']['enabled'] = false
node.override['elasticsearch']['discovery']['ec2']['tag']['opsworks:stack'] = "elasticsearch"
node.override['elasticsearch']['limits']['nofile'] = 655350
node.override['elasticsearch']['custom_config']['cluster.routing.allocation.awareness.attributes'] = 'aws_availability_zone'
node.override['elasticsearch']['custom_config']['index.refresh_interval'] = '3s'
node.override['elasticsearch']['custom_config']['indices.fielddata.cache.size'] = '15%'
node.override['elasticsearch']['custom_config']['indices.fielddata.cache.expire'] = '1h'
node.override['elasticsearch']['custom_config']['indices.cache.filter.size'] = '15%'
