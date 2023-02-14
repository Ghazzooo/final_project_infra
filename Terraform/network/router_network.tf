resource "google_compute_router" "router" {
  name = "my-router"
  network = google_compute_network.my_vpc.id
  region = google_compute_subnetwork.management_subnet.region
}