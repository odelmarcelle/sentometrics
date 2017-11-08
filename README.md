
# sentometrics
#### An Integrated Framework for Textual Sentiment Time Series Aggregation and Prediction

## Introduction

The **`sentometrics`** package is designed to do time series analysis based on textual sentiment. Put differently, it is **an integrated framework for textual sentiment time series aggregation and prediction**. It accounts for the intrinsic challenge that, for a given text, sentiment can be computed in many different ways, as well as the large number of possibilities to pool sentiment across texts and time. This additional layer of manipulation does not exist in standard text mining and time series analysis packages. As a final outcome, the package provides an automated means to econometrically model the impact of sentiment in texts on a given variable, by first computing a wide range of textual sentiment time series and then selecting those that are most informative. The package created therefore integrates the _qualification_ of sentiment from texts, the _aggregation_ into different sentiment measures and the optimized _prediction_ based on these measures.

The package implements the main methodology developed in the paper "[Questioning the news about economic growth: Sparse forecasting using thousands of news-based sentiment values](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2976084)" (Ardia, Bluteau and Boudt, 2017). In future releases, the package will be expanded in multiple directions while further improving its present setting.

## Installation

The latest development version of `sentometrics` is available at [https://github.com/ArdiaD/Sentometrics](https://github.com/sborms/sentometrics). To install this version (which may contain bugs!), execute:

```R
devtools::install_github("sborms/sentometrics")
```

## References

Please cite `sentometrics` in publications. Use `citation("sentometrics")`.

## Acknowledgements

This software package originates from a
[Google Summer of Code 2017](https://github.com/rstats-gsoc/gsoc2017/wiki/Sentometrics:-An-integrated-framework-for-text-based-multivariate-time-series-modeling-and-forecasting) project.

