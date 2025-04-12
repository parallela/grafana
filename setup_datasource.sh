#!/bin/bash

# Wait for Grafana to be ready
echo "Waiting for Grafana to be ready..."
until $(curl --output /dev/null --silent --head --fail http://localhost:3000); do
  printf '.'
  sleep 5
done
echo "Grafana is up!"

# Create Prometheus data source
echo "Creating Prometheus data source..."
curl -X POST -H "Content-Type: application/json" -d '{
  "name":"Prometheus",
  "type":"prometheus",
  "url":"http://prometheus:9090",
  "access":"proxy",
  "basicAuth":false,
  "isDefault":true
}' http://admin:admin@localhost:3000/api/datasources

echo "Data source setup complete!"
