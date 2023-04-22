---
title: Allocations Table
keywords: [allocations, table]
robots: [index, anchors]
anchor: strategy_allocation
description: |
  Slices of a Strategy’s pie
---

# Allocations Table

Each row of the Allocations table describes a ‘slice’ of a strategy’s
allocation pie.

## Schema

This table can be populated from the [openalloc/allocation](https://github.com/open-portfolio/AllocData#mallocation) schema.

Where support has been added, the Allocation Table can be populated
through drag and drop of exports from your allocation provider. They can
also be manually created and modified in the UI.

A comma- or tab-delimited file adhering to the following schema can also be imported through
drag and drop or the Import menu:

| Name | Type | IsRequired | IsKey | Descript |
| ---- | ---- | ---------- | ----- | -------- |
| allocationStrategyID | string | true | true | The strategy associated with this allocation. |
| allocationAssetID | string | true | true | The asset of the allocation. |
| targetPct | double | false | false | The fraction of the asset in the strategy. |
| isLocked | bool | false | false | Whether the targetPct is locked (or floating). |

## Normalization

When allocations for a strategy don't sum to 100.0%, a button at the bottom of the table will allow 
you normalize to 100.0% when pressed.

Those allocations that are ‘locked’ will be preserved where feasible.

## Advanced Feature

The ‘Roll-up Asset’ consolidation feature can merge smaller allocations
into related ones, but the allocation in the table remains unchanged.
