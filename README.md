
<!-- README.md is generated from README.Rmd. Please edit that file -->

# `{tally}`

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

## Installation

You can install the development version of `{tally}` like so:

``` r
remotes::install_github("albansagouis/tally")
```

## Run

You can launch the application by running:

``` r
tally::run_app()
```

## Similar tools

CellCounter is a very similar online resource. You can find this free
tool [here](https://www.cellcountr.com/) and the code is
[here](https://github.com/cellcounter/cellcounter).

## To do list

Page - Species codes Tool - allow *xx* or -xx-, +xx+ or even +xx/. Add a
setting to toggle this behaviour Tool - Auto-save. Every 10 seconds, a
rds is written. Or csv, whatever keeps the console busy the less. Or
even a txt with only the input string (but no species names…). Settings:
location, frequency Tool - Providing pond names/technician names in
advance for data validation Tool - Beeping after 300 individuals.
Settings, change the threshold Tool - Multiple line output, ie
responding to Enter and adding columns to the results? Tool - toggle to
get % instead of sums Showing - iDiv logo Showing - current session
number Showing - Quickly change main color and fonts. Change in real -
time by adding bs_themer() to your UI. Tests - shiny::testServer or
others, see the golem book engineering… Metadata - codemeta

DONE Page - Session info Page - Acknowledgments Page - Data entry Tool -
CSV export Showing - Package version number Showing - light/dark mode
Metadata - CITATION.cff

## About

You are reading the doc about version : 0.0.0.9002

This README has been compiled on the

``` r
Sys.time()
#> [1] "2025-10-20 07:07:36 CEST"
```
