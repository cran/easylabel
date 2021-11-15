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

## ---- eval=FALSE--------------------------------------------------------------
#  data(mtcars)
#  
#  p1 <- easylabel(mtcars, x = 'mpg', y = 'wt', col = 'cyl',
#                  startLabels = rownames(mtcars)[mtcars$gear == 5],
#                  output_shiny = FALSE) %>%
#    layout(yaxis = list(zeroline = FALSE))
#  
#  p2 <- easylabel(mtcars, x = 'mpg', y = 'drat', col = 'vs',
#                  colScheme = c("dodgerblue", "orange"),
#                  startLabels = rownames(mtcars)[mtcars$gear == 5],
#                  output_shiny = FALSE) %>%
#    layout(xaxis = list(zeroline = FALSE))
#  
#  plotly::subplot(p1, p2, nrows = 2, shareY = TRUE, titleX = TRUE, margin = 0.05)

## ----plotlyOutput, echo = FALSE, message=FALSE, fig.align='center', out.width='80%', out.extra='style="border: 0;"'----
knitr::include_graphics("plotly_output.png")

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
#              fullGeneNames = TRUE,
#              AnnotationDb = org.Mm.eg.db)

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
#             alpha = 0.75, outline_col = NA,
#             colScheme = colScheme)

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
#             alpha = 0.75, outline_col = NA,
#             fullGeneNames = TRUE,
#             colScheme = c('darkgrey', brewer.pal(9, 'RdYlBu')[c(7:9, 3:1)]),
#             rectangles = TRUE,
#             border_col = NA,
#             padding = 5,
#             rect_col = adjustcolor('grey', alpha.f = 0.6),
#             border_radius = 20)
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
#  # Label text and label lines match point colours
#  easylabel(gapminder[gapminder$year == 2007, ], x = 'gdpPercap', y = 'lifeExp',
#            col = 'continent', labs = 'country',
#            size = 'pop',
#            alpha = 0.6,
#            line_col = "match", text_col = "match",
#            zeroline = FALSE, showgrid = "y")

## ----labmatch1, echo = FALSE, message=FALSE, fig.show='hold', out.width='80%', out.extra='style="border: 0;"'----
knitr::include_graphics("match1.png")

## ----eval = FALSE-------------------------------------------------------------
#  # Rectangle fill colour and label line match point colours, rounded rectangles
#  easylabel(gapminder[gapminder$year == 2007, ], x = 'gdpPercap', y = 'lifeExp',
#            col = 'continent', labs = 'country',
#            size = 'pop',
#            alpha = 0.6,
#            line_col = "match", text_col = "white",
#            rectangles = TRUE, border_col = NA,
#            rect_col = "match", border_radius = 20, padding = 5,
#            zeroline = FALSE, showgrid = "y")

## ----labmatch2, echo = FALSE, message=FALSE, fig.show='hold', out.width='80%', out.extra='style="border: 0;"'----
knitr::include_graphics("match2.png")

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

## ---- eval=FALSE--------------------------------------------------------------
#  # Create a locus plot over one chromosomal region
#  library(plotly)
#  p1 = easyManhattan(SLE_gwas[SLE_gwas$chrom == 6 &
#                                SLE_gwas$pos >= 28e6 &
#                                SLE_gwas$pos <= 34e6, ],
#                     output_shiny = FALSE, labs = "rsid",
#                     startLabels=c("rs115466242", "rs2853999"),
#                     npeaks = 3)
#  
#  
#  
#  # To annotate genes in that region
#  source("https://raw.githubusercontent.com/KatrionaGoldmann/BioOutputs/master/R/bio_gene_locations.R")
#  library(ggbio)
#  library(gginnards)
#  library(ggrepel)
#  if (! "EnsDb.Hsapiens.v75" %in% rownames(installed.packages()))
#    BiocManager::install("EnsDb.Hsapiens.v75")
#  
#  p2 = bio_gene_locations(6, c(28e6, 34e6),
#                          subset_genes = c('HLA-F', 'HLA-G', 'HLA-A', 'HLA-E',
#                                           'HLA-C', 'HLA-B', 'HLA-DRA',
#                                           'HLA-DRB5', 'HLA-DRB1', 'HLA-DQA1',
#                                           'HLA-DQB1', 'HLA-DQA2', 'HLA-DQB2',
#                                           'HLA-DOB', 'HLA-DMB', 'HLA-DMA',
#                                           'HLA-DOA', 'HLA-DPA1', 'HLA-DPB1'))
#  
#  plotly::subplot(p1, p2$plotly_location %>% layout(yaxis=list(range=c(0.25, 2))),
#                  shareY = T, titleX = T, margin=0.05,
#                  nrows=2, heights=c(0.7, 0.3))
#  

## ----locusOutput, echo = FALSE, message=FALSE, fig.align='center', out.width='80%', out.extra='style="border: 0;"'----
knitr::include_graphics("locus.png")

