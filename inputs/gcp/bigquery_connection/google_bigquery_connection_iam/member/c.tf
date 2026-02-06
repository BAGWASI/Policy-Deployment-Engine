resource "google_bigquery_connection_iam_member" "c" {
  project = "PDE"
  location = "australia-southeast1"
  connection_id = "connection_id"
  role = "roles/bigquery.connectionUser"
  member = "user:jane@organisation.com"
}