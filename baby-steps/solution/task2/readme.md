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


# Solution 

I created a sg.tf.dummy, because in bigger projects it's very easy to get lost, but when dealing with smaller projects you can just jamm everything togheter in a single file like I did here, if you want to use this, rename the sg.tf.dummy and delete the code referecing the sg in the main.tf file.
