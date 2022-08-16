---
title: Positions Table
keywords: [positions, table]
robots: [index, anchors]
anchor: valuation_position
description: |
  Positions
---

# Positions Table

Each row of the valuation position table describes a position captured at a particular time for a valuation snapshot. It can represent multiple holdings of an account for an asset class.

## Schema

This table can be populated from the [openalloc/valuation/position](https://github.com/openalloc/AllocData#mvaluationposition) schema.

The attributes for position can be modified manually in the UI.

Typically position rows are generated indirectly through import of holdings. However, a comma- or tab-delimited file adhering to the following schema can also be imported through
drag and drop or the Import menu:

| Name | Type | IsRequired | IsKey | Descript |
| ---- | ---- | ---------- | ----- | -------- |
| valuationPositionSnapshotID | string | true | true | The valuation snapshot ID for the position. |
| valuationPositionAccountID | string | true | true | The account hosting the position. |
| valuationPositionAssetID | string | true | true | The asset class of the position. |
| totalBasis | double | true | false | The price paid to establish position. |
| marketValue | double | true | false | The market value of the position. |

