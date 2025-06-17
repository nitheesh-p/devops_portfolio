output "ec_public_ip" {
  description = "The public IP address of the EC2 instance"
  value = [
    for instance in aws_instance.myinstance :
    {
      name = instance.tags.Name
      public_ip = instance.public_ip
    }]
}