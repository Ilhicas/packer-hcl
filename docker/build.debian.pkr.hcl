build {
  sources = [
    "source.docker.debian",
  ]

  provisioner "shell" {
    inline = [
        "apt-get update",
        "apt-get install -y nginx"
      ]
    // only = ["debian"] # This will only be available with this issue https://github.com/hashicorp/packer/issues/9094
    // Expected version 1.5.6
  }

  post-processor "docker-tag" {
    repository = "ilhicas/nginx-debian-packer-build"
    tag        = ["1.0"]
  }

}
