function calcMortgage() {
    var monthlyRate = $("#monthRate").val() / 100 / 12;
    var downPayment = $("#downPayment").val();
    var mortgageAmt = downPayment === "" ? $("#mortgageAmount").val() : $("#mortgageAmount").val() - downPayment;
    var propertyTax = $("#propertyTax").val() / 100;
    propertyTax = propertyTax !== 0 ? $("#mortgageAmount").val() * propertyTax : 0;
    var mortgagePeriod = $("#mortgagePeriod").val().split(' ')[0] * 12;
    var monthlyPay = 0;
    monthlyPay = monthlyRate * Math.pow((1 + monthlyRate), mortgagePeriod) / (Math.pow((1 + monthlyRate), mortgagePeriod) - 1) * mortgageAmt;
    $("#monthlyPayment").html("<strong>Monthly payment:</strong> $" + (monthlyPay + (propertyTax / 12)).toFixed(2));
    $("#totalPayment").html("<strong>Total payment:</strong> $" + (monthlyPay * mortgagePeriod).toFixed(2));
    $("#monthTax").html("Monthly property payment(included in Monthly payment): $" + propertyTax / 12);

    return false;
}

function skipHeader() {
    $('html, body').animate({ scrollTop: 800 }, 2000);
    return false;
}

function initMap() {
    var office = { lat: 43.597605, lng: -79.66231 };

    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 15,
        center: office
    });
    var contentString = "<p><strong>Right At Home Realty Inc.,</strong" +
        "Brokerage</p><p>480 Eglinton Ave West 30</p><p>Mississauga, Ontario L5R0G2</p><p>Office: (905) - 565 - 9200</p>";
    var infowindow = new google.maps.InfoWindow({
        content: contentString
    });

    var marker = new google.maps.Marker({
        position: office,
        map: map,
        title: 'At Home Realty Inc.'
    });
    marker.addListener('click', function () {
        infowindow.open(map, marker);
    });
}
initMap();