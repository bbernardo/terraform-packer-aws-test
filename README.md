# terraform-packer-aws-test

You must configure the public key in the vars.tf file. To do this execute the commands below with the .pem file provided by AWS to generate the public key:


chmod 400 <pem_file> <br/>
ssh-keygen -y -f <pem_file> > mykey.pub <br/>


After that, run the ./build-and-launch.sh command.
At the end of the whole process, access through the url of the load balancer like this: 


<load_balancer_url>:3000/weather <br/>

The project assumes that the "aws_access_key" and "aws_secret_key" variables are configured.