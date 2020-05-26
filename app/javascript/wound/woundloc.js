//standard colors for maphilight
$.fn.maphilight.defaults = {
    fill: true,
    fillColor: 'ff0000',
    fillOpacity: 0.6,
    stroke: true,
    strokeColor: '28a745',
    strokeOpacity: 1,
    strokeWidth: 1,
    fade: true,
    alwaysOn: false,
    neverOn: false,
    groupBy: false,
    wrapClass: true,
    shadow: false,
    shadowX: 0,
    shadowY: 0,
    shadowRadius: 6,
    shadowColor: '000000',
    shadowOpacity: 0.8,
    shadowPosition: 'outside',
    shadowFrom: false
};


//initalize maphilight on the map
$(function () {
    $('.map').maphilight();
});

