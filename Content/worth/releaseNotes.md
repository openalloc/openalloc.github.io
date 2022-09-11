---
title: Release Notes
keywords: [FlowWorth, application, updates, changes, fixes, bugfixes, changelog, release, release notes]
robots: [index, anchors]
anchor: changeLog
description: |
  Release Notes: What's New with FlowWorth
---

# Release Notes

What's new with _FlowWorth_?

## Version 1.9

*Released September 2022*

* Replaced “Δ% (Annualized)” with  “Δ% (CAGR)” with new Compound Annual Growth Rate calculation for period.

## Version 1.8

*Released August 2022*

* _FlowWorth_ is now open source. All ‘Investor’ features that were formerly an in-app purchase are now available to all users.

## Version 1.7

*Released June 2022*

* Introductory offer: FREE six-month trial providing full access to ‘Investor’ features

## Version 1.6

*Released April 2022*

* Integrated new open source SwiftTabler component, fixing various table issues
* Integrated new open source SwiftDetailer component, fixing various detail issues
* Various improvements and fixes

## Version 1.5

*Released February 2022*

* Various table improvements for reliability and scalability
* Sort model, builder, and summary tables by clicking on header column (ascending-only for now)
* Accented color background when hovering over table row
* Better handling of foreign key invalidation on deletion of strategy, assets, and trackers
* Fix where InfoBanner messages are now document-specific
* Fix for foreground color in selected model rows in Light mode
* Fix to reduce jumping 'Basic'/'Investor' badge on sidebar (under Monterey)

## Version 1.4

*Released January 2022*

* Updated with recent brokerage import improvements in FINporter, reducing 'rejected rows'
* Improved detail forms for data model, including validation and layout
* Restored Context Help buttons (and other help fixes)
* Can now copy Info Banner entries to clipboard (via right-click 'Copy')
* Fix for Sidebar when toggling tradeability of accounts in data model
* Partial fix for table cell height (due to a framework behavior change in Monterey)

## Version 1.3

*Released January 2022*

* New strategies chart and table, to conveniently track strategy delta/performance over time.
* New chart Legend, with control via toolbar, menu, and shortcut key (⌘G).
* Link with popup to conveniently review 'rejected row(s)' from import, available in 'Info Message Banner' box.
* Documentation now web-based, hosted at [https://openalloc.github.io/flow/worth](https://openalloc.github.io/flow/worth/contents/index.html)

## Version 1.2

*Released December 2021*

* Bugfix for chart scaling, where in isolated cases there was not enough range allowed for net account value.
* Charts now feature mild gradients!
* Chart Display now renamed to Chart Extent, and now has option to display negative values only.
* Chart selection for Asset/Account now separate from Color/Mono selection.
* In Asset Detail, color code selection now displays the color being picked.
* Similarly, in Asset Table, the color code column is now colorized.
* Bugfix for forecast line projection, where in some cases it extended below bottom of chart.
* Refactoring to support newly-published open source libraries.

## Version 1.1

*Released Mid November 2021*

* Support for liabilities (i.e., holdings with a negative value), such as a home mortgage, student loan, etc.  As with other holdings, they are rolled up by asset class into positions.
* Returns Chart: where you have liabilities you can toggle the "Chart Display" view via menu, toolbar, and keyboard shortcut to show only net "Positive" assets or both net "Positive & Negative" assets.
* Forecast Chart - fixed for situations where it was producing a crooked linear regression line (due to a resampling bug)
* Various changes and fixes. Please report anything I might have inadvertently broken.

## Version 1.0

*Released Early November 2021*

* First release! Please report anything that isn't working as expected.
