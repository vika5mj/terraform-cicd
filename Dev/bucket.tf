module "gcs_buckets" {
  source  = "git::https://github.com/vika5mj/gcp-bucket-module.git//bucket?ref=main"
  version = "~> 8.0"
  project_id  = "devops9700"
  names = ["first97001243", "second9700125434"]
  prefix = "my-unique-prefix"
}
