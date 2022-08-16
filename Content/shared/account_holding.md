---
title: Holdings Table
keywords: [holdings, table]
robots: [index, anchors]
anchor: account_holding
description: |
  Table showing positions held in each active account
---

# Holdings Table

A table where each row describes an individual position, with account,
ticker, share count, share basis, etc.

Note that holdings for accounts not assigned to a strategy will be ignored.

## Schema

This table can be populated from the [openalloc/holding](https://github.com/openalloc/AllocData#mholding) schema.

Where support has been added, the Holdings Table can be populated through
drag and drop of exports from your brokerage account, such as ‘Portfolio
Positions’.

A comma- or tab-delimited file adhering to the following schema can also be imported through
drag and drop or the Import menu:

| Name | Type | IsRequired | IsKey | Descript |
| ---- | ---- | ---------- | ----- | -------- |
| holdingAccountID | string | true | true | The account hosting the position. |
| holdingSecurityID | string | true | true | The security of the position. |
| holdingLotID | string | true | true | The lot of the position, if any. |
| shareCount | double | false | false | The number of shares held in the position. |
| shareBasis | double | false | false | The price paid per share of the security. |
| acquiredAt | date | false | false | The date of the acquisition. |


