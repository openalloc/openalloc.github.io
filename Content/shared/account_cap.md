---
title: Caps Table
keywords: [caps, table]
robots: [index, anchors]
anchor: account_cap
description: |
  Place limits on asset allocations within accounts
---

# Caps Table

This table describes limits on allocation for an asset class within an
account.

## Schema

This table can be populated from the [openalloc/cap](https://github.com/openalloc/AllocData#mcap) schema.

While drag and drop of schema-conforming delimited files is supported,
most often the Caps will be configured manually through the UI.

A comma- or tab-delimited file adhering to the following schema can also be imported through
drag and drop or the Import menu:

| Name | Type | IsRequired | IsKey | Descript |
| ---- | ---- | ---------- | ----- | -------- |
| capAccountID | string | true | true | The account in which the limit will be imposed. |
| capAssetID | string | true | true | The asset in which the limit will be imposed. |
| limitPct | double | false | false | Allocate no more than this fraction of the account's capacity to the asset. |

## Benefits

For various reasons, such as tax efficiency, you may wish to restrict
allocations for an asset class within an account.

For example, a limit of 0% on ‘Gold’ for your taxable account will
discourage any allocation.

Where a limit is exceeded in the strategy grid, it is shown in inverse
color.

## Alternatives

You can configure an account as non-trading to remove it from the
allocation but still allow its existing holdings to participate in the
allocation.

## Advanced Feature

The Optimize will discard any allocation candidate where a Cap limit is
exceeded. Discard rate is shown in the Optimize status.
