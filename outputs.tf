output "instance_public_ip" {
  value = aws_instance.web.public_ip
}

output "ssh_command" {
  value = "ssh -i ~/.ssh/tp_terraform ubuntu@${aws_instance.web.public_ip}"
}