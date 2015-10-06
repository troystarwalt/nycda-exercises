
console.log(presidents.length);
function PresidentHeader(){
    var trElement = document.createElement("tr");
    trElement.innerHTML = "<th>Number</th><th>President</th><th>Birth Year</th><th>Death Year</th>";
    return trElement;
}
function PresidentRow(pres){
    // similar to string interpolation in ruby
    // https://lodash.com/docs#template
    var template = _.template("<td><%= number %></td>" +
                              "<td><%= president %></td>" +
                              "<td><%= birth_year %></td>" +
                              "<td><%= death_year %></td>");
    var trElement = document.createElement("tr");
    trElement.innerHTML = template(pres);
    return trElement;
}

document.querySelector("#left thead").appendChild(PresidentHeader());
document.querySelector("#right thead").appendChild(PresidentHeader());
var leftTable = document.querySelector("#left tbody");
var rightTable = document.querySelector("#right tbody");

var democrats = _.filter(presidents, function(pres) { return pres.party === "Democratic"; });
for (var i = 0; i < democrats.length; i++){
    leftTable.appendChild(PresidentRow(democrats[i]));
    // console.log(democrats[i].number, democrats[i].president, democrats[i].birth_year, democrats[i].death_year);
}

var republicans = _.filter(presidents, function(pres) { return pres.party === "Republican"; });
for (var i = 0; i < republicans.length; i++){
    rightTable.appendChild(PresidentRow(republicans[i]));
    // console.log(republicans[i].number, republicans[i].president, republicans[i].birth_year, republicans[i].death_year);
}

