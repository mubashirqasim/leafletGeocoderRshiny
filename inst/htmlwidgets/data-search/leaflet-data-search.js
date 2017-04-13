 LeafletWidget.methods.addDataSearchMarker = function(group, position, propertyName, initial) {
    if(this.search) {
    this.search.removeFrom( this );
    }
    var layer_group = this.layerManager.getLayerGroup(group, true);
    var search = new L.Control.Search({
           layer: layer_group,
           position: position,
           propertyName: 'label',
           circleLocation: false,
           markerLocation: true,
           initial: initial
      });
    this.addControl(search);
    this.search = search;
  };

