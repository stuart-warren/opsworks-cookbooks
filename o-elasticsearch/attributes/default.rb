include_attribute 'elasticsearch::default'

default.elasticsearch['version'] = '1.1.0'
default.elasticsearch['cluster']['name'] = 'elasticsearch'
default.elasticsearch['node']['master'] = true
default.elasticsearch['node']['data'] = true
default.elasticsearch['logging']['action.discovery.ec2'] = 'WARN'
default.elasticsearch['plugins']['elasticsearch/elasticsearch-cloud-aws']['version'] = '2.1.0'
default.elasticsearch['cloud']['aws']['region'] = 'eu-west-1'
default.elasticsearch['index']['number_of_shards'] = 3
default.elasticsearch['index']['number_of_replicas'] = 2
default.elasticsearch['discovery']['type'] = 'ec2'
default.elasticsearch['discovery']['zen']['minimum_master_nodes'] = 1
default.elasticsearch['discovery']['ping']['multicast']['enabled'] = false
default.elasticsearch['discovery']['ec2']['tag']['opsworks:stack'] = "elasticsearch"
default.elasticsearch['limits']['nofile'] = 655350
default.elasticsearch['custom_config']['cluster.routing.allocation.awareness.attributes'] = 'aws_availability_zone'
default.elasticsearch['custom_config']['index.refresh_interval'] = '3s'
default.elasticsearch['custom_config']['indices.fielddata.cache.size'] = '15%'
default.elasticsearch['custom_config']['indices.fielddata.cache.expire'] = '1h'
default.elasticsearch['custom_config']['indices.cache.filter.size'] = '15%'
