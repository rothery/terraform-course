resource "aws_key_pair" "mykey" {
  key_name   = "mykey2"
  public_key = "${file("${var.PATH_TO_PUBLIC_KEY}")}"
}
