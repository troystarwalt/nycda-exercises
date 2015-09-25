// order copied from the whiteboard, no hating
// one way to create objects

var people = [
  { name: "Alec Stone"
  , repo: "https://github.com/AlecStone"
  , slackname:"" }
, { name: "Ehtesh Choudhury"
  , repo: "https://github.com/shurane"
  , slackname:""  }
, { name: "Stephanie Mathison"
  , repo: "https://github.com/srmathison"
  , slackname:""  }
, { name: "Tristan Villanueva"
  , repo: "https://github.com/BanzaiBlazer"
  , slackname:""  }
, { name: "Joel Santos"
  , repo: "https://github.com/joelsantos41"
  , slackname:""  }
, { name: "Ade Akintide"
  , repo: "https://github.com/adeshyne"
  , slackname:""  }
, { name: "Troy Starwalt"
  , repo: "https://github.com/shurane/"
  , slackname:""  }
, { name: "Taimur 'Tim' Alamgir"
  , repo: "https://github.com/talamgir"
  , slackname:""  }
, { name: "Jeremy Andaya"
  , repo: "https://github.com/jeremyandaya"
  , slackname:""  }
, { name: "Christine Chan"
  , repo: "https://github.com/cadence-0915/"
  , slackname:""  }
, { name: "Paula Murphy"
  , repo: "https://github.com/pmmurphy"
  , slackname:""  }
, { name: "Michael Gabay"
  , repo: "https://github.com/akatriel"
  , slackname:""  }
, { name: "Norvinder Singh"
  , repo: ""
  , slackname:""  }
, { name: "Justin Bardliving"
  , repo: "https://github.com/jbl"
  , slackname:"" }
]

var listElement = $("#list");
for (var i=0; i<people.length; i++){
    var element = "<li>" + people[i].name + "⇒" + people[i].repo +"</li>";
    listElement.append(element);
}
