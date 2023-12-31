var myCenter = new google.maps.LatLng(15.975437487553712, 108.25236572370264);
function initialize() {
    var mapProp = {
        center: myCenter,
        scrollwheel: false,
        zoom: 16,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
    };
    var map = new google.maps.Map(
        document.getElementById("contact-map"),
        mapProp
    );
    var marker = new google.maps.Marker({
        position: myCenter,
        map: map,
    });

    var styles = [
        {
            stylers: [
                {
                    hue: "#baf4c4",
                },
                {
                    saturation: 10,
                },
            ],
        },
        {
            featureType: "water",
            stylers: [
                {
                    color: "#effefd",
                },
            ],
        },
        {
            featureType: "all",
            elementType: "labels",
            stylers: [
                {
                    visibility: "off",
                },
            ],
        },
        {
            featureType: "administrative",
            elementType: "labels",
            stylers: [
                {
                    visibility: "on",
                },
            ],
        },
        {
            featureType: "road",
            elementType: "all",
            stylers: [
                {
                    visibility: "off",
                },
            ],
        },
        {
            featureType: "transit",
            elementType: "all",
            stylers: [
                {
                    visibility: "off",
                },
            ],
        },
    ];

    map.setOptions({ styles: styles });
    marker.setMap(map);
}
google.maps.event.addDomListener(window, "load", initialize);
