---
title: Assets Table
keywords: [assets, table]
robots: [index, anchors]
anchor: asset
description: |
  Assets available 
---

# Assets Table

Each row of the Assets table describes a unique asset class.

It also establishes relations between assets.

## Schema

This table can be populated from the [openalloc/asset](https://github.com/openalloc/AllocData#masset) schema.

It is pre-populated with standard asset classes. It can be manually edited
manually in the UI.

A comma- or tab-delimited file adhering to the following schema can also be imported through
drag and drop or the Import menu:

| Name | Type | IsRequired | IsKey | Descript |
| ---- | ---- | ---------- | ----- | -------- |
| assetID | string | true | true | The id of the asset. |
| title | string | false | false | The title of the asset. |
| colorCode | int | false | false | The code for the asset's color palette. |
| parentAssetID | string | false | false | The id of the parent of the asset. |

## Advanced Feature

Consolidation features (Roll Up, etc.) rely heavily on the relations established in the
Assets table.
