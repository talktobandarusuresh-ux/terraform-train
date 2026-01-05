resource "aws_instance" "terraform" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all_traffic.id]
  tags                   = var.ec2-tags
}
resource "aws_security_group" "allow_all_traffic" {
  name = var.sg-name
  # ... other configuration ...
  tags = var.sg-tags

  egress {
    from_port   = var.egress_from_port
    to_port     = var.egress_to_port
    protocol    = var.protocol
    cidr_blocks = var.cidr-blocks
  }

  ingress {
    from_port   = var.ingress_from_port
    to_port     = var.ingress_to_port
    protocol    = var.protocol
    cidr_blocks = var.cidr-blocks
  }
}