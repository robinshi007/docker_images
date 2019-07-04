docker ps --format '- targets: ["{{.ID}}"]
  labels:
    container_name: "{{.Names}}"' > promtail/promtail-targets.yaml
