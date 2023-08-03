[![nginxconfig](https://github.com/digitalocean/nginxconfig.io/raw/master/src/static/banner.png)](https://do.co/nginxconfig)

<h3 align="center">⚙️ NGINX configuration generator on steroids 💉</h3>
<p align="center">
    The only tool you'll ever need to configure your NGINX server.
    <br />
    <a href="https://do.co/nginxconfig"><strong>do.co/nginxconfig »</strong></a>
    <br />
    <br />
    <a href="https://github.com/digitalocean/nginxconfig.io">Source code</a>
    .
    <a href="https://github.com/digitalocean/nginxconfig.io/issues/new?template=report-a-bug.md">Report a bug</a>
    ·
    <a href="https://github.com/digitalocean/nginxconfig.io/issues/new?template=request-a-feature.md">Request a feature</a>
</p>

## About

A self-hosted version of `nginxconfig.io` by **DigitalOcean**.

[Source](https://github.com/socheatsok78/nginxconfig.io) | [Docker Hub](https://hub.docker.com/r/socheatsok78/nginxconfig)

## Usage

The application is available as a Docker image from [Docker Hub](https://hub.docker.com/r/socheatsok78/nginxconfig).

```bash
docker run --rm -it -p 8080:80 socheatsok78/nginxconfig
```

## What changes?
- Remove DigitalOcean Header and Navigation to make it suitable for self-hosting.
- Ship the application in a Docker container.

## License

Copyright © 2020 DigitalOcean, Inc <contact@digitalocean.com> (https://www.digitalocean.com).  
This project is licensed under the [MIT](https://github.com/chocolatefrappe/nginxconfig.io/blob/main/LICENSE) license.
