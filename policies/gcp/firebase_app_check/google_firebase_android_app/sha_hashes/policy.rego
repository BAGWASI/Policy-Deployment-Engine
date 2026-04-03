package terraform.gcp.security.firebase_app_check.google_firebase_android_app.sha_hashes

import data.terraform.helpers
import data.terraform.gcp.security.firebase_app_check.google_firebase_android_app.vars

conditions := [
  [
    {"situation_description": "Firebase Android App should have at least one SHA-256 certificate hash defined for security.",
     "remedies": ["Ensure that 'sha256_hashes' is configured with valid certificate fingerprints."]},
    {
      "condition": "SHA256 hash is null or empty.",
      "attribute_path": ["sha256_hashes"],
      "values": [null, []],
      "policy_type": "blacklist"
    }
  ]
]

result = helpers.get_multi_summary(conditions, vars.variables)
message = result.message
details = result.details
