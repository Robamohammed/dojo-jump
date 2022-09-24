output "publicip" {
  value = aws_instance.Ec2Instance.public_ip
}

output "publicdns" {
  value = aws_instance.Ec2Instance.public_dns
}
