---
title: OpenAlloc
keywords: [OpenAlloc, open, source, framework, data, model, import, importer]
robots: [index, anchors]
anchor: openalloc
---

<img align="right" src="/images/openalloc_icon.png" width="110" height="110"/>
# OpenAlloc

[OpenAlloc](https://github.com/openalloc) is family of libraries and tools, both general-purpose and with an special emphasis on investing.

At present, all of the code is written using the Swift Language, originally a proprietary language from Apple, but now itself open sourced.

All code in _OpenAlloc_ is published with standard open source licenses. Typically Apache 2.0 will be used for the re-usable libraries. Application code is released under the Mozilla Public License 2.0.

_FlowAllocator_ and _FlowWorth_ incorporate the libraries and tools of _OpenAlloc_, relying on them for such tasks as transforming your brokerage exports.

## AllocData (Data Model)

The [AllocData Project](https://github.com/openalloc/AllocData) contains the data model used in _FlowAllocator_ and _FlowWorth_.

Your portfolio data is stored to your local filesystem in document file, which is a standard zip file containing delimited files based on schema in _AllocData_. (For _FlowAllocator_ the document file extension is ‘.allocatz’, and for _FlowWorth_ it is ‘.worthz’.)

As shown in the demo videos, delimited files conforming to the schema of _AllocData_ can be imported into _FlowAllocator_ and _FlowWorth_ through the Import menu or drag-and-drop.

## FINporter (Importer Framework)

The [FINporter Project](https://github.com/openalloc/FINporter) provides the import framework for _FlowAllocator_ and _FlowWorth_. 

Export files from the following brokerages/services are currently supported\* for import into _FlowAllocator_ and _FlowWorth_: 

<div class="special_table"></div>

| Service | Type | Notes |
| ------- | ---- | ------- |
| [Fidelity Investments](https://fidelity.com) | Brokerage | |
| [Schwab Brokerage Services](https://schwab.com) | Brokerage | New in October 2021 |
| [Allocate Smartly](https://allocatesmartly.com) | Tactical Allocation Provider | |

<br/>

Those exports can be imported through the application's Import menu or drag-and-drop. See _FINporter_’s [README](https://github.com/openalloc/FINporter) for further details on supported export formats.

As more brokerages/services are supported by _FINporter_, that support will eventually be reflected in _FlowAllocator_ and _FlowWorth_. If there’s a delay, _FINporter_’s command-line tool can be used as a stop-gap to transform new (or updated) formats to standardized _AllocData_ schema that can be imported.

\*_Support of any service, including those mentioned above, is neither a recommendation nor endorsement. Do your own research to find suitable vehicles to meet your investment objectives, or seek professional guidance._

## General-purpose Libraries

Of interest to developers, _OpenAlloc_ also features general-purpose libraries extracted from _FlowAllocator_ and _FlowWorth_:

* [SwiftCompactor](https://github.com/openalloc/SwiftCompactor) - formatters for the concise display of Numbers, Currency, and Time Intervals
* [SwiftModifiedDietz](https://github.com/openalloc/SwiftModifiedDietz) - A tool for calculating portfolio performance using the Modified Dietz method
* [SwiftNiceScale](https://github.com/openalloc/SwiftNiceScale) - generate 'nice' numbers for label ticks over a range, such as for y-axis on a chart
* [SwiftRegressor](https://github.com/openalloc/SwiftRegressor) - a linear regression tool that’s flexible and easy to use
* [SwiftSeriesResampler](https://github.com/openalloc/SwiftSeriesResampler) - transform a series of coordinate values into a new series with uniform intervals
* [SwiftSimpleTree](https://github.com/openalloc/SwiftSimpleTree) - a nested data structure that’s flexible and easy to use


