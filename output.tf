resource "null_resource" "generate_inventory" {
  provisioner "local-exec" {
    command = <<EOT
      echo "[ec2_instance]" > inventory.ini
      echo "${aws_instance.ec2.public_ip} ansible_user=ubuntu ansible_ssh_private_key_file=/home/runner/.ssh/mine-laptop.pem" >> inventory.ini
    EOT
  }


  triggers = {
    always_run = "${timestamp()}"
  }


}
