#!/bin/bash

#curl -O https://raw.githubusercontent.com/grafana/loki/master/docs/docker-compose.yaml
#curl -O https://raw.githubusercontent.com/grafana/loki/master/docs/loki-local-config.yaml
#curl -O https://raw.githubusercontent.com/grafana/loki/master/docs/promtail-docker-config.yaml
#curl -O https://raw.githubusercontent.com/grafana/loki/master/docs/promtail-local-config.yaml

#curl -O https://raw.githubusercontent.com/grafana/loki/master/docs/logo.png
#curl -O https://raw.githubusercontent.com/grafana/loki/master/docs/logo_and_name.png

curl -o loki/loki-local-config.yaml          https://raw.githubusercontent.com/grafana/loki/master/cmd/loki/loki-local-config.yaml
curl -o promtail/promtail-docker-config.yaml https://raw.githubusercontent.com/grafana/loki/master/cmd/promtail/promtail-docker-config.yaml
curl -o promtail/promtail-local-config.yaml  https://raw.githubusercontent.com/grafana/loki/master/cmd/promtail/promtail-local-config.yaml

