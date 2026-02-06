package terraform.gcp.security.bigquery_connection.google_bigquery_connection_iam_member.role
import data.terraform.helpers 
import data.terraform.gcp.security.bigquery_connection.google_bigquery_connection_iam_member.vars

conditions := [
    [   
        {
            "situation_description" : "A role with too many privilges is being used to access the resource",
            "remedies":[ "Ensure only user role is being used to access the resource"]
        },
        {
            "condition": "Check that none of the high privilage roles are being used",
            "attribute_path" : ["role"], 
            "values" : ["roles/editor", "roles/admin", "roles/owner", "roles/bigquery.dataEditor", "roles/bigquery.dataOwner", "roles/bigquery.admin"], # Values to compare against
            "policy_type" : "blacklist"
        }
    ]
]   

    
message := helpers.get_multi_summary(conditions, vars.variables).message
details := helpers.get_multi_summary(conditions, vars.variables).details