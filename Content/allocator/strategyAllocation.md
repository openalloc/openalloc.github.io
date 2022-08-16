---
title: Strategy Allocation
keywords: [strategy, allocation]
robots: [index, anchors]
anchor: strategyAllocation
description: |
  The strategy grid showing the allocation
---

# Strategy Allocation

The strategy allocation view is at the heart of _FlowAllocator_.

## Strategy Grid

This lists the asset classes in the strategy’s allocation.

Asset classes may be grouped if the ‘Roll-up Asset’ Investor feature is
enabled.

Asset order can be changed by drag and drop of the row. This can change
the allocation. Rows containing no trading assets cannot be moved and will
appear at bottom.

### Trading Accounts

Accounts whose ‘isActive’ and ‘canTrade’ attributes are true.

Account order can be changed by drag and drop of header cell. This can
change the allocation.

Its visibility can be toggled from the toolbar, menu, and key shortcut.

### Non-Trading Accounts

Accounts whose ‘isActive’ attribute is true and ‘canTrade’ attribute is
false.

Account order can be changed by drag and drop of header cell. This will
not change the allocation. It’s purely cosmetic.

Its visibility can be toggled from the toolbar, menu, and key shortcut.

### View Selector

This toolbar selector allows you to view different data in the strategy
grid.

In addition to the toolbar, this can be controlled via the menu and key
shortcut.

#### (A) Account Targets 

The fraction of an account allocated to the asset, as a percentage.

#### (S) Strategy Targets

The fraction of the strategy allocated to the asset, as a percentage.

#### [S] Target Amounts

The amount of the strategy allocated to the asset, as an amount in
currency.

#### [H] Present Value of Holdings

The present value of holdings for the asset class.

May include holdings in a related asset class if the ‘Roll-up Asset’ or
‘Group Related Holdings’ feature is enabled.

#### [G] Gain/Loss of Holdings $

The gain/loss of holdings for the asset class, where pricing available in
the Security Table, expressed as an amount in currency.

May include holdings in a related asset class if the ‘Roll-up Asset’ or
‘Group Related Holdings’ feature is enabled.

#### (G) Gain/Loss of Holdings %

The gain/loss of holdings for the asset class, where pricing available in
the Security Table, expressed as percentage relative to the basis.

May include holdings in a related asset class if the ‘Roll-up Asset’ or
‘Group Related Holdings’ feature is enabled.

#### [O] Orphaned Holdings

For non-trading accounts only, the holdings in surplus to the strategy
allocation that are ‘orphaned’.

Note that orphans for asset classes outside of the strategy are not shown
here. See the Orphans Summary Table.

## Strategy Inspector

The ‘Right Sidebar’ contains a host of features.

Its visibility can be toggled from the toolbar, menu, and key shortcut.

### Rebalance

The rebalance view for all trading accounts in the strategy.

### Allocation

The Allocation Table for the strategy.

### Optimize

The Optimizer for the strategy.

### Consolidate

Consolidation settings for the strategy.

## Result Details

This details view, appearing at the bottom, includes the flow mode slider
to control the amount of ‘flow’ in the allocation.

It also summarizes various details of the allocation.

Its visibility can be toggled from the toolbar, menu, and key shortcut.

# Advanced Features

The ‘Roll-up Asset’ feature can consolidate highly-granular allocations, such as 
those built from an ensemble of more than one strategy.

The ‘Tornado’ feature lets you conveniently randomize:
* the asset class order
* the account order
* the flow mode (from 0% to 100%)
