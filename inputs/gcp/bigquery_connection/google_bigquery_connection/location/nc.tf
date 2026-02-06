resource "google_bigquery_connection" "nc" {
   connection_id = "my-connection"
   location      = "us-central1"
   friendly_name = "name"
   description   = "a riveting description"
   cloud_resource {}
   project = "PDE"
}