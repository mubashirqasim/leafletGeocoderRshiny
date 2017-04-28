# Leaflet Geo-coder for Rshiny
This html widget is built embed the following on [leaflet maps](http://leafletjs.com/) in your shinyapp:
* State of the art [leaflet-geocoder](https://github.com/mapzen/leaflet-geocoder) by [Mapzen](https://mapzen.com/) using [Pelias](http://pelias.io/) package, see example [here](https://mapzen.github.io/leaflet-geocoder/#6/-40.330/175.979)
* [Leaflet Control Search](https://github.com/stefanocudini/leaflet-search)

## Installation
Github version can be installed by running the following:

```r
if (!require('devtools')) install.packages('devtools')
devtools::install_github('mubashirqasim/leafletGeocoderRshiny')
```

## Example
### [Leaflet + Mapzen Search geocoding plugin](https://github.com/mapzen/leaflet-geocoder)

```r
library(leaflet)
library(leafletGeocoderRshiny)

leaflet(data = quakes) %>%
  addTiles() %>%
  leafletMapSearch()
```  

![capture](https://cloud.githubusercontent.com/assets/8086373/24949630/679cf568-1fc2-11e7-92fb-e66d3a2d7732.png)

## [Leaflet + Leaflet Control Search](https://github.com/stefanocudini/leaflet-search)

```r
library(leaflet)
library(leafletGeocoderRshiny)

leaflet(data = quakes) %>%
  addTiles() %>%
  addCircleMarkers(~long, ~lat, popup = ~as.character(mag),
             group = 'marker', label = ~as.character(mag)) %>%
  addDataSearchMarker('marker', position = 'topleft', propertyName = 'popup')
```

![capture](https://cloud.githubusercontent.com/assets/8086373/24983519/9083dd74-203b-11e7-8c0a-42fea21f3e7e.png)

## License
This package is licensed to you under the terms of the [GNU General Public
License](http://www.gnu.org/licenses/gpl.html) version 3 or later.
