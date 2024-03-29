% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/easyVolcano.R
\name{easyVolcano}
\alias{easyVolcano}
\title{Interactive volcano plot labels}
\usage{
easyVolcano(
  data,
  x = NULL,
  y = NULL,
  padj = y,
  fdrcutoff = 0.05,
  fccut = NULL,
  colScheme = c("darkgrey", "blue", "red"),
  xlab = expression("log"[2] ~ " fold change"),
  ylab = expression("-log"[10] ~ " P"),
  filename = NULL,
  showCounts = TRUE,
  useQ = FALSE,
  ...
)
}
\arguments{
\item{data}{The dataset for the plot. Automatically attempts to recognises
DESeq2 and limma objects.}

\item{x}{Name of the column containing log fold change. For DESeq2 and limma
objects this is automatically set.}

\item{y}{Name of the column containing p values. For DESeq2 and limma objects
this is automatically set.}

\item{padj}{Name of the column containing adjusted p values (optional). If
\code{y} is specified and \code{padj} is left blank or equal to \code{y}, nominal unadjusted
p values are used for cut-off for significance instead of adjusted p values.}

\item{fdrcutoff}{Cut-off for FDR significance. Defaults to FDR < 0.05. If \code{y}
is specified manually and \code{padj} is left blank then this refers to the
cut-off for significant points using nominal unadjusted p values.}

\item{fccut}{Optional vector of log fold change cut-offs.}

\item{colScheme}{Colour scheme. If no fold change cut-off is set, 2 colours
need to be specified. With a single fold change cut-off, 3 or 5 colours are
required, depending on whether the colours are symmetrical about x = 0.
Accommodates asymmetric colour schemes with multiple fold change cut-offs
(see examples).}

\item{xlab}{x axis title. Accepts expressions.}

\item{ylab}{y axis title. Accepts expressions.}

\item{filename}{Filename for saving to pdf.}

\item{showCounts}{Logical whether to show legend with number of
differentially expressed genes.}

\item{useQ}{Logical whether to convert nominal P values to q values.
Requires the qvalue Bioconductor package.}

\item{...}{Other arguments passed to \code{\link[=easylabel]{easylabel()}}.}
}
\value{
By default no return value. If \code{output_shiny = FALSE} or the shiny
button 'Export plotly & exit' is pressed, a plotly figure is returned.
See \code{\link[=easylabel]{easylabel()}}.
}
\description{
Interactive labelling of volcano plots using shiny/plotly interface.
}
\seealso{
\code{\link[=easylabel]{easylabel()}} \code{\link[=easyMAplot]{easyMAplot()}}
}
