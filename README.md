# giopt

A simple utility for Gini index calculation.

## Installation

You can install the development version from GitHub:

```r
# install.packages("devtools")
devtools::install_github("yourusername/gi")
```

## Usage


### Gini Index Calculation

```r
library(giopt)

# Calculate Gini index for a vector
vec <- c(1, 2, 3, 4, 5)
gini_value <- gini_index(vec)
```

## Functions
- `gini_index()`: Calculates the Gini index for a numeric vector

## License

MIT