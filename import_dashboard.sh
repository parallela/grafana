#!/bin/bash

# Import the custom dashboard
echo "Importing System Metrics Dashboard..."
curl -X POST -H "Content-Type: application/json" -d @<(cat system_dashboard.json | sed 's/${DS_PROMETHEUS}/beip85fb7gnwgb/g') http://admin:admin@localhost:3000/api/dashboards/db

echo -e "\nDashboard import complete!"
echo "Access your dashboard at: http://localhost:3000/d/system_metrics/system-metrics-dashboard"
