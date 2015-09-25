function Person(name, repo, slackname){
  this.name = name;
  this.repo = repo;
  this.slackname = slackname;
  this.profile = function() { return this.name + " lives at " + this.repo; }
  this.sound = function() { return "Hi, my name is " + this.name; }
}

function Cat(name, description, zipcode){
  this.name = name;
  this.description = description;
  this.zipcode = zipcode;
  this.sound = function() { return "rawr"};
}

function Dog(name, description, zipcode){
  this.name = name;
  this.description = description;
  this.zipcode = zipcode;
  this.sound = function() { return "ruff"};
}

// order copied from the whiteboard, no hating
// one way to create objects
var things = [ new Person("Alec Stone", "https://github.com/AlecStone", "")
             , new Cat("Baby Kitty", "tabby", 11237)
             , new Person("Ehtesh Choudhury", "https://github.com/shurane", "")
             , new Dog("Sasha", "hay chihuahua mix -- rescue style", 07042)
             , new Person("Stephanie Mathison", "https://github.com/srmathison", "")
             , new Dog("Natalia", "dachshund that yips a lot", 11105)
             , new Person("Tristan Villanueva", "https://github.com/BanzaiBlazer", "")
             , new Cat("Heli 'Chopper' Copter", "fat", 10009)
             , new Person("Joel Santos", "https://github.com/joelsantos41", "")
             , new Cat("Mishu", "black with gray stripes", 10038)
             ];

var people = things;

for (var i=0; i < things.length; i++){
  // console.log(things[i]);
  // if(things[i].__proto__ != (new Person()).__proto__){
    console.log(things[i].name + " says... " + things[i].sound());
  // }
}