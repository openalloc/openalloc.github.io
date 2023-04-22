---
title: Cashflows Table
keywords: [cashflows, table]
robots: [index, anchors]
anchor: valuation_cash_flow
description: |
  Cashflows
---

# Cashflows Table

Each row of the valuation cashflow table describes a cash flow at a particular time. It is not explicitly bound to any valuation snapshot. Typically, multiple history items are rolled up into a cash flow item.

## Schema

This table can be populated from the [openalloc/valuation/cashflow](https://github.com/open-portfolio/AllocData#mvaluationcashflow) schema.

The attributes for cashflow can be modified manually in the UI.

Typically cashflow rows are generated indirectly through import of transactions. However, a comma- or tab-delimited file adhering to the following schema can also be imported through
drag and drop or the Import menu:

| Name | Type | IsRequired | IsKey | Descript |
| ---- | ---- | ---------- | ----- | -------- |
| valuationCashflowTransactedAt | date | true | true | The timestamp when this flow occurred. |
| valuationCashflowAccountID | string | true | true | The account in which the flow occurred. |
| valuationCashflowAssetID | string | true | true | The asset class flowed. |
| amount | double | true | false | The amount of the flow (-outgoing, +incoming). |

