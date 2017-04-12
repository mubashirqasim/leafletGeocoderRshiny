leafletSearchDependenciesMapSearch <- function() {
  list(
    htmltools::htmlDependency(
      "leafletmapsearch",
      "1.3.8",
      system.file("htmlwidgets/map-search/", package = "leafletGeocoderRshiny"),
      script = c("leaflet-geocoder-mapzen.min.js",
                 "leaflet-hash.min.js","leafletmapsearch.js"),
      stylesheet=c("leaflet-geocoder-mapzen.css")

    ))
}

#' Add a Mapzen geocoder search control to the map.
#'
#' @param map a map widget object
#' @examples
#' leaflet(data = quakes) %>%
#' addTiles() %>%
#'     leafletMapSearch()
#' @export

leafletMapSearch <- function(map) {
  map$dependencies <- c(map$dependencies, leafletSearchDependenciesMapSearch())
  invokeMethod(map, getMapData(map), 'leafletMapSearch')
}
