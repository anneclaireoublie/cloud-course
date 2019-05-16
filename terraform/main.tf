provider "scaleway" {
  region = "${var.region}"
  organization = "${var.organization}"
  token        = "${var.scw_token}"
}

data "scaleway_image" "cloud-course" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

resource "scaleway_server" "cloud-course" {
  name  = "cloud-course"
  image = "${data.scaleway_image.cloud-course.id}"
  type  = "START1-S"
}
resource "scaleway_ip" "ip" {
  server = "${scaleway_server.cloud-course.id}"
}


resource "scaleway_volume" "cloud-course" {
  name       = "cloud-course"
  size_in_gb = 50
  type       = "l_ssd"
}
