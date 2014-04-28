
include_recipe 'o-elasticsearch::default'

node.override['elasticsearch']['version'] = '1.1.0'
node.override['elasticsearch']['node']['master'] = false
node.override['elasticsearch']['node']['data'] = true
node.override['elasticsearch']['custom_config']['indices.memory.index_buffer_size'] = '60%'
node.override['elasticsearch']['plugins']['elasticsearch/elasticsearch-cloud-aws']['version'] = '2.1.0'
