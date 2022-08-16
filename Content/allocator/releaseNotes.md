---
title: Release Notes
keywords: [FlowAllocator, application, updates, changes, fixes, bugfixes, changelog, release, release notes]
robots: [index, anchors]
anchor: changeLog
description: |
  Release Notes: What's New with FlowAllocator
---

# Release Notes

What's new with _FlowAllocator_?

## Version 1.12

*Released August 2022*

* _FlowAllocator_ is now open source. All ‘Investor’ features that were formerly an in-app purchase are now available to all users.

## Version 1.11

*Released June 2022*

* Introductory offer: FREE six-month trial providing full access to ‘Investor’ features

## Version 1.10

*Released April 2022*

* Integrated new open source SwiftTabler component, fixing various table issues
* Integrated new open source SwiftDetailer component, fixing various detail issues
* Various improvements and fixes

## Version 1.9

*Released February 2022*

* Various table improvements for reliability and scalability
* Sort model tables by clicking on header column (ascending-only for now)
* Accented color background when hovering over table row
* Better handling of foreign key invalidation on deletion of strategy, assets, and trackers
* Fix where InfoBanner messages are now document-specific
* Fix for foreground color in selected model rows in Light mode
* Fix to reduce jumping 'Basic'/'Investor' badge on sidebar (under Monterey)
* Partial fix for rebalance cell height (due to a framework behavior change in Monterey)

## Version 1.8

*Released January 2022*

* Updated with recent brokerage import improvements in FINporter, reducing 'rejected rows'
* Improved detail forms for data model, including validation and layout
* Restored Context Help buttons (and other help fixes)
* Can now copy Info Banner entries to clipboard (via right-click 'Copy')
* Fix for Sidebar when toggling tradeability of accounts in data model
* Partial fix for table cell height (due to a framework behavior change in Monterey)

## Version 1.7

*Released January 2022*

* Link with popup to conveniently review 'rejected row(s)' from import, available in 'Info Message Banner' box.
* Documentation now web-based, hosted at [https://openalloc.github.io/flow/allocator](https://openalloc.github.io/flow/allocator/contents/index.html)

## Version 1.6

*Released December 2021*

* Gentle gradients in some UI elements. (e.g., rebalance bubbles)
* In Asset Detail, color code selection now displays the color being picked.
* Similarly, in Asset Table, the color code column is now colorized.
* Warning to ensure that all securities held are priced and have asset class assignments.
* Better validation for strategy grid; bugfix to refresh context when normalizing allocation to 100%.
* Fix for properly saving rebalance tab.
* Refactoring to support newly-published open source libraries.

## Version 1.5

*Released November 2021*

* Completed internal code-reorganization changes for development of new FlowWorth app.
* FINporter fix to support non-"All-Account" exports from Schwab.
* Defensive changes which may address the CPU issues that one user has reported.
* Restructured documentation to better integrate with website and the new FlowWorth app. 
* Removed context help buttons, at least temporarily, due to limitations of legacy help system with new documention organization.
* Account holdings summary displays even if no active strategy selected.
* Various changes and fixes. Please report anything I might have inadvertently broken.

## Version 1.4

*Released October 2021*

* Support for brokerage exports from Schwab (As with any new feature, examine the imported data carefully!)
* "Share Count" now on holdings summary. Per ticker.
* Bugfix where Strategy Detail "Title" wasn't loading/saving properly.
* Bugfix with Allocation table when import didn't quite add up to 1.0. Now better normalize button to adjust to 1.0.
* Securities created/updated from fido/chuck imports now have their "Updated At" set to export date.
* ‘Investor’ change: The third queue of optimize results ("Results C") now defaults to "Sales Volume" as its first key; it can be reconfigured by the user.
* Shortcut for strategy changed to Control-Command-Return so that it's consistent with other sidebar selections.
* Unified key for Inspector (Option-Command-0), for both Strategy and Accounts.
* Escape key can now be used to easily dismiss info banner (yay!).
* New "Transaction" table has replaced the "History" table, notably with an "Action" field to indicate the transaction type.
* In data model tables, a "Detail..." has been added to the context menu for each row.
* Many other minor changes and fixes. Please report anything I might have inadvertently broken.
