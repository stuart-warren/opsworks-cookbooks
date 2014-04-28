
include_recipe 'o-elasticsearch::default'
include_recipe 'elasticsearch::proxy'

node.override['elasticsearch']['version'] = '1.1.0'
node.override['elasticsearch']['node']['master'] = true
node.override['elasticsearch']['node']['data'] = false
node.override['elasticsearch']['nginx']['allow_cluster_api'] = true
node.override['elasticsearch']['nginx']['port'] = 80
node.override['elasticsearch']['plugins']['karmi/elasticsearch-paramedic'] = {}
node.override['elasticsearch']['plugins']['lmenezes/elasticsearch-kopf']['version'] = '0.5.5'
node.override['elasticsearch']['plugins']['royrusso/elasticsearch-HQ'] = {}
node.override['elasticsearch']['plugins']['karmi/elasticsearch-paramedic'] = {}
