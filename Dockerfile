# syntax=docker/dockerfile:labs

# Build
FROM node:18-alpine AS build

WORKDIR /app
ADD https://github.com/digitalocean/nginxconfig.io.git /app

# Remove DigitalOcean Header and Navigation
COPY <<EOF build/index.html
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="minimum-scale=1, initial-scale=1, width=device-width, shrink-to-fit=no">
    <title>NGINXConfig</title>
    <meta name="description" content="The easiest way to configure a performant, secure, and stable NGINX server.">
    <meta name="robots" content="noindex">
    <meta name="next-head-count" content="19">
</head>
<body>
    <div id="app"></div>
</body>
</html>
EOF

# No-op the contribute callout component
# COPY <<EOF src/nginxconfig/templates/callouts/contribute.vue
# <template><!--src/nginxconfig/templates/callouts/contribute.vue--></template>
# EOF

RUN npm ci \
    && npm run build:prism \
    && npm run build:static \
    && npm run build:tool

# nginxconfig.io
FROM nginx:stable-alpine
COPY --from=build /app/dist /usr/share/nginx/html
