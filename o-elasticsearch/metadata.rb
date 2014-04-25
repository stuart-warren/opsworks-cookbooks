name        "o-elasticsearch"
description "Wrapper for elasticsearch cookbook to provide attributes"
maintainer  "stuart-warren"
license     "Apache 2.0"
version     "0.0.1"

depends "elasticsearch"
recipe "o-elasticsearch::datanode", "Sets up a data only node"
recipe "o-elasticsearch::httpnode", "Sets up a http only node"
