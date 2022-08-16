---
title: Tracker Table
keywords: [tracker, table]
robots: [index, anchors]
anchor: tracker
description: |
  Establish similarity relations between securities
---

# Tracker Table

Each row of the Tracker table describes a many-to-many
relationship between Securities.

Each row of the Trackers table describes a shared tracking index. For example, the S&P 500 followed by both `VOO`, `SPY`, and many other funds.

## Schema

This table can be populated from the [openalloc/tracker](https://github.com/openalloc/AllocData#mtracker) schema.

A comma- or tab-delimited file adhering to the following schema can also be imported through
drag and drop or the Import menu:

| Name | Type | IsRequired | IsKey | Descript |
| ---- | ---- | ---------- | ----- | -------- |
| trackerID | string | true | true | The name of the tracking index. |
| title | string | false | false | The title of the tracking index. |

## Example

For example a “S&P 500” Tracker would be linked by SPY, VOO, and other
securities that track the index.
