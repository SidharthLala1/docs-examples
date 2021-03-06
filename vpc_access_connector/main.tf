provider "google-beta" {
}

resource "google_vpc_access_connector" "connector" {
  name          = "my-connector-${local.name_suffix}"
  provider      = google-beta
  region        = "us-central1"
  ip_cidr_range = "10.8.0.0/28"
  network       = "default"
}
