package terraform.gcp.security.cloud_identity.google_cloud_identity_group.display_name

deny[msg] {
    resource := input.resource_changes[_]
    resource.type == "google_cloud_identity_group"
    not resource.change.after.display_name

    msg := "Cloud Identity Group must have a display_name"
}