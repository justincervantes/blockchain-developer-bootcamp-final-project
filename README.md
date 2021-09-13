# blockchain-developer-bootcamp-final-project
My final project for the 2021 ConsenSys Academy Bootcamp

**What:** Decentralized journaling system

**Problem:** Maintaining journals has been a personal challenge of mine. I have notebooks from when I was younger, WordDocs that I lost when computers crashed or thumb drives were lost, and random notebooks I'd use when travelling. When trying to migrate my journals to the cloud, there is always a fear that my documents are open to observation from the hosting company, and uncertainty that my most private thoughts are accessible to someone else. 

**Solution:** Hash the journal, and create a GUI which interfaces with the journal. Your journal will live on forever for as long as you protect your private key. Your journal entries will be able to be reviewed on browser where you locally enter your private key to decrypt your logs. You then can also create entries by sending messages to the chain (presumably to a smart contract which just operates to improve searching speeds of your entries). 

**Security:**
There is no immediately clear incentive to tamper with the chain as there is no value associated, thus why I'd like to attach this to Ethereum.

**Issues:**
- Unclear how you could hide your entries from the network since you give out your public key
- Unclear the size of the payload I can send as a message (would I be able to send markdown?)
- The use case for editing a journal entry, or deleting it would be impractical (maybe that's a pro)
- I'm not familiar with EC20 tokens or the incentive structure to get people to process my transactions
- Is there a monetization structure, or is this a hobby?
