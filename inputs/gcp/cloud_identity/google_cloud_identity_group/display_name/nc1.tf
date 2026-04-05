resource "google_cloud_identity_group" "nc1" {
  parent = "customers/my_customer"

  group_key {
    id = "group@example.com"
  }

  labels = {
    "cloudidentity.googleapis.com/groups.discussion_forum" = ""
  }
}