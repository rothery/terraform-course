resource "aws_key_pair" "sshkeyvpc" {
  key_name = "sshkeyvpc"
  public_key = "${file("${var.PATH_TO_PUBLIC_KEY}")}"
}
