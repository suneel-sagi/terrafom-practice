# Note [*] loop output


output "ins_ip" {
  value = aws_instance.main[*].public_ip
}
output "ins_ipp" {
  value = aws_instance.main[*].private_ip
}
output "ins_id" {
  value = aws_instance.main[*].id
}
output "AZ" {
  value = aws_instance.main[*].availability_zone
}
output "ebs" {
  value = aws_instance.main[*].ebs_block_device
}