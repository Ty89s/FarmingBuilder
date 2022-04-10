Ty89s = new sprite
Ty89s.image = file.loadImage("/usr/Assets/player.png")
                              //location of the image.

Ty89s.col = 0; player.row = 0 //column and row placement for player.
display(4).sprites.push Ty89s // displaying player on the screen.


Ty89s.name = "Ty89s "   // this is the name of the current Ty89s .
Ty89s.facing = SOUTH   // the Ty89s  will be south facing on the map.
Ty89s.walking = false  // Ty89s  is currently stationairy.
Ty89s.carrying = null  // Ty89s  is not carrying anything.
Ty89s.walkingSpeed = 30       // the current speed the Ty89s  can go.
Ty89s.runSpeed = 0  // (to be desided) this is how fast the 
                     // Ty89s  can run.
Ty89s.maxHealth = 100 //the max current health level.
Ty89s.health = 100 //current health leval.

Ty89s.attack = 3 // how much the Ty89s  can hit without tools/weapons.
Ty89s.deffence = 5  // how much the Ty89s  can take without armour.
//Ty89s.strength = ""              (to be desided)
//Ty89s.stamina = ""               (to be desided)
//Ty89s.hunger = ""               (to be desided)
//Ty89s.urinate = null            (to be desided)
//Ty89s.poop = null               (to be desided)
//Ty89s.eat = null                (to be desided)
Ty89s.skills = null // each skill the Ty89s  learns.
Ty89s.armour = null // armour will deside this.
 
Ty89s.wallet = 0 // this is how much money you have.
Ty89s.shop = null // this is where you purchase items/weapons/tools.

Ty89s.smallInventory = null   // 12 slots.
Ty89s.mediumInventory = null  // 18 slots.
Ty89s.smallBackpack = null    // (to be desided)
Ty89s.backpack = null         // (to be desided)
Ty89s.largeBackpack = null    // (to be desided)
Ty89s.quickBar = null // 9 slots  (this is what is needed in the 
                                 // Ty89s s hands at the requierd 
                                 // at the time.)