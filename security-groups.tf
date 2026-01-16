#Create security group 
resource "aws_security_group" "myjenkins_sg" {
  name        = "jenkins_sg20"
  description = "Allow inbound ports 22, 8080"
  vpc_id      = "vpc-0a0aafa60c8449f62"

  #Allow incoming TCP requests on port 22 from any IP
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
#Allow incoming TCP requests on port 443 from any IP
  ingress {
    description = "Allow HTTPS Traffic"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #Allow incoming TCP requests on port 8080 from any IP
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #Allow all outbound requests
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
# resource "aws_security_group" "allow_all" {
#   name   = "allow-all"

#   egress {
#     from_port        = 0 # from port 0 to to port 0 means all ports
#     to_port          = 0 
#     protocol         = "-1" # -1 means all protocols
#     cidr_blocks      = ["0.0.0.0/0"] # internet
#   }

#   ingress {
#     from_port        = 0 # from port 0 to to port 0 means all ports
#     to_port          = 0 
#     protocol         = "-1" # -1 means all protocols
#     cidr_blocks      = ["0.0.0.0/0"] # internet
#   }

#   tags = {
#     Name = "allow-all"
#   }

# }