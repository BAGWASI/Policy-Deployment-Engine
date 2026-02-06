package terraform.gcp.security.bigquery_connection.google_bigquery_connection_iam_member.member
import data.terraform.helpers 
import data.terraform.gcp.security.bigquery_connection.google_bigquery_connection_iam_member.vars

# STEP 2: CREATE SCENARIOS (can be simple (one condition) or complex (multiple linked conditions) )
conditions := [
    [
    {
    "situation_description" : "allUsers or AllAuthenticatedUsers is being used to access the resource",
    "remedies":["Ensure that member is not using an allUsers or AllAuthenticatedUsers value"]
    },
    {
        "condition": "Check that allUsers and allAuthenticatedUsers can not be used",
        "attribute_path" : ["member"], # An array of strings and indicies eg. ["rsa",0,"key"]
        "values" : ["allUsers", "allAuthenticatedUsers"], # Values to compare against
        "policy_type" : "blacklist" # Policy type eg. 'whitelist', 'blacklist', 'range', 'pattern whitelist', 'pattern blacklist'
    }
    ]  
]

    
summary := data.terraform.gcp.helpers.get_multi_summary(conditions, vars.variables)

message := summary.message

details := summary.details