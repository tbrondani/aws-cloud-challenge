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



# Solution 

Same concept as before using the dummy files.

