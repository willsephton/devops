// Map initialize

var map = L.map( 'map', {
    center: [50.908560473551205, -1.4003797848264836],
    minZoom: 5,
    zoom: 9
});

L.tileLayer( 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.github.com/imaginalis">@imaginalis</a>',
    subdomains: ['a','b','c']
}).addTo( map );
var controlLoader = L.control.loader().addTo(map);
