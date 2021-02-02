# Automated system for airdropping SWTH to new users from Ethereum.

This is the system to subsidize SWTH tokens to the new Ethereum users creating wallets on TradeHub - https://forum.switcheo.foundation/topic/47/automated-system-for-airdropping-swth-to-new-users-from-ethereum

The system has several interconnected sub-systems: 
— Transactions monitoring system to check and find CreateWallet ones on the TradeHub smart-contract;
— Switcheo wallet balance checker
— SWTH distribution system

This system is monitoring all transactions on TradeHub smart-contract, decode data and filters to those which have CreateWallet method. After that the system taking the swth1 wallet address and checking if that wallet has available SWTH and if it doesn't sends in tokens (5 SWTH atm) to it. 

All the necessary data from transactions, statuses, current pagination statuses are stored in PostgreSQL db. If there is an error the system is sending out an email to the added email addresses with error info.
