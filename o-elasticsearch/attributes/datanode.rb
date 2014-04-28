
set['elasticsearch']['version'] = '1.1.0'
set['elasticsearch']['node']['master'] = false
set['elasticsearch']['node']['data'] = true
set['elasticsearch']['custom_config']['indices.memory.index_buffer_size'] = '60%'
set['elasticsearch']['plugins']['elasticsearch/elasticsearch-cloud-aws']['version'] = '2.1.0'
