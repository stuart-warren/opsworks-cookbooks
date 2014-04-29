
normal.logstash['instance']['server']['enable_embedded_es'] = false
# normal.logstash['instance']['server']['filters'] = [{}]
normal.logstash['instance']['server']['outputs'][0]['elasticsearch_http']['host'] = 'elasticsearch-frontend-946485335.eu-west-1.elb.amazonaws.com'
normal.logstash['instance']['server']['outputs'][0]['elasticsearch_http']['port'] = '9200'
normal.logstash['instance']['server']['outputs'][0]['elasticsearch_http']['flush_size'] = 500
normal.logstash['instance']['server']['outputs'][0]['elasticsearch_http']['idle_flush_time'] = 1
normal.logstash['instance']['server']['outputs'][0]['elasticsearch_http']['replication'] = 'sync'
normal.logstash['instance']['server']['outputs'][0]['elasticsearch_http']['workers'] = 3
normal.logstash['instance']['server']['outputs'][0]['elasticsearch_http']['index'] = "aws-logstash-%{+YYYY.MM.dd}"
normal.logstash['instance']['server']['outputs'][0]['elasticsearch_http']['manage_templates'] = false
normal.logstash['instance']['server']['outputs'][0]['elasticsearch_http']['codec'] = 'json'
