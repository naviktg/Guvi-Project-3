#!/bin/bash

set -euxo pipefail

dnf install -y nginx

systemctl enable nginx
systemctl start nginx

cat > /usr/share/nginx/html/index.html <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GUVI Project 3</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      text-align: center;
      margin: 0;
      padding: 80px 20px;
      background: #f1f5f9;
      color: #172554;
    }

    .card {
      max-width: 650px;
      margin: auto;
      padding: 40px 20px;
      background: white;
      border-radius: 12px;
      box-shadow: 0 4px 18px #00000018;
    }
  </style>
</head>
<body>
  <div class="card">
    <h1>GUVI Project 3</h1>
    <h2>AWS Infrastructure Automation</h2>
    <p>Terraform + GitHub Actions</p>
    <p>Nginx Web Server</p>
    <p>Deployment Successful!</p>
  </div>
</body>
</html>
EOF

systemctl restart nginx