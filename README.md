# bbb-install-master
 

# bbb-install on EC2 AWS

Before start the installation first [Minimum server requirements](https://docs.bigbluebutton.org/2.2/install.html#minimum-server-requirements).

# Setup network security group
Start an appropriate EC2 instance and setup the [authorizing inbound traffic for server](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/authorizing-access-to-an-instance.html). 
As mention in [official documentation of bbb](https://docs.bigbluebutton.org/2.2/install.html#Install_) following port should be open for TCP/UDP/HTTP/HTTPS traffic as mention blow.<br/>
Note from [bbb-doc](https://docs.bigbluebutton.org/2.2/install.html#Install_)<br/>
* TCP ports 80 and 443 are accessible
* UDP ports 16384 - 32768 are accessible
* Port 80 is not in use by another application

Your inbounds rules should look like this.<br/>
![bbb-install.sh](images/ec2networkinbounds.png?raw=true "bbb-install.sh")

# Setup Route 53 to configure TLS/SSL support

Without TLS/SSL support, the browser will not allow access to the user's webam or microphone via the builtin real-time communications (WebRTC) libraries.
To setup route 53 with your qualified domain name (FQDN) create a hosted zone , change name server from domain dns management and create record set with value as EC2 instance public IP (Elastic IP is recommened)

for detail [Follow this link](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-ec2-instance.html)

# Install bbb

Once you setup security group and route 53 then you can clone this repository & run the following command.<br/>

Note : Required qualified domain name (FQDN) setup in route 53 and your email adderess for signed SSL cirtificate.

```
wget -qO- https://ubuntu.bigbluebutton.org/bbb-install.sh | bash -s -- -v xenial-22 -s bbb.example.com -e info@example.com

```

To install the latest build of BigBlueButton 2.3 on a new 64-bit Ubuntu 18.04 server use following.<br/>
```
wget -qO- https://ubuntu.bigbluebutton.org/bbb-install.sh | bash -s -- -w -a -v bionic-23 -s bbb.example.com -e info@example.com
```



This will take few min to complete, After completion you can run following command to get api-mate secrate key.

```
sudo bbb-conf --secret
```
Note: This setup is for production level and does not contains demo JSP demo APIs.

# Contribution 

Feel free to raise an issue or pull request.
