

normal['platform_version'] = '6.0'
normal.logstash['install_zeromq'] = true
normal.logstash['server']['enable_embedded_es'] = false

# normal.logstash['server']['elasticsearch_ip'] = 'elasticsearch-frontend-000000.eu-west-1.elb.amazonaws.com'
normal.logstash['server']['config_file'] = nil
normal.logstash['server']['config_templates'] = ['o_server']

normal.logstash['server']['config_templates_variables'] = { o_server: { zmq_port: 2120,
                                                                        zmq_sockopts: '"ZMQ::RCVHWM",1000,"ZMQ::LINGER",10000, "ZMQ::RCVBUF", 87380',
                                                                        es_server_ip: node['logstash']['server']['elasticsearch_ip'],
                                                                        es_port: 80,
                                                                        es_index_prd: "aws-logstash-%{+YYYY.MM.dd}",
                                                                        es_flush_size: 500,
                                                                        es_idle_flush: 1,
                                                                        es_codec: 'json' } }
