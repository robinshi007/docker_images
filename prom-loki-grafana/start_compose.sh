echo "=> remove containers"
sudo docker ps -a |grep promlokigrafana|awk '{print $1}'|xargs sudo docker rm

echo "=> remove volumes"
sudo docker volume rm promlokigrafana_grafana_data
sudo docker volume rm promlokigrafana_prometheus_data

#echo "=> pull images"
#sudo docker pull grafana/grafana:master
sudo docker pull grafana/loki:master
sudo docker pull grafana/promtail:master


echo "=> start docker-compose"
sudo docker-compose up
