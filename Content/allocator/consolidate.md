---
title: Consolidate Setup
keywords: [consolidate, consolidation, setup, set up, configuration]
robots: [index, anchors]
anchor: consolidate
description: |
  Configure consolidation settings
---

# Consolidate Setup

Consolidation is an essential component of _FlowAllocator_’s advanced
feature set. 

Many strategies can benefit from the efficiencies and simplifications
these features provide.

## Roll Up Assets

This option will simplify a highly-granular asset allocation by
“rolling-up” smaller allocations into related ones.

It can be seen in action on the strategy allocation grid.

### Benefits

With more focused asset classes in the allocation, optimization is more
efficient. Fewer assets means fewer permutations to survey.

In addition, rebalancing may involve fewer trades, as existing holdings
can be retained when they’re related members of a larger allocation.

For example, a 3% REIT allocation will be folded into a 20% Large Cap
allocation, resulting in a 23% 'Grouped' Large Cap allocation.

### Threshold

The ‘Roll-up Threshold’ determines the level at which roll-up is
considered. Allocations beneath the threshold may remain untouched if no
related assets are available.

(Relations between assets are managed in the Assets table.)

For holdings in non-trading accounts, roll-up can affect their
participation in your strategy. When used with the ‘Group Related
Holdings’ feature, you can maximize their participation.

## Group Related Holdings

To bring existing holdings into your strategy's allocation that would
otherwise be liquidated or orphaned.

It can most easily be seen in action in the Summary Tables for each
account.

### Benefit

For trading accounts, avoid liquidating related holdings in the rebalance. 

For non-trading accounts, avoid orphaning holdings and allow them to
participate in the allocation, increasing the overall size of your
portfolio.

E.g., a Total Market fund can substitute for S&P 500 asset the allocation
requires. This can reduce the need to liquidate the TM fund.

Note that this feature has a trade-off. There’s a potential for higher
realized gains in trading accounts versus non-participation of holdings in
non-trading accounts (and smaller portfolio size).

## Reduce Rebalance

To simplify each account's rebalance by offsetting sales with the purchase
of related asset classes.

### Benefit

This reduce the size and number of trades, potentially avoiding realized
gains and wash sales.

For example, if your rebalance calls for the liquidation of $1,000 of Total
Market and the purchase of $750 of S&P 500, the net reduction would only
require the sale of $250 of the position.

