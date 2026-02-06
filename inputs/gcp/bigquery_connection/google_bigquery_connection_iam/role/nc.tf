resource "google_bigquery_connection_iam_member" "nc" {
  project = "PDE"
  location = "australia-southeast1"
  connection_id = "connection_id"
  role = "roles/bigquery.dataEditor"
  member = "user:jane@organisation.com"
}