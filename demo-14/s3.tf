resource "aws_s3_bucket" "versioning_bucket" {
    bucket = "mybucket123ksdfsk"
    acl = "private"

    tags {
        Name = "mybucket123"
    }
}
