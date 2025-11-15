resource "aws_s3_bucket" "bucket_dev" {
  bucket = "guna-learning-bucket-dev"

  tags = {
    Name        = "guna-learning-bucket-dev"
    Environment = "Dev"
  }
}

resource "aws_instance" "guna_learning_instance" {
  ami                     = "ami-02b8269d5e85954ef"
  instance_type           = "t2.micro"
  # host_resource_group_arn = "arn:aws:resource-groups:ap-south-1:270325283284:group/win-testhost"
  # tenancy                 = "host"
  tags = {
    Name = "guna-learning-instance"
  }
}