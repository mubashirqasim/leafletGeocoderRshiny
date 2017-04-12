# Leaflet Geo-coder for Rshiny
This html widget is built embed state of the art <a href="https://mapzen.com/" target="_blank"> Mapzen </a> geocoder on leaflet maps in your shinyapp.

## Installation
Github version can be installed by running the following:

```r
if (!require('devtools')) install.packages('devtools')
devtools::install_github('mubashirqasim/leafletGeocoderRshiny')
```

## Example
```r
library(leaflet)
library(leafletGeocoderRshiny)

leaflet(data = quakes) %>%
  addTiles() %>%
  leafletMapSearch()
```  

![capture](https://cloud.githubusercontent.com/assets/8086373/24949630/679cf568-1fc2-11e7-92fb-e66d3a2d7732.png)

## License
This package is licensed to you under the terms of the [GNU General Public
License](http://www.gnu.org/licenses/gpl.html) version 3 or later.
