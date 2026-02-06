resource "google_bigquery_connection" "nc" {
   connection_id = "my-connection"
   location      = "australia-southeast1"
   friendly_name = "name"
   description   = "a riveting description"
   kms_key_name  = "projects/project-id/locations/us-west/keyRings/bq-keyring/cryptoKeys/bq-key"
   cloud_resource {}
   project = "pde_project"
}