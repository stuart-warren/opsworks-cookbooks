
normal.logstash['server']['enable_embedded_es'] = false

normal.logstash['server']['elasticsearch_ip'] = '127.0.0.1'
normal.logstash['server']['elasticsearch_query'] = 'stack:elasticsearch*'
normal.logstash['server']['graphite_ip'] = '127.0.0.1'
normal.logstash['server']['graphite_query'] = 'stack:graphite*'

# normal.logstash['server']['filters'] = [{}]
# normal.logstash['server']['outputs'][0]['elasticsearch_http']['host'] = 'elasticsearch-frontend-946485335.eu-west-1.elb.amazonaws.com'
# normal.logstash['server']['outputs'][0]['elasticsearch_http']['port'] = '9200'
# normal.logstash['server']['outputs'][0]['elasticsearch_http']['flush_size'] = 500
# normal.logstash['server']['outputs'][0]['elasticsearch_http']['idle_flush_time'] = 1
# normal.logstash['server']['outputs'][0]['elasticsearch_http']['replication'] = 'sync'
# normal.logstash['server']['outputs'][0]['elasticsearch_http']['workers'] = 3
# normal.logstash['server']['outputs'][0]['elasticsearch_http']['index'] = "aws-logstash-%{+YYYY.MM.dd}"
# normal.logstash['server']['outputs'][0]['elasticsearch_http']['manage_templates'] = false
# normal.logstash['server']['outputs'][0]['elasticsearch_http']['codec'] = 'json'
