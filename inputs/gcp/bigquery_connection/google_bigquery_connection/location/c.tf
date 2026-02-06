resource "google_bigquery_connection" "c" {
   connection_id = "my-connection"
   location      = "australia-southeast1"
   friendly_name = "name"
   description   = "a riveting description"
   cloud_resource {}
   project = "PDE"
}