---
title: Snapshots Table
keywords: [snapshots, table]
robots: [index, anchors]
anchor: valuation_snapshot
description: |
  Snapshots
---

# Snapshots Table

Each row of the ValuationSnapshot table describes a valuation captured at a particular time.

## Schema

This table can be populated from the [openalloc/valuation/snapshot](https://github.com/openalloc/AllocData#mvaluationsnapshot) schema.

The attributes for snapshot can be modified manually in the UI.

Typically snapshot rows are generated indirectly through import of brokerage export files. However, a comma- or tab-delimited file adhering to the following schema can also be imported through
drag and drop or the Import menu:

| Name | Type | IsRequired | IsKey | Descript |
| ---- | ---- | ---------- | ----- | -------- |
| valuationSnapshotID | string | true | true | The unique valuation snapshot identifier. |
| capturedAt | date | true | false | The timestamp when the snapshot was created. |

