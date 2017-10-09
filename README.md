# AWSHomeWork
At the final independent work you will need to create a solution which will deploy application
using following technologies: CloudFormation, Ansible/Chef, Linux, Python, Bash.

Your application should be designed this way:

● An S3 bucket with some image (or set of images), that should be embedded into web
page of your service

● This S3 bucket should be configured as a static web-site and to embed image(s) to
your web-app you should proxy incoming requests to this bucket

● Code of your application and Ansible/Chef code should be placed at github.com or
similar public git-service

● Application should be hosted on EC2 instances and be scalable (AutoScaling groups,
ELB/ALB/NLB etc)

● Web server on EC2 instances should listen on port 8080/tcp, but to reach your
application url shouldn’t include port number (i.e. without http://app.url:8080/)

● Instances that hosts application should be placed in at least two availability zones

● Instance setup should be done by Ansible or Chef (on your choice)

● Each subnet with instances should be routed to the Internet by its own NAT gateway
(private subnets)

● Number of servers should be maintained by AutoScaling group (desired capacity
should be at least two)

# Additional statements:

● Template could be written in JSON or YAML, on your choice

● Your template should have a parameter to define a SSH key

● You should create an IAM account with read-only permissions within your account (for
teacher to check the work)

● All deployment should be done by simply deploying the CloudFormation stack (except
placing files to S3 buckets)

● All resources (including network infrastructure) should be created by CloudFormation
stack

● As a Web Server you can use anything you want: Apache HTTPD, Nginx, Lighttpd, IIS
and so on

● Template should be able to be deployed in at least two regions (on your choice)

● Application itself could be a simple HTML page (or set of pages), but if you’ll
implement some backend logic - this will be a big plus for you :)
