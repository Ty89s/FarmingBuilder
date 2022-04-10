env.importPaths = file.readLines("/usr/core/data/imports.conf")
character = {} 
character.name = ""   // this is the name of the current character.
character.direction = ""   // the character will be south facing on the map.
character.carrying = ""  // character is not carrying anything.
character.walkingSpeed = ""       // the current speed the character can go.
character.runSpeed = ""  // (to be desided) this is how fast the 
// character can run.
character.maxHealth = "" //the max current health level.
character.health = "" //current health leval.
character.attack = "" // how much the character can hit without tools/weapons.
character.deffence = ""  // how much the character can take without armour.
//character.strength = ""              (to be desided)
//character.stamina = ""               (to be desided)
//character.hunger = ""                (to be desided)
//character.urinate = ""            (to be desided)
//character.poop = ""               (to be desided)
//character.eat = ""                (to be desided)
character.skills = "" // each skill the character learns.
character.armour = "" // armour will deside this.
character.wallet = "" // this is how much money you have.
character.smallInventory = ""   // 12 slots.
character.mediumInventory = ""  // 18 slots.
character.smallBackpack = ""    // (to be desided)
character.backpack = ""         // (to be desided)
character.largeBackpack = ""    // (to be desided)
character.quickBar = "" // 9 slots  (this is what is needed in the 
// characters hands at the requierd 
// at the time.)
import "playerNames"
import "friends"
import "enemeys"
import "shopKeeper"
import "maintenancePerson"
import "animals"
import "fantasyCreatures"