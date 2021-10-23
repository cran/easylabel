## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE
)
library(easylabel)

## ----eval = FALSE-------------------------------------------------------------
#  install.packages("easylabel")
#  library(easylabel)

## ----eval = FALSE-------------------------------------------------------------
#  devtools::install_github("myles-lewis/easylabel")
#  library(easylabel)

## ----eval = FALSE-------------------------------------------------------------
#  if (!requireNamespace("BiocManager", quietly = TRUE))
#    install.packages("BiocManager")
#  BiocManager::install("qvalue")

## ----eval = FALSE-------------------------------------------------------------
#  BiocManager::install("AnnotationDbi")
#  BiocManager::install("org.Hs.eg.db")

## ----eval = FALSE-------------------------------------------------------------
#  data(mtcars)
#  easylabel(mtcars, x = 'mpg', y = 'wt',
#            colScheme = 'royalblue')

## ----scatter1, echo = FALSE, message=FALSE, fig.align='center', out.width='80%', out.extra='style="border: 0;"'----
knitr::include_graphics("scatter1.png")

## ----eval = FALSE-------------------------------------------------------------
#  easylabel(mtcars, x = 'mpg', y = 'wt',
#            col = 'cyl')

## ----eval = FALSE-------------------------------------------------------------
#  # gapminder data set
#  if(!require(gapminder)) {install.packages("gapminder")}
#  library(gapminder)
#  easylabel(gapminder[gapminder$year == 2007, ], x = 'gdpPercap', y = 'lifeExp',
#            col = 'continent', shape = 'continent',
#            size = 10,
#            labs = 'country',
#            zeroline = FALSE)

## ----scatter3, echo = FALSE, message=FALSE, fig.align='center', out.width='80%', out.extra='style="border: 0;"'----
knitr::include_graphics("scatter3.png")

## ----eval = FALSE-------------------------------------------------------------
#  library(gapminder)
#  easylabel(gapminder[gapminder$year == 2007, ], x = 'gdpPercap', y = 'lifeExp',
#            col = 'continent', labs = 'country',
#            size = 'pop',
#            alpha = 0.6,
#            zeroline = FALSE)

## ----bubble, echo = FALSE, message=FALSE, fig.align='center', out.width='80%', out.extra='style="border: 0;"'----
knitr::include_graphics("bubble.png")

## ----eval = FALSE-------------------------------------------------------------
#  easylabel(xymatrix, x = 'x', y = 'y', col = 'col',
#            colScheme = c('darkgrey', 'green3', 'gold3', 'blue'),
#            xlab = expression("log"[2] ~ " fold change post-Rituximab"),
#            ylab = expression("log"[2] ~ " fold change post-Tocilizumab"),
#            showgrid = TRUE)

## ----plot1, echo = FALSE, message=FALSE, fig.align='center', out.width='80%', out.extra='style="border: 0;"'----
knitr::include_graphics("plot1.png")

## ----eval = FALSE-------------------------------------------------------------
#  # example axis ticks
#  if(!require(gapminder)) {install.packages("gapminder")}
#  library(gapminder)
#  easylabel(gapminder[gapminder$year == 2007, ], x = 'gdpPercap', y = 'lifeExp',
#            col = 'continent', shape = 'continent',
#            size = 10,
#            labs = 'country',
#            zeroline = FALSE,
#            xaxp = c(0, 50000, 10),
#            yaxp = c(40, 85, 9),
#            showgrid = TRUE)

## ----eval = FALSE-------------------------------------------------------------
#  # example adding a trend line using panel.last
#  fit <- lm(xymatrix$y ~ xymatrix$x)
#  easylabel(xymatrix, x = 'x', y = 'y', col = 'col',
#            colScheme = c('darkgrey', 'green3', 'gold3', 'blue'),
#            xlab = expression("log"[2] ~ " fold change post-Rituximab"),
#            ylab = expression("log"[2] ~ " fold change post-Tocilizumab"),
#            showgrid = TRUE, fullGeneNames = TRUE,
#            panel.last = {
#              abline(fit, col='red')
#            })

## -----------------------------------------------------------------------------
# Example DESeq2 object
head(volc1)

# Example limma object
head(volc2)

