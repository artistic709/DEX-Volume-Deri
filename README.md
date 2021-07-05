# DEX-Volume-Deri

[Frontend Repository](https://github.com/antoncoding/hackmoney-prediction)

## Crypto Derivatives of Decentralized Exchange's Trading Volume

The main goal of this project is to form a prediction market of the trading volume of DEXes. We use UMA as the source of data, and the prediction market itself is a binary option. Users may bet either UP or DOWN which means the trading volume in this epoch is higher or lower than the previous one.

This may create new opportunities for arbitrager and DEX. For example, if a DEX is just launched and has no users, the DEX can create a prediction market for itself on our market. Then, the DEX bets itself to DOWN. This could create incentive for market maker to bet on the UP side and push up the volume. Compared to the price predict market, the volume property is monotonic so that the market maker's effort could be safe. 

From another side, the application could be used by the LP holders of the DEX. They can DOWN the volume on the market, which leads to a hedging for the DEX and earns the APY of lp-pair.
