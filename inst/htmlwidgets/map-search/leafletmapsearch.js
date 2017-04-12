 LeafletWidget.methods.leafletMapSearch = function() {
	 
  // Create a basic Leaflet map (with URL hash enabled)
  // var map = L.map('map').setView([-41,172.3], 6);
  // L.tileLayer('http://{s}.tiles.mapbox.com/v3/jcheng.map-5ebohr46/{z}/{x}/{y}.png').addTo(this);
     
	// var hash = new L.Hash(this);
     
  // Add geocoding plugin
	var options = { expanded: false };
	var geocoder = L.control.geocoder('search-MKZrG6M',options).addTo(this);
	 
	// var geocoder = new L.control.geocoder('search-MKZrG6M')
	// geocoder.addTo(this);
  // this.geocoder = geocoder;
  
 };