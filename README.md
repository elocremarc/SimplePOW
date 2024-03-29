# Super Simple Proof of Work Example #
This Bash program is a super simple example of Proof of Work (POW) that underpins bitcoin. Basically you enter a secret number between 0-100 this number is run through a cryptographic hash function SHA256. The program will try and guess the hash of your number by brute force starting at 0, hashing that number and repeating until it finds the same hash as your secret number.     

![Program Output](/output.png)

Bitcoin has a slight twist. This example is simple it only has 101 possible answers it will go through. In the example pictured above our secret number is 10 its hash is:
> 917df3320d778ddbaa5c5c7742bc4046bf803c36ed2b050f30844ed206783469

Now imagine if we add 7 zeros onto the begining of our secret hash of 10 so it looks like this:  
> 0000000917df3320d778ddbaa5c5c7742bc4046bf803c36ed2b050f30844ed206783469

The only way to find this new number would be to brute force guess like our example. With Bitcoin the entire block of transactions is hashed and a fluctuating number of around 60 zeros is added to the hash of the block. Every node on the Bitcoin network is competing to randomly calculate this number first. That is what is called Proof of Work. If your lucky enough to find this number first you will be rewarded with the block reward and confirm that block for the network. When the next block is created the hash with all the zeros of the previous block becomes the header for the next block. This is called a blockchain. If you wanted to add fake transactions you would need to beat everyone on the network for every subsequent block. The only way to do that is if you have 51% of the computing power of the entire network.  
