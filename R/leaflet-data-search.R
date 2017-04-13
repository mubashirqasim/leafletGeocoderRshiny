leafletSearchDependenciesDataSearch <- function() {
  list(
    htmltools::htmlDependency(
      "leafletdatasearch",
      "1.3.8",
      system.file("htmlwidgets/data-search/", package = "leafletGeocoderRshiny"),
      script = c("leaflet-search.min.js",
                 "leaflet-data-search.js"),
      stylesheet = "leaflet-search.min.css"
    ))
}

#' Add a data search marker control to the map.
#'
#' @param map a map widget object
#' @param group a searchable group
#' @param position standard \href{http://leafletjs.com/reference.html#control-positions}{Leaflet control position options}.
#' @param propertyName property in marker.options(or feature.properties for
#'  vector layer) trough filter elements in layer
#' @param initial search elements only by initial text
#' @return modified map
#' @examples
#' data(quakes)
#' leaflet(data = quakes) %>%
#'     addTiles() %>%
#'     addMarkers(~long, ~lat, popup = ~as.character(mag),
#'                group = 'marker', label = ~as.character(mag)) %>%
#'     addDataSearchMarker('marker', position = 'topleft', propertyName = 'popup')
#' @export

addDataSearchMarker <- function(map,group,position="topright",propertyName='label',initial = FALSE) {
  map$dependencies <- c(map$dependencies, leafletSearchDependenciesDataSearch())
  invokeMethod(map,getMapData(map),'addDataSearchMarker',group,position,propertyName,initial) }



