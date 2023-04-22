---
title: Accounts Table
keywords: [accounts, table]
robots: [index, anchors]
anchor: account
description: |
  Accounts available for the strategy
---

# Accounts Table

Each row of the Accounts table describes a unique account.

## Deleting Accounts

To delete an account, first remove from strategy, then delete from menu.

## Schema

This table can be populated from the [openalloc/account](https://github.com/open-portfolio/AllocData#maccount) schema.

Where support has been added, the Accounts Table can be populated through
drag and drop of exports from your brokerage account, such as ‘Portfolio
Positions’

The attributes for account can be modified manually in the UI.

A comma- or tab-delimited file adhering to the following schema can also be imported through
drag and drop or the Import menu:

| Name | Type | IsRequired | IsKey | Descript |
| ---- | ---- | ---------- | ----- | -------- |
| accountID | string | true | true | The account number of the account. |
| title | string | false | false | The title of the account. |
| isTaxable | bool | false | false | Is the account taxable? |
| canTrade | bool | false | false | Can you trade securities in the account? |
| accountStrategyID | string | false | false | The strategy associated with this account, if any. |

## Attributes

* Title

* Account Number

* Strategy ID - the strategy in which the holdings of the account are available for participation

* canTrade (Bool) - if true, all the holdings of the account participate
  in the strategy and are subject to liquidation. 
  
  If false, only those holdings in the account that match the strategy’s
  allocation will participate. Those that don’t are called “orphans”. Note
  that part of a holding can participate.

* isTaxable (Bool) - need to trade against taxable accounts in
  a tax-efficient manner

## Deprecations

* isActive (Bool) - no longer used with introduction of Strategy ID attribute.

