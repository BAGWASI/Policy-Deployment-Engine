package terraform.gcp.security.bigquery_connection.google_bigquery_connection.kms_key_name
import data.terraform.helpers 
import data.terraform.gcp.security.bigquery_connection.google_bigquery_connection.vars

conditions := [
    [
        {"situation_description" : "There has not been kms_key used for encryption",
        "remedies":["Assign a kms_key_name for encryption and ensure that it is formatted correctly to be in Australia"]
        },
        {
            "condition": "Check for the creation of kms_key_name",
            "attribute_path" : ["kms_key_name"], 
            "values" : [""], 
            "policy_type" : "blacklist" 
        },
    ],

    [
         {"situation_description" : "The kms_key_name has  formatted incorrectly",
        "remedies":["Ensure that the kms_key_name is formatted correctly to be in Australia"]
        },
        {
            "condition": "Check that is formatted for Australia",
            "attribute_path" : ["kms_key_name"], 
            "values" : ["projects/project-id/locations/*/keyRings/bq-keyring/cryptoKeys/bq-key", [["australia-southeast1", "australia-southeast2"]]],
            "policy_type" : "pattern whitelist" 
        },
    ]
]

    

message := helpers.get_multi_summary(conditions, vars.variables).message
details := helpers.get_multi_summary(conditions, vars.variables).details
