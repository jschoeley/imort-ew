# Init ----------------------------------------------------------

# data sources
library(hmdget)     # download human mortality database data (github)
# visualization
library(ggplot2)    # 2d plotting framework
library(scales)     # different scales, RGB-alpha functions
library(rcpal)      # some colour scales (github)
library(ggtheme)    # flexible minimal ggplot theme (github)
library(tikzDevice) # tikz backend for plotting
# data transformation
library(tidyr)      # tidy data, convert between long and wide
library(dplyr)      # data verbs, operations on subsets of data

# keep knitr calm
knitr::opts_chunk$set(cache = FALSE, error = FALSE,
                      message = FALSE, warning = FALSE,
                      tidy = FALSE)

# r options
options(device = "tikz",
        tikzDefaultEngine = "pdftex")
