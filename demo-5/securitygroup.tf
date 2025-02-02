data "aws_ip_ranges" "serv1" {
  regions = [ "eu-west-1", "us-east-2" ]
  services = [ "ec2" ]
}

resource "aws_security_group" "from_europe" {
 name = "from_europe"

  ingress {
    from_port = "443"
    to_port = "443"
    protocol = "tcp"
    cidr_blocks = [ "${data.aws_ip_ranges.serv1.cidr_blocks}" ]
  }
  tags {
    CreateDate = "${data.aws_ip_ranges.serv1.create_date}"
    SyncToken = "${data.aws_ip_ranges.serv1.sync_token}"
  }

}
