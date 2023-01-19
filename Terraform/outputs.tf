output "Public_IP" {
    description = "The Public IP for this instance is: "
    value       = aws_instance.app_server.public_ip
}