module "gcs_buckets" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "~> 8.0"
  project_id  = "devops9700"
  names = ["first97001243", "second9700125434"]
  prefix = "my-unique-prefix"
}
