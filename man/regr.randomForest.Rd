% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RLearner_regr_randomForest.R
\name{regr.randomForest}
\alias{regr.randomForest}
\title{RandomForest regression learner.}
\description{
mlr learner for regression tasks using \code{\link[randomForest]{randomForest}}.

This doc page exists, as we added additional uncertainty estimation functionality
(\code{predict.type = "se"}) for the randomForest, which is not provided by the underlying package.

Currently implemented methods are:

\itemize{
\item If \code{se.method = "jackknife"}, the default, the standard error of a prediction
  is estimated by computing the jackknife-after-bootstrap, the mean-squared difference between
  the prediction made by only using trees which did not contain said observation and
  the ensemble prediction.
\item If \code{se.method = "bootstrap"} the standard error of a prediction is estimated by
  bootstrapping the random forest, where the number of bootstrap replicates and the number of
  trees in the ensemble are controlled by \code{se.boot} and \code{se.ntree} respectively,
  and then taking the standard deviation of the bootstrap predictions. The "brute force" bootstrap
  is executed when \code{ntree = se.ntree}, the latter of which controls the number of trees in the
  individual random forests which are bootstrapped. The "noisy bootstrap" is executed when \code{se.ntree < ntree}
  which is less computationally expensive. A Monte-Carlo bias correction may make the latter option
  prefarable in many cases. Defaults are \code{se.boot = 50} and \code{se.ntree = 100}.

\item If \code{se.method = "sd"}, the standard deviation of the predictions across trees is
  returned as the variance estimate.
  This can be computed quickly but is also a very naive estimator.
}

For both \dQuote{jackknife} and \dQuote{bootstrap}, a Monte-Carlo bias correction is applied and,
in the case that this results in a negative variance estimate, the values are truncated at 0.

Please note that all of the mentioned \code{se.method} variants do not affect the computation
of the posterior mean \dQuote{response} value. This is always the same as from the underlying
randomForest.
}
\references{
[Joseph Sexton] and [Petter Laake];
[Standard errors for bagged and random forest estimators],
Computational Statistics and Data Analysis Volume 53, 2009, [801-811].
Also see: [Stefan Wager], [Trevor Hastie], and [Bradley Efron];
[Confidence Intervals for Random Forests: The Jackknife and the Infinitesimal Jackknife],
Journal of Machine Learning Research Volume 15, 2014, [1625-1651].
}
