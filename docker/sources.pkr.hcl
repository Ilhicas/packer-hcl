source "docker" "alpine" {
  image   = "alpine:3.9"
  commit  = true
  changes = [
      "CMD [\"nginx\", \"-g\", \"daemon off;\"]"
  ]
}

source "docker" "debian" {
  image   = "debian:10"
  commit  = true
  changes = [
      "CMD [\"nginx\", \"-g\", \"daemon off;\"]"
  ]
}