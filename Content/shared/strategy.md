---
title: Strategies Table
keywords: [strategy, strategies, table]
robots: [index, anchors]
anchor: strategy
description: |
  The strategies available for allocation
---

# Strategies Table

Each row of the Strategies table describes a single allocation strategy.

## Schema

This table can be populated from the [openalloc/strategy](https://github.com/open-portfolio/AllocData#mstrategy) schema.

Where support has been added, the Strategy Table can be
populated through drag and drop of exports from your allocation provider.

New strategies can also be manually created in the UI.

A comma- or tab-delimited file adhering to the following schema can also be imported through
drag and drop or the Import menu:

| Name | Type | IsRequired | IsKey | Descript |
| ---- | ---- | ---------- | ----- | -------- |
| strategyID | string | true | true | The name of the strategy. |
| title | string | false | false | The title of the strategy. |

## Account Assignments

An account can be assigned to a strategy through the Accounts table.

An account not assigned to any strategy is effectively inactive and non-participating.

Non-trading accounts can be assigned to a strategy. They will participate in the allocation, but not in the rebalance. Their holdings may be "orphaned".

