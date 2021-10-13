# blockchain-developer-bootcamp-final-project
My final project for the 2021 ConsenSys Academy Bootcamp

**What:** Decentralized journaling system

**Problem:** Maintaining journals has been a personal challenge of mine. I have notebooks from when I was younger, WordDocs that I lost when computers crashed or thumb drives were lost, and random notebooks I'd use when travelling. When trying to migrate my journals to the cloud, there is always a fear that my documents are open to observation from the hosting company, and uncertainty that my most private thoughts are accessible to someone else. 

**Solution:** 
Log an event with an encrypted message and the sender's address, and create a GUI which interfaces with the journal. Your journal will live on forever for as long as you protect your private key. 
Your journal entries will be able to be reviewed on browser where you locally enter your private key to decrypt your logs. 
You then can also create entries by sending messages to the chain (presumably to a smart contract which just operates to improve searching speeds of your entries). 

**Security:**
There is no immediately clear incentive to tamper with the chain as there is no value associated, thus why I'd like to attach this to Ethereum.

**Issues:**
- Unclear the size of the payload I can send as a message (would I be able to send markdown?)
- The use case for editing a journal entry, or deleting it would be impractical (maybe that's a pro)
- I'm not familiar with EC20 tokens or the incentive structure to get people to process my transactions
- Is there a monetization structure, or is this a hobby?

**Deployment:**
1. Open Ganache GUI, create a workspace on port 8545 and Network ID 5777 (load the truffle-config.js into the workspace)
2. Run - truffle console
3. Run - compile
4. Run - migrate
5. Run - let accounts = await web3.eth.getAccounts();
6. Run - instance = await Journal.deployed();
7. Run - instance.post("Test message", {from: accounts[2]});
8. Open Ganache GUI, view events, you should now see the plaintext message being emitted


# Update Logs

## Oct 13, 2021 Update 
- Added a donation mechanism to fund feature development
- Added the Pause-able and Ownership design patterns
- Added deployment notes
- Observed the log data in Ganache GUI
- Next: Deploy to a testnet, and try and find the emitted event
- Next: Test the donation contract (and write tests)




