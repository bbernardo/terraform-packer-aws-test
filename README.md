# terraform-packer-aws-test

You must configure the public key in the vars.tf file. To do this execute the commands below with the .pem file provided by AWS to generate the public key:


chmod 400 <pem_file>
ssh-keygen -y -f <pem_file> > mykey.pub


After that, run the ./build-and-launch.sh command.
At the end of the whole process, access through the url of the load balancer like this: 


<load_balancer_url>: 3000 / weather
