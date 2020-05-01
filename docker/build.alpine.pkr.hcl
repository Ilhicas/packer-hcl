build {
  sources = [
    "source.docker.alpine",
  ]

  provisioner "shell" {
    inline = [
        "apk add nginx"
      ]
    // only = ["alpine"] # This will only be available with this issue https://github.com/hashicorp/packer/issues/9094
    // Expected version 1.5.6
  }

  post-processor "docker-tag" {
    repository = "ilhicas/nginx-alpine-packer-build"
    tag        = ["1.0"]
  }
}
