provider "aws" {
  access_key = "AKIARDB6II4N52SWTFOC"
  secret_key = "j/Y6PgYCIBNBjgjWrRjGbZxkSCB6zCFRu9V8GD9c"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0d729a60"
  instance_type = "t2.micro"
}
