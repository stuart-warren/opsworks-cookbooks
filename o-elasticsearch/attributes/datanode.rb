
include_attribute 'o-elasticsearch::default'

default.elasticsearch['version'] = '1.1.0'
default.elasticsearch['node']['master'] = false
default.elasticsearch['node']['data'] = true
default.elasticsearch['custom_config']['indices.memory.index_buffer_size'] = '60%'
default.elasticsearch['plugins']['elasticsearch/elasticsearch-cloud-aws']['version'] = '2.1.0'
