% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BenchmarkResult_operators.R
\name{getBMRPerformances}
\alias{getBMRPerformances}
\title{Extract the test performance values from a benchmark result.}
\usage{
getBMRPerformances(bmr, task.ids = NULL, learner.ids = NULL,
  as.df = FALSE, drop = FALSE)
}
\arguments{
\item{bmr}{[\code{\link{BenchmarkResult}}]\cr
Benchmark result.}

\item{task.ids}{[\code{character(1)}]\cr
Restrict result to certain tasks.
Default is all.}

\item{learner.ids}{[\code{character(1)}]\cr
Restrict result to certain learners.
Default is all.}

\item{as.df}{[\code{character(1)}]\cr
Return one data.frame as result - or a list of lists of objects?.
Default is \code{FALSE}.}

\item{drop}{[\code{logical(1)}]\cr
If drop is \code{FALSE} (the default), a nested list with
the following structure is returned:\cr
\code{res[task.ids][learner.ids]}.\cr
If drop is set to \code{TRUE}, it is checked if the list
structure can be simplified.\cr
If only one learner was passed, a list with entries
for each task is returned.\cr
If only one task was passed, the entries are named after
the corresponding learner.\cr
For an experiment with both one task and learner,
the whole list structure is removed.\cr
Note that the name of the
task/learner will be dropped from the return object.}
}
\value{
[\code{list} | \code{data.frame}]. See above.
}
\description{
Either a list of lists of \dQuote{measure.test} data.frames, as returned by
\code{\link{resample}}, or these objects are rbind-ed with extra columns
\dQuote{task.id} and \dQuote{learner.id}.
}
\seealso{
Other benchmark: \code{\link{BenchmarkResult}},
  \code{\link{batchmark}}, \code{\link{benchmark}},
  \code{\link{convertBMRToRankMatrix}},
  \code{\link{friedmanPostHocTestBMR}},
  \code{\link{friedmanTestBMR}},
  \code{\link{generateCritDifferencesData}},
  \code{\link{getBMRAggrPerformances}},
  \code{\link{getBMRFeatSelResults}},
  \code{\link{getBMRFilteredFeatures}},
  \code{\link{getBMRLearnerIds}},
  \code{\link{getBMRLearnerShortNames}},
  \code{\link{getBMRLearners}},
  \code{\link{getBMRMeasureIds}},
  \code{\link{getBMRMeasures}}, \code{\link{getBMRModels}},
  \code{\link{getBMRPredictions}},
  \code{\link{getBMRTaskDescriptions}},
  \code{\link{getBMRTaskIds}},
  \code{\link{getBMRTuneResults}},
  \code{\link{plotBMRBoxplots}},
  \code{\link{plotBMRRanksAsBarChart}},
  \code{\link{plotBMRSummary}},
  \code{\link{plotCritDifferences}},
  \code{\link{reduceBatchmarkResults}}
}
