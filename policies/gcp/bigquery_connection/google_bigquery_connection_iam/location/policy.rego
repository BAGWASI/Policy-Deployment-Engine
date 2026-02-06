package terraform.gcp.security.bigquery_connection.google_bigquery_connection_iam_member.location
import data.terraform.helpers 
import data.terraform.gcp.security.bigquery_connection.google_bigquery_connection_iam_member.vars

# STEP 2: CREATE SCENARIOS (can be simple (one condition) or complex (multiple linked conditions) )
conditions := [
    [
        {
            "situation_description" : "Location is from invalid region",
            "remedies":["Ensure that a location is set to Australia"]
        },
        {
            "condition": "Check for that location is set to Australia",
            "attribute_path" : ["location"], # An array of strings and indicies eg. ["rsa",0,"key"]
            "values" : ["australia-southeast1", "australia-southeast2"], # Values to compare against
            "policy_type" : "whitelist" # Policy type eg. 'whitelist', 'blacklist', 'range', 'pattern whitelist', 'pattern blacklist'
        }
    ]
]


summary := data.terraform.helpers.get_multi_summary(conditions, vars.variables)

message := summary.message

details := summary.details