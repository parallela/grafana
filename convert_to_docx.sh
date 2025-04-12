#!/bin/bash

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "Pandoc is required but not installed. Please install it first."
    echo "You can install it with: brew install pandoc"
    exit 1
fi

# Convert the markdown file to docx
echo "Converting markdown to DOCX..."
pandoc -s /Users/lubomirstankov/Development/grafana-test/monitoring_bg.md -o /Users/lubomirstankov/Development/grafana-test/monitoring_bg.docx

echo "Conversion complete! DOCX file created at: /Users/lubomirstankov/Development/grafana-test/monitoring_bg.docx"
