---
title: Transaction Table
keywords: [history, table, transactions, purchases, sales]
robots: [index, anchors]
anchor: transaction
description: |
  A table of recent transaction history
---

# Transaction Table

A table of recent transaction history, including purchases and sales.

NOTE: this replaces the deprecated 'History' table.

## Schema

This table can be populated from the [openalloc/transaction](https://github.com/open-portfolio/AllocData#mtransaction) schema.

Where support has been added, the Transaction Table can be populated through
drag and drop of exports from your brokerage account, such as ‘accounts
history’ or ‘realized gain/losses’ for taxable accounts.

A comma- or tab-delimited file adhering to the following schema can also be imported through
drag and drop or the Import menu:

| Name | Type | IsRequired | IsKey | Descript |
| ---- | ---- | ---------- | ----- | -------- |
| txnAction | string | true | true | The code of the type of transaction (see below). |
| txnTransactedAt | date | true | true | The date of the transaction. |
| txnAccountID | string | true | true | The account in which the transaction occurred. |
| txnSecurityID | string | true | true | The security involved in the transaction. |
| txnLotID | string | true | true | The lot of the position involved in the transaction (blank if none). |
| txnShareCount | double | true | true | The number of shares transacted. |
| txnSharePrice | double | true | *false* | The price at which the share(s) transacted. |
| realizedGainShort | double | false | false | The total short-term realized gain (or loss) from a sale. |
| realizedGainLong | double | false | false | The total long-term realized gain (or loss) from a sale. |

<br/>
The action types:

| Type | ShareCount | SharePrice | SecurityID | Descript |
| ---- | ---------- | ---------- | ---------- | -------- |
| buysell | \<0 if sale; \>0 if purchase | \>0, price/share | required | Purchase/sale of security to/from cash. | 
| income | amount of income | 1.0 (cash) | if dividend | Income from interest, or the dividend of a stock/ETF/etc.. | 
| transfer | \<0 is outgoing; \>0 is incoming | 1.0 if cash; \>0 for security | if not cash | Transfer of security/cash to/from external source. | 
| miscflow | \<0 is outgoing; \>0 is incoming | 1.0 (cash) | ignored | Neutral (non-income) cashflow to/from account. | 

## Benefits

Two important considerations for taxable accounts that recent transaction
history can inform: 

1. Recent history of purchases. When liquidating a security
   at a loss, a recent purchase of a sufficiently similar security can
   ‘spoil’ the tax deduction of that loss. Also known as a ‘wash sale’.

2. Recent history of sales with realized losses. The deductibility of
   these losses can be preserved by not purchasing sufficiently similar
   securities within 30 days. 

Consult the tax literature (or a professional) for details.