## ----eval = FALSE-------------------------------------------------------------
#  # Typical DESeq2 workflow
#  volc1 <- results(dds)
#  easyVolcano(volc1, useQ = TRUE)

## ----eval = FALSE-------------------------------------------------------------
#  # Manually specify columns
#  easyVolcano(volc1, x = 'log2FoldChange', y = 'pvalue', padj = 'padj')
#  
#  # To use nominal unadjusted p value for significant genes
#  easyVolcano(volc1, x = 'log2FoldChange', y = 'pvalue')

## ----eval = FALSE-------------------------------------------------------------
#  easyMAplot(volc2, useQ = TRUE)

## ----easyMAplot1, echo = FALSE, message=FALSE, fig.align='center', out.width='80%', out.extra='style="border: 0;"'----
knitr::include_graphics("MAplot1.png")

## ----eval = FALSE-------------------------------------------------------------
#  BiocManager::install("AnnotationDbi")
#  BiocManager::install("org.Hs.eg.db")
#  easyVolcano(volc1, useQ = TRUE, fullGeneNames = TRUE)

## ----table1, echo = FALSE, message=FALSE, fig.align='center', out.width='100%', out.extra='style="border: 0;"'----
knitr::include_graphics("table1.png")

## ----eval = FALSE-------------------------------------------------------------
#  BiocManager::install("org.Mm.eg.db")
#  library(org.Mm.eg.db)
#  easyVolcano(volc1,
#            fullGeneNames = TRUE,
#            AnnotationDb = org.Mm.eg.db)

## ----eval = FALSE-------------------------------------------------------------
#  easyVolcano(volc2,
#              useQ = TRUE,
#              fccut = 0,
#              main = "Volcano title")

## ----plot7, echo = FALSE, message=FALSE, fig.align='center', out.width='80%', out.extra='style="border: 0;"'----
knitr::include_graphics("plot7.png")

## ----eval = FALSE-------------------------------------------------------------
#  easyVolcano(volc1,
#              useQ = TRUE, fullGeneNames = TRUE,
#              Ltitle = expression(symbol("\254") ~ "Non-responder"),
#              Rtitle = expression("Responder" ~ symbol("\256")),
#              LRtitle_side = 1,
#              cex.lab = 0.9, cex.axis = 0.8,
#              fccut = c(1, 2), fdrcutoff = 0.2,
#              ylim = c(0, 6), xlim = c(-5, 5),
#              colScheme = c('darkgrey', 'blue', 'orange', 'red'))

## ----plot3, echo = FALSE, message=FALSE, fig.align='center', out.width='80%', out.extra='style="border: 0;"'----
knitr::include_graphics("plot3.png")

## ----eval = FALSE-------------------------------------------------------------
#  easyVolcano(volc1, y = 'pvalue', padj = 'pvalue', fdrcutoff = 0.01)

## ----eval = FALSE-------------------------------------------------------------
#  colScheme <- c('darkgrey', 'blue', 'lightblue', 'orange', 'red')
#  easyVolcano(volc1, fccut = 1, fdrcutoff = 0.2,
#              ylim = c(0, 6), xlim = c(-5, 5),
#              colScheme = colScheme,
#              vline = c(-1, 1))

## ----plot4, echo = FALSE, message=FALSE, fig.align='center', out.width='80%', out.extra='style="border: 0;"'----
knitr::include_graphics("plot4.png")

## ----eval = FALSE-------------------------------------------------------------
#  library(RColorBrewer)
#  colScheme <- c('darkgrey', brewer.pal(9, 'RdYlBu')[c(9:7, 3:1)])
#  easyVolcano(volc1, fccut = c(1, 2), fdrcutoff = 0.2,
#              ylim = c(0, 6), xlim = c(-5, 5),
#              colScheme = colScheme,
#              alpha = 0.75, outline_col = NA)

## ----plot5, echo = FALSE, message=FALSE, fig.align='center', out.width='80%', out.extra='style="border: 0;"'----
knitr::include_graphics("plot5.png")

## ----eval = FALSE-------------------------------------------------------------
#  colScheme <- c('darkgrey', brewer.pal(9, 'RdYlBu')[c(7:9, 3:1)])
#  easyMAplot(volc2, fdrcutoff = c(0.05, 0.01, 0.001), size = 6, useQ = TRUE,
#         alpha = 0.75, outline_col = NA,
#         colScheme = colScheme)

