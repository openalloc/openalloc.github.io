---
title: Securities Table
keywords: [security, securities, table]
robots: [index, anchors]
anchor: security
description: |
  Securities available for holdings
---

# Securities

Table where each row describes a unique security, with its ticker, asset
class and latest price.

## Schema

This table can be populated from the [openalloc/security](https://github.com/open-portfolio/AllocData#msecurity) schema.

Where support has been added, the Securities Table can be populated
through drag and drop of exports from your brokerage account, such as
‘Portfolio Positions’.

A comma- or tab-delimited file adhering to the following schema can also be imported through
drag and drop or the Import menu:

| Name | Type | IsRequired | IsKey | Descript |
| ---- | ---- | ---------- | ----- | -------- |
| securityID | string | true | true | The symbol/securityID of the security. |
| securityAssetID | string | false | false | The asset class of the security. |
| sharePrice | double | false | false | The reported price of one share of the security. |
| updatedAt | date | false | false | The timestamp of the the reported price. |
| securityTrackerID | string | false | false | The index the security is tracking. |
