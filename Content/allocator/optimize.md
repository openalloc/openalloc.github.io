---
title: Optimize
keywords: [optimize, optimizer, optimization]
robots: [index, anchors]
anchor: optimize
description: |
  Find an allocation to meet your investment objectives
---

# Optimize Feature

Optimization is at the heart of _FlowAllocator_’s advanced feature set.

It can be used to survey the millions of possible allocations, to find
those that best meet your investment objectives.

For example, to find an allocation that keeps realized gains to a minimum.

## Surveying allocation space 

The number of possible allocations to consider can be astronomical,
counting into the millions and even billions.

While _FlowAllocator_’s code is tuned for performance, there is
nevertheless heavy lifting to be done to survey the allocation space.

The number of allocations is determined by the product of three
attributes:

* trading account permutations
* trading asset class permutations
* 128 flow mode positions (the slider)

``` 
128 * factorial(accountCount) * factorial(assetCount)
```

So for example, with 3 trading accounts and 7 trading assets:

```
128 * 3! * 7! = 3,870,720
```

...or approximately 3.9M allocations. This will usually take a minute or
two on a Mac with an M1 processor, with all 8 cores employed.

## Optimization results

The three ‘Result’ tabs can be independently configured to prioritize
different goals. For example, the first tab can prioritize ‘Net Gains’ in
ascending order, and the others different priorities.

Once started, an optimization will populate the results according to their
respective priorities.

Not all allocations will qualify. Those that violate a user-defined ‘Cap’
for an account will be discarded. The ‘Discard Rate’ is shown in the
performance stats.

While the optimization is running, click on an allocation to view the
results in detail.

Note that modifying the model or changing the strategy will interrupt the
optimization and clear the results.

## Optimization setup

### Top-N count

The maximum number of allocations to display in each result tab.

### Max cores

The maximum number of cores to be used in the background operations of the
optimization.

### Priority

The operating system priority given to the background operations. Setting
this to ‘Adaptive’ (the default) delegates the decision to the operating
system.

## Optimization tips

There can be too much of a good thing. If the number of allocations is
high, such as over 30M, it can take an unacceptably long time to conduct
a full survey.

For example 4M allocations takes approximately a minute on an M1
processor, at a rate of 67K allocations/sec. To survey 4 billion at that
rate would take 1,000 minutes, or 17 hours.

Therefore, you can improve performance by reducing the number of
allocations. This usually means limiting the number of trading assets and
accounts to keep their permutations from ballooning.

### Reduce Trading Assets with Roll-up

_FlowAllocator_’s _Roll-up Assets_ consolidation features can reduce the
number of trading assets.

First, this feature can simplify your allocation by combining smaller
allocations with related ones. For example, a 5% allocation to Japan
equities can be ‘rolled’ into a 7% allocation to foreign equities, making
a net 12% allocation to foreign equities.

See the Consolidation help for further details on tuning Roll-up.

### Reduce Trading Accounts

For trading accounts that are relatively static, configure them as
non-trading. (The trade-off is ‘orphaning’ holdings that no longer
participate in your allocation.)

Consolidate your accounts where feasible. For example if you have two
taxable accounts, move assets to combine them into one.

This can also reduce trading assets. When a non-trading account provides
full coverage for an asset, it’s eliminated from the list of trading
assets. 

### Other optimize tips

Of course, running on a faster computer with additional cores will improve
performance.

## Survey versus random sampling

The survey is presently deterministic. There is no randomization.

The only ‘sampling’ that is done is based on the fixed sequence of flow
modes, and the rules of the allocation.

## The Flow Mode Sequence

Flow Mode is a value in the range 0...1, or 0%...100% as shown in the
slider. The full sequence of Flow Modes used in a survey (when sorted) is 

```
0/127, 1/127, 2/127, ..., 127/127.
```

However, the sequence has a fixed arrangement to survey broadly and then
narrow down as optimization progresses. This allows optimizations to be
interrupted and still get suitable results.

