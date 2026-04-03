resource "google_firebase_app_check_recaptcha_v3_config" "nc" {
  app_id      = "projects/1234/apps/app1"
  site_secret = ""
}

resource "google_firebase_app_check_recaptcha_v3_config" "nc2" {
  app_id      = "projects/my-project/apps/app1"
  site_secret = ""
}
