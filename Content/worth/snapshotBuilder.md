---
title: Snapshot Builder
keywords: [FlowWorth, snapshot, valuation, builder]
robots: [index, anchors]
anchor: snapshotBuilder
description: |
  A builder for valuation snapshots.
---

#  Snapshot Builder

The Snapshot Builder is the gateway for data incoming to _FlowWorth_.

The Builder is a tool for creating periodic point-in-time snapshots of valuations of your holdings. For example, you might want to track your net worth on a monthly basis, so you'll create a new snapshot every month.

Optionally you can capture cash flow from your brokerage's transaction history. This is useful for those who seek an accurate measure of performance of a portfolio with significant inflows or outflows.

## Importing your data

Imports can be done in two ways: either (1) with the Import menu option or (2) via drag-and-drop.

The 'Snapshot Builder' section of the sidebar will be highlighted when you've imported data, but not yet created a new snapshot.

### Brokerage Exports

Where supported (with the _FINporter_ open import framework) you can import your brokerage exports directly into _FlowWorth_.

Even if you import directly from brokerage statements, you'll probably want to construct your own MAccount and MSecurity delimited files, as described in next section.

### Account and Security Mappings

| Type | Purpose |
| ---- | ------- |
| MAccount | Specify a readable account title and the strategy mapping. |
| MSecurity | Specify an asset mapping for each ticker symbol. |

These can be reused as needed, such as with the _FlowAllocator_ app for rebalancing.

## Imported Data Model Entities

For each entity, you can construct your own comma-separated or tab-delimited files for import. If you're importing a supported brokerage file, it usually isn't necessary.

Import your delimited files via the 'Import' menu or via drag-and-drop.

* [Account Table ](../../shared/account/index.html)
* [Holding Table](../../shared/account_holding/index.html)
* [Security Table](../../shared/security/index.html)
* [Transaction Table](../../shared/transaction/index.html)
* [Strategy Table](../../shared/strategy/index.html)

For more details on these formats, see the _OpenAlloc_ project.

## Valuation Data Model Entities

These are typically generated from your imports and used for long-term storage, along with accounts, assets, and securities.

* [Cashflow Table](../../shared/valuation_cash_flow/index.html)
* [Position Table](../../shared/valuation_position/index.html)
* [Snapshot Table](../../shared/valuation_snapshot/index.html)

For more details on these formats, see the _OpenAlloc_ project.

## Interface

### Tool Bar

#### Performance Selector

* Triangle (Delta) - view changed to reflect change in Market Value
* B - view changed to reflect change in Total Basis
* R - view changed to reflect performance (via Modified Dietz method)

#### Date and Time

This is the valuation time stamp, in the time zone you have specified in Configuration Settings.

If you imported via brokerage exports, this may be set automatically to the timestamp within.

'now' will set it to the current date and time.

Note that snapshots must be separated by a minimum of 24 hours, largely due to ambiguities common in transaction history data.

#### Clear

This will **delete all records** from the MHolding and MTransaction tables, as is done as part of creating a new snapshot (see below).

Undo (via Cmd-Z should be supported.)

#### Create Snapshot

To create a snapshot, click the 'Create Snapshot' button.

Creating a new snapshot stores a point-in-time valuation to the data model.

It will append new records to the following tables in the data model: MValuationSnapshot, MValuationPosition, and MValuationCashflow.

It will also **delete all records** from the MHolding and MTransaction tables. This allows you to conveniently start fresh to build the next snapshot.

Undo (via Cmd-Z should be supported.)

### Period Summary View

Access the Summary View via the menu or by clicking the "[B] SNAPSHOT BUILDER" in the side bar. Or by the Control-Command-B shortcut.

This provides details on the Snapshot's period, before it is committed to _FlowWorth_'s data model. 

This will be most useful when you've created at least two snapshots.

For more detail see [Period Summary View](../periodSummary/index.html).

### Positions View

#### Imported Holdings

These are the records you imported into the MHolding table in the data model. They are the source for creating Position records.

Note that these will be deleted when you create a new snapshot, or hit the 'clear' button.

They are sorted by account number, security, and lot (if any).

#### New Positions

These are derived from records in the MHolding table in the data model, but rolled-up by asset class.

#### Most Recent Snapshot

These are the Position records that were created in the previous snapshot, if there was one. It's provided for convenient comparison.

### Cash Flow View

Capturing Cash Flow from transaction history is optional. This is useful for those who seek an accurate measure of performance of a portfolio with significant inflows or outflows.

#### Imported Transactions

These are the records you imported into the MTransaction table in the data model. They are the source for Cash Flow records.

Note that these will be deleted when you create a new snapshot, or hit the 'clear' button.

A checkbox is available for you to selectively include (or exclude) transactions to use to build Cash Flow records. Those transactions outside the current snapshot period are unchecked by default.

Note that because transaction dates in brokerage history data will often not provide precise times, they are considered approximate. You may decide to override the default checkmark setting.

#### New Cash Flow

These are derived from records in the MTransaction table in the data model, but rolled-up by asset class.

If a Cash Flow is undesired, uncheck the corresponding transactions from the "Imported Transactions" table.

#### Most Recent Snapshot

These are the Cash Flow records that were created in the previous snapshot, if there was one. It's provided for convenient comparison.

### Footer

The footer contains additional summary data. The 'Performance Selector' in the tool bar can change the content.

* Snapshots - the count of created snapshots, which excludes the snapshot that you're in the process of creating.
* Most Recent Snapshot - the time stamp of the previous snapshot, if any. It also excludes the snapshot that you're in the process of creating.
* Positions (Market Value) - the count of Position records to create and their summed amount
* Cash Flow (Net) - the count of Cash Flow records to create and their net summed amount (which can be negative)
* R (Period) - the performance of data contained in the snapshot, per the Modified Dietz method (requires Cash Flow)
