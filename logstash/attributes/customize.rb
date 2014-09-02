

normal.logstash['install_zeromq'] = true
normal.logstash['server']['enable_embedded_es'] = false

# private variables can be kept out of your templates by putting in your chef json
# normal.logstash['server']['elasticsearch_ip'] = 'elasticsearch-frontend-000000.eu-west-1.elb.amazonaws.com'
# normal.logstash['server']['elasticsearch_port'] = '9200'
normal.logstash['server']['config_file'] = nil
normal.logstash['server']['config_templates'] = ['o_server','o_server_udp']

# zmq_sockopts: '"ZMQ::RCVHWM",1000,"ZMQ::LINGER",10000, "ZMQ::RCVBUF", 87380',
normal.logstash['server']['config_templates_variables'] = { o_server: { zmq_port: 2120,
                                                                        zmq_sockopts: '"ZMQ::LINGER",10000',
                                                                        es_server_ip: node['logstash']['server']['elasticsearch_ip'],
                                                                        es_port: node['logstash']['server']['elasticsearch_port'],
                                                                        es_index_prd: "aws-logstash-%{+YYYY.MM.dd}",
                                                                        es_flush_size: 500,
                                                                        es_idle_flush: 1,
                                                                        es_codec: 'json' } }
