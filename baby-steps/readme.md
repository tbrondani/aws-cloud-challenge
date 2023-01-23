In the baby steps we are focused on get to know aws and its basic services!


First of all! 

DO NOT FORGET TO DELETE EVERYTHING YOU CREATED AFTER YOUR STUDIES!
(I wont be responsible for your fat bill at the end of the month)

Now let's have fun :) 

Create a infrastrucure using only basic tools, you can do it with the AWS Console or Terraform!
Let's focus on the hands on experience and trial and error for now.

EBS Disk specs:

![image](https://user-images.githubusercontent.com/40150118/185254293-b902f2cb-b221-4f73-ac9f-a3b97d17bcc4.png)


# Task 1 :
Create a ec2 instance with Amazon Linux 2 as a operating system and a additional EBS Disk 
EC2 Instance specs: 

-t2.micro <br>
-10gb xvda <br>
-region us-east-1 <br>

Focus : Get your self familiarized with AWS Console.

Objective: Have the instance created on the console and the state should be "RUNNING/AVALIABLE".

Do not panic if you cannot access the instance!


# Task 2:

Let's now create a Security Group to enable acess over the internet!

REMEMBER THIS IS NOT GOOD PRACTICE IT'S JUST FOR LEARNING PURPOSES, NEVER CREATE A SG FULL PERMISSIONS TO THE INTERNET! NEVER!!

Using the code in the first task, incorporate the script creating a SG and attaching in the instance.  

First you need to obtain your public IP, then you are going to create a rule allowing incoming traffic from port 22 with your public IP as origin.  

cli <br>
`curl ifconfig.me`

web <br>
`https://meuip.com.br/`<br>
`https://checkip.dyndns.org/`<br>
`https://www.whatismyip.com/`<br>



# Task 3:

Now, we are going to create a instance keypair using linux(you can use windows if you'd like), since we cannot create a key pair and download it using terraform, let's create one in your own environment and then save it for later.

example in Linux/ Windows(git bash) : 
`ssh-keygen -t rsa -b 4096 -C "your_email@example.com" -f my_key` <br>
(This will create the key pair in the current directory with the name my_key and my_key.pub)

Windows:

I personally recommend PuttyGen, but you can use another on if you'd like.
`1.Open PuTTYgen;` <br>  
`2.Select the "RSA" radio button for the type of key to generate`<br>
`3.Set the number of bits in a generated key to 4096 `<br>
`4.Click the "Generate" button`<br>
`5.Move the mouse pointer around in the blank area at the top of the window to generate randomness for the key generation` <br>
`6.Enter a passphrase if desired`<br>
`7.Click the "Save private key" button to save the private key, and "Save public key" to save the public key.`<br>




