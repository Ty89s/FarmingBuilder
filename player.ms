player = {}
player.name = ""
player.gender = ""
player.age = 0
player.height = 0
player.race = ""

// Point section.
player.attackPoints = 1
player.defencePoints = 1
player.skillPoints = 0

// Player angles.
player.faceing = "south"

// Player current wallet cash.
player.cash = 1000
// Player current bank ballance.
player.bank = 0

// Text display set to white.
text.color = color.white
// User input for stats.
new_name = input("Enter Your Name Here: ")
new_race = input("Race: Human?, Goblin?, Dwarf? ")
new_gender = input("Gender: Male? or Female? ")
new_height = input("Height in feet? ")
new_age = input("What is your Age? ")


player.name = new_name
player.gender = new_gender
player.race = new_race
player.height = new_height
player.age = new_age

//player.cash = new_cash
print "         " 
print " Name:   " + player.name 
print " Race:   " + player.race
print " Gender: " + player.gender
print " Age:    " + player.age
print " Height: " + player.height
print "         " 
print "         " 
print "Wallet:  " + player.cash    
