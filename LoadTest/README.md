README.md

wget https://github.com/grafana/k6/releases/download/v0.40.0/k6-v0.40.0-linux-amd64.tar.gz
tar zxvf k6-v0.40.0-linux-amd64.tar.gz --strip-components=1
k6 run test_lb.js