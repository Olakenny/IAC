output "pub-ip" {
  value = aws_instance.web.public_ip
}

output "pub-dns" {
  value = aws_instance.web.public_dns
}
