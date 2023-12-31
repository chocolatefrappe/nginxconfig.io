target "docker-metadata-action" {}

target "default" {
    inherits = ["docker-metadata-action"]
    dockerfile = "Dockerfile"
    context = "."
    platforms = [
        "linux/amd64",
        "linux/arm64",
    ]
}
