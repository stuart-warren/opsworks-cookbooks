

# default['logstash']['install_zeromq'] = true
default['logstash']['server']['enable_embedded_es'] = false
default['logstash']['server']['inputs'] = []
default['logstash']['server']['filters'] = []
default['logstash']['server']['outputs'][0]['elasticsearch_http']['host'] = 'localhost'
default['logstash']['server']['outputs'][0]['elasticsearch_http']['port'] = '9200'
default['logstash']['server']['outputs'][0]['elasticsearch_http']['flush_size'] = 500
default['logstash']['server']['outputs'][0]['elasticsearch_http']['idle_flush_time'] = 1
default['logstash']['server']['outputs'][0]['elasticsearch_http']['replication'] = 'sync'
default['logstash']['server']['outputs'][0]['elasticsearch_http']['workers'] = 3
default['logstash']['server']['outputs'][0]['elasticsearch_http']['index'] = 'aws-logstash-%{+YYYY.MM.dd}'
default['logstash']['server']['outputs'][0]['elasticsearch_http']['manage_templates'] = false
default['logstash']['server']['outputs'][0]['elasticsearch_http']['codec'] = 'json'
