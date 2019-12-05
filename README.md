# Super Simple Proof of Work Example #
This Bash program is a super simple example of Proof of Work (POW) that underpins bitcoin. Basically you enter a secret number between 0-100 this number is run through a cryptographic hash function md5sm. The program will try and guess the hash of your number by brute force starting at 0 hashing that number and repeating until it finds the same hash as your secret number.     

![Program Output](/output.png)

Bitcoin has a slight twist. This example only has 101 possible answers it will go through its pretty simple. In the example of the picture above our secret number was 10 its hash is:
> 31d30eea8d0968d6458e0ad0027c9f80

Now imagine if we add 7 zeros onto the begining of our secret hash so it looks like this:  
> 000000031d30eea8d0968d6458e0ad0027c9f80
The only way to find this new number would be to brute force guessing like our example. With Bitcoin the entire block of transactions is hashed and a fluctuating number of aroudn 60 zeros is added to this hash. That is what the word "Work" comes from when you hear Proof of Work. If your lucky enough to find this number first you will be rewarded with the block reward and confirm that block for the network. When the next block is created the hash with all the zeros of the previous block becomes the header for the next block. This is what a blockchain is.
