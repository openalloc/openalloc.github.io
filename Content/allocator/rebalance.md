---
title: Rebalance View
keywords: [rebalance, rebalancing]
robots: [index, anchors]
anchor: rebalance
description: |
  Showing the sales and purchases needed to complete a rebalance.
---

# Rebalance

Rebalancing is the path from one’s current holdings to the Strategy’s
allocation objective.

In _FlowAllocator_ the rebalancing views show the trades required in each
account to achieve a rebalance. 

Sales are listed first, in descending order by size. Then purchases, also
in the same order.

See the account’s “Rebalance Summary” to see how these numbers are arrived
at.

## The Rebalance Bubble

Each ‘bubble’ displays the current status of the asset class, plus the
actions required to rebalance.

### Sales

The footer is the name of the asset class. The upper right contains the
total amount of securities to be liquidated from the asset class.

One or more ‘trash cans’ will be listed showing individual positions to
liquidate. An approximate share count may be listed, based on the share
price in the Securities table.

The ‘+/-’ shows the approximate gain (or loss) from the trade(s).

The ‘W’ indicates potential wash sales. Making the trade may sacrifice
some (or all) of the tax deduction. (Consult the relevant literature for
all the details.)

### Purchases

The footer is the name of the asset class. The upper right contains the
total amount of securities to be purchased for the asset class.

A ‘shipping box’ may be present listing your current holdings in the asset
class, including the tickers.

A ‘shopping cart’ will list the amount to be purchased.

The ‘W’, if present, indicates potential wash purchases, meaning that
there was a recent sale at a loss in a taxable account. Preserving this
tax loss can benefit your portfolio performance. (Consult the literature
to learn how to do this.)

## Export

The rebalance export will be a zip file containing delimited tables:

* `purchases.csv` - purchases required by the rebalance
* `sales.csv` - sales required by the rebalance
* `trading-allocations.csv` - allocated amounts for trading accounts
* `non-trading-allocations.csv` - allocated amounts for non-trading accounts

...adhering to the schemas:

* [openalloc/rebalance/purchase](https://github.com/openalloc/AllocData#mrebalancepurchase)
* [openalloc/rebalance/sale](https://github.com/openalloc/AllocData#mrebalancesale)
* [openalloc/rebalance/allocation](https://github.com/openalloc/AllocData#mrebalanceallocation)

Also included is a `params.json` file that contains the participating accounts and asset classes, and the flow value.

## Setup

Available in the Rebalance View from the Strategy View.

### Minimum Sale Amount

If the liquidation(s) for an asset class in an account is less than this
value, it will not be listed in the rebalance.

### Minimum Position Size

To avoid leaving behind tiny positions, set this value as needed.

A liquidation may be larger than needed to ‘clean up’ any residual
positions. In the SELL bubble, look for the ‘ALL’ in place of an
approximate number of shares.

## Advanced Features

The advanced features will have a big impact on rebalancing. For
example, _Roll-up Assets_ and _Group Related Holdings_ can help retain
holdings that might otherwise need to be liquidating in a rebalance.

More specifically...

### Optimization

By sorting on ‘Transactions’ and ‘Sale Volume’ the amount of trading
needed to rebalance can be minimized. 

When provided with recent transaction history, optimization can also sort
on ‘Wash Sale’ to minimize wash sales that result from liquidating
positions in taxable accounts where there has recently been a related
purchase.

### Reduce Rebalance

Consolidation’s “Reduce Rebalance” feature matches liquidations with
purchases of related asset classes in an account’s rebalance. Where
present, one can offset the other.

For example, if the rebalance calls for liquidating $10K of VB (Small Cap)
and purchasing $8K of VTI (Total Market), these are close enough to reduce
to a $2K liquidation of VB.

This offsetting of related trades can also reduce potential wash sales.
