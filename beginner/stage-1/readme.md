Welcome to the beginner section! Here our focus will be to get to know more aws services and build a environment step-by-step! If you feel comfortable, skip to the last part of the challange :)

Create a infrastrucure using only terraform!


Task! 
Create your ec2 instance with Amazon Linux 2 as a operating system and a additional EBS Disk and also, create a S3 Bucket to store long term files, last but not least create a IAM Role and attach in your ec2 instance in order to enable access to the bucket you create.

EC2 Instance specs:
t2.micro
10gb xvda
5gb xvdb

S3 Single region, infrequent access, private bucket

IAM Role: Permission to read/write in the S3 Bucket.

![image](https://user-images.githubusercontent.com/40150118/185256108-61b96043-d529-4854-b816-0704eb09d0b3.png)