## ----easyMAplot2, echo = FALSE, message=FALSE, fig.align='center', out.width='80%', out.extra='style="border: 0;"'----
knitr::include_graphics("MAplot2.png")

## ----eval = FALSE-------------------------------------------------------------
#  easyVolcano(volc1, labelDir = "horiz")
#  easyMAplot(volc1, labelDir = "vert")

## ----labdirs1, echo = FALSE, message=FALSE, fig.show='hold', out.width='48%', out.extra='style="border: 0;"'----
knitr::include_graphics(c("labdir_horiz.png", "labdir_vert.png"))

## ----eval = FALSE-------------------------------------------------------------
#  # Simple outlines
#  easyVolcano(volc2, useQ = TRUE, fccut = 0,
#              rectangles = TRUE)
#  
#  # Red outlined labels, rounded ends
#  easyVolcano(volc2, useQ = TRUE, fullGeneNames = TRUE,
#              rectangles = TRUE,
#              padding = 5,
#              border_radius = 10,
#              line_col = 'red',
#              border_col = 'red',
#              text_col = 'red')

## ----labrect2, echo = FALSE, message=FALSE, fig.show='hold', out.width='80%', out.extra='style="border: 0;"'----
knitr::include_graphics("rect_red_outline.png")

## ----eval = FALSE-------------------------------------------------------------
#  # Transparent grey rectangles, rounded ends
#  easyMAplot(volc2, fdrcut = c(0.05, 0.01, 0.001), size = 6, useQ = TRUE,
#         alpha = 0.75, outline_col = NA,
#         fullGeneNames = TRUE,
#         colScheme = c('darkgrey', brewer.pal(9, 'RdYlBu')[c(7:9, 3:1)]),
#         rectangles = TRUE,
#         border_col = NA,
#         padding = 5,
#         rect_col = adjustcolor('grey', alpha.f = 0.6),
#         border_radius = 20)
#  
#  # White text on black background, no rounding
#  easyVolcano(volc2, useQ = TRUE, fullGeneNames = TRUE,
#              fccut = 0,
#              rectangles = TRUE,
#              padding = 4,
#              border_radius = 0,
#              rect_col = 'black',
#              text_col = 'white',
#              border_col = NA)

## ----labrect4, echo = FALSE, message=FALSE, fig.show='hold', out.width='80%', out.extra='style="border: 0;"'----
knitr::include_graphics("rect_invert.png")

## ----eval = FALSE-------------------------------------------------------------
#  # Manhattan plot using SLE GWAS data from Bentham et al 2015
#  # FTP download full summary statistics from
#  # https://www.ebi.ac.uk/gwas/studies/GCST003156
#  library(data.table)
#  SLE_gwas <- fread('../bentham_2015_26502338_sle_efo0002690_1_gwas.sumstats.tsv')
#  # Simple Manhattan plot
#  easyManhattan(SLE_gwas)
#  
#  # 4 colours for chromosomes
#  easyManhattan(SLE_gwas, chromCols = RColorBrewer::brewer.pal(4, 'Paired'))

## ----manhat, echo = FALSE, message=FALSE, fig.show='hold', out.width='80%', out.extra='style="border: 0;"'----
knitr::include_graphics("manhattan.png")

## ----eval = FALSE-------------------------------------------------------------
#  # Examples
#  # 12 colours for chromosomes, no separate colour for significant points
#  easyManhattan(SLE_gwas, chromCols = RColorBrewer::brewer.pal(12, 'Paired'),
#                sigCol = NA)
#  
#  # Label peaks automatically, add horizontal gridlines
#  easyManhattan(SLE_gwas, npeaks = 20, showgrid = "y")
#  
#  # Vertical version
#  easyManhattan(SLE_gwas, transpose = TRUE, height = 1000, width = 600)
#  
#  # Chr1 only
#  easyManhattan(SLE_gwas[SLE_gwas$chrom == 1, ])
#  
#  # Add symbols for the significant SNPs
#  easyManhattan(SLE_gwas, chromCols = RColorBrewer::brewer.pal(4, 'Paired'),
#                size = 8,
#                shape = 'col',
#                shapeScheme = c(rep(20, 4), 18))

