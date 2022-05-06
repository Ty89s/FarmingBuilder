display(5).mode = displayMode.tile
// Charecter Class
Charecter = {}
Charecter = display(5)
//Charecter.clear 5
Charecter.name = ""
Charecter.race = ""
Charecter.height = ""
Charecter.waist = ""
Charecter.x = ""
Charecter.y = ""
Charecter.tileSet = ""
Charecter.tileSetTileSize = ""
Charecter.extent = ""
Charecter.setCell ""
Charecter.hp = ""
Charecter.sp = ""
Charecter.inventory = ""
Charecter.wallet = ""

// Charecter = Player Subclass

Player = new Charecter
Player= display(5)
Player.name = "Ty89s"
Player.race = "Human"
Player.height = "5ft 9inches"
Player.waist = "32inch"    //ALL LIES!!! LOL
Player.x = 0
Player.y = 0
Player.tileSet = file.loadImage("/usr/Assets/pixel.png")
Player.tileSetTileSize = 32
Player.extent = [1,1]  // columns, rows on screen
Player.setCell 0, 0, 9
Player.hp = 100
Player.sp = 0
Player.inventory = ""
Player.wallet = "$1000"

// Keyboard comands for Player.
while true
	if key.pressed("w") then
		Player.setCell Player.x, Player.y, 3 //pose walk north
		Player.y = Player.y + 1   
		Player.setCell Player.x, Player.y, 4 //pose walk north left leg forward
	else if key.pressed("s") then
		Player.setCell Player.x, Player.y, 9 // pose walk South
		Player.y = Player.y - 1
		Player.setCell Player.x, Player.y, 10 // pose walk South left leg forward
	else if key.pressed("a") then
		Player.setCell Player.x, Player.y, 6 // pose walk east
		Player.x = Player.x - 1
		Player.setCell Player.x, Player.y, 7  // pose walk east left leg forward
	else if key.pressed("d") then
		Player.setCell Player.x, Player.y, 0 // pose walk west
		Player.x = Player.x + 1
		Player.setCell Player.x, Player.y, 1 // pose walk west left leg forward
	end if
	not key.pressed("w")
	not key.pressed("a")
	not key.pressed("s")
	not key.pressed("d")
	
	yield
	//return
end while