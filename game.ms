////////////////////////////////////
// Clearing the text display.   //
////////////////////////////////
//text.clear
/////////////////////////////////////
//  Text display set to white.   //
/////////////////////////////////
text.color = color.white
/////////////////////////
// Imported files.   //
/////////////////////
import "listUtil"
/////////////////////////////////////////////
// This is the display setting section.   //
//////////////////////////////////////////
display(0).mode = displayMode.text //Sets display 0 as text mode.                          //
display(3).mode = displayMode.sprite
//display(4).mode = displayMode.pixel
display(5).mode = displayMode.tile 
///////////////////////////
text = display(0)       //  Text Info.
uidp = display(3)       //  Gui Info.
//pdp = display(4)      //  Pixel Info.
tdp = display(5)        //  Map Info

//////////////////////////////
//  Clases and Objects.   //
//////////////////////////
menu = {}
aop = {}
ui = {}
player = {}
grid = {}
inv = {}
/////////////////////////
//   Player Class.   //
/////////////////////
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
// Player current bank balance. 
player.bank = 0 
/////////////////////////////////
// inventory stats Section.  //
/////////////////////////////
//  Biodegradable fuel resources.
inv.coal = 0
inv.sticks = 0
inv.leaves = 0
// Liquids Resources.
inv.freshWater = 0
inv.SeaWater = 0
inv.oil = 0
// Gas Resouces.
inv.nitrogenGas = 0
inv.PropaneGas = 0
// Ores.
inv.ironOre = 0
inv.goldOre = 0
inv.dimondOre = 0
// Stones.
inv.mossStone = 0
inv.sandStone = 0
inv.cobbleStone = 0
// Basic Materials.
inv.stone = 0
inv.sand = 0
inv.dirt = 0
inv.clay = 0
// Bricks.
inv.bricks = 0
// Logs.
inv.logs = 0
//                PARTS SECTION.
// Wood Parts
inv.planks = 0
inv.timber = 0
// Iron parts.
inv.nails = 0
inv.screws = 0
inv.plates = 0
// Glass Parts.
inv.glass = 0
/////////////////////
//   MAIN MENU   //
/////////////////

menu.startButton = function
	start_b = new Sprite
	start_b.image = file.loadImage("/usr/Assets/StartMenu/start.png")
	start_b.x = 470; start_b.y = 430
	start_b.localBounds = new Bounds 
	start_b.localBounds.width = start_b.image.width 
	start_b.localBounds.height = start_b.image.height
	start_b.check_mouse = function
		if self.contains(mouse) and mouse.button then
			uidp.sprites.removeVal start_b
			player_setup
		end if
	end function
	uidp.sprites.push start_b
end function

menu.loadButton = function
	loadb = new Sprite
	loadb.image = file.loadImage("/usr/Assets/UiWidgets/inventoryicon.png")
	loadb.x = 470; loadb.y = 600
	loadb.localBounds = new Bounds 
	loadb.localBounds.width = loadb.image.width 
	loadb.localBounds.height = loadb.image.height
	loadb.check_mouse = function
		if self.contains(mouse) and mouse.button then
			player_load
		end if
	end function
end function
menu.saveButton = function
	saveb = new Sprite
	saveb.image = file.loadImage("/usr/Assets/UiWidgets/inventoryicon.png")
	saveb.x = 470; saveb.y = 600
	saveb.localBounds = new Bounds 
	saveb.localBounds.width = saveb.image.width 
	saveb.localBounds.height = saveb.image.height
	saveb.check_mouse = function
		if self.contains(mouse) and mouse.button then
			player_save
		end if
	end function
end function
menu.exitButton = function
	exitb = new Sprite
	exitb.image = file.loadImage("/usr/Assets/UiWidgets/inventoryicon.png")
	exitb.x = 470; exitb.y = 600
	exitb.localBounds = new Bounds 
	exitb.localBounds.width = exitb.image.width 
	exitb.localBounds.height = exitb.image.height
	exitb.check_mouse = function
		if self.contains(mouse) and mouse.button then
			exit
		end if
	end function
end function

player_setup = function
	new_name = input("Enter Your Name Here: ")
	new_race = input("Race: Human?, Goblin?, Dwarf? ")
	new_gender = input("Gender: Male? or Female? ")
	new_height = input("Height in feet? ")
	new_age = input("What is your Age? ")
	text.clear
	ui_load
end function

///////////////////////////////////////
//   This is the map tile sheet.   //
///////////////////////////////////
aop.map = function
	tdp.tileSet = file.loadImage("/usr/Assets/tile set.png")
	tdp.tileSetTileSize = 64
	tdp.extent = [15, 10]  // columns, rows on screen
	tdp.clear 4
	
	tdp.setCell 4, 0, 1
	tdp.setCell 5, 0, 1
	tdp.setCell 6, 0, 1
	tdp.setCell 5, 1, 1
	tdp.setCell 14, 9, 1
	tdp.setCell 13, 9, 1
	tdp.setCell 12, 9, 1
	tdp.setCell 14, 9, 1
end function
//////////////////////////////////////////////////////
//   This is the medium and small grid section.   //
//////////////////////////////////////////////////
grid.medium = function
	//Outside Box - rectangle.
	pdp.drawRect 0, 0, 960, 640
	//14 Collums - lines.
	pdp.line 64,0, 64,960
	pdp.line 128,0, 128,960
	pdp.line 192,0, 192,960
	pdp.line 256,0, 256,960
	pdp.line 320,0, 320,960
	pdp.line 384,0, 384,960
	pdp.line 448,0, 448,960
	pdp.line 512,0, 512,960
	pdp.line 576,0, 576,960
	pdp.line 640,0, 640,960
	pdp.line 704,0, 704,960
	pdp.line 768,0, 768,960
	pdp.line 832,0, 832,960
	pdp.line 896,0, 896,960
	// 9 Rows - lines.
	pdp.line 0,64, 960,64
	pdp.line 0,128, 960,128
	pdp.line 0,192, 960,192
	pdp.line 0,256, 960,256
	pdp.line 0,320, 960,320
	pdp.line 0,384, 960,384
	pdp.line 0,448, 960,448
	pdp.line 0,512, 960,512
	pdp.line 0,576, 960,576
end function
grid.small = function
	//Outside Box - rectangle.
	pdp.drawRect 0, 0, 960, 640
	//29 Collums - lines.
	pdp.line 32,0, 32,960
	pdp.line 64,0, 64,960
	pdp.line 96,0, 96,960
	pdp.line 128,0, 128,960
	pdp.line 160,0, 160,960
	pdp.line 192,0, 192,960
	pdp.line 224,0, 224,960
	pdp.line 256,0, 256,960
	pdp.line 288,0, 288,960
	pdp.line 320,0, 320,960
	pdp.line 352,0, 352,960
	pdp.line 384,0, 384,960
	pdp.line 416,0, 416,960
	pdp.line 448,0, 448,960
	pdp.line 480,0, 480,960
	pdp.line 512,0, 512,960
	pdp.line 544,0, 544,960
	pdp.line 576,0, 576,960
	pdp.line 608,0, 608,960
	pdp.line 640,0, 640,960
	pdp.line 672,0, 672,960
	pdp.line 704,0, 704,960
	pdp.line 736,0, 736,960
	pdp.line 768,0, 768,960
	pdp.line 800,0, 800,960
	pdp.line 832,0, 832,960
	pdp.line 864,0, 864,960
	pdp.line 896,0, 896,960
	pdp.line 928,0, 928,960
	// 19 Rows - lines.
	pdp.line 0,32, 960,32
	pdp.line 0,64, 960,64
	pdp.line 0,96, 960,96
	pdp.line 0,128, 960,128
	pdp.line 0,160, 960,160
	pdp.line 0,192, 960,192
	pdp.line 0,224, 960,224
	pdp.line 0,256, 960,256
	pdp.line 0,288, 960,288
	pdp.line 0,320, 960,320
	pdp.line 0,352, 960,352
	pdp.line 0,384, 960,384
	pdp.line 0,416, 960,416
	pdp.line 0,448, 960,448
	pdp.line 0,480, 960,480
	pdp.line 0,512, 960,512
	pdp.line 0,544, 960,544
	pdp.line 0,576, 960,576
	pdp.line 0,608, 960,608
end function


ui.main = function
	health_bar_200 = new Sprite
	health_bar_200.image = file.loadImage("/usr/Assets/UiWidgets/HealthBar/healthbar200.png")
	health_bar_200.x = 102; health_bar_200.y = 35
	uidp.sprites.push health_bar_200
	// This is the action bar section.
	xp_bar_0 = new Sprite
	xp_bar_0.image = file.loadImage("/usr/Assets/UiWidgets/XpBar/xpbar0.png")
	xp_bar_0.x = 480; xp_bar_0.y = 590
	uidp.sprites.push xp_bar_0
	// This is the Mini Map section.
	mini_map = new Sprite
	mini_map.image = file.loadImage("/usr/Assets/UiWidgets/minimap.png")
	mini_map.x = 860; mini_map.y = 95
	uidp.sprites.push mini_map
	// This is the action bar section.
	action_bar = new Sprite
	action_bar.image = file.loadImage("/usr/Assets/UiWidgets/quickbar.png")
	action_bar.x = 480; action_bar.y = 30
	uidp.sprites.push action_bar	
	
	// This is the resourses Bar Section.
	resourses_bar = new Sprite
	resourses_bar.image = file.loadImage("/usr/Assets/UiWidgets/resourcesbar.png")
	resourses_bar.x = 480; resourses_bar.y = 628
	uidp.sprites.push resourses_bar
	
	ttb = new Sprite
	ttb.image = file.loadImage("/usr/Assets/UiWidgets/techbutton.png")
	ttb.x = 70; ttb.y = 600
	ttb.localBounds = new Bounds 
	ttb.localBounds.width = ttb.image.width 
	ttb.localBounds.height = ttb.image.height
	ttb.check_mouse = function
		if self.contains(mouse) and mouse.button then
			ui.techtree
		end if
	end function
	uidp.sprites.push ttb
end function
ui.sb = function
	sb = new Sprite
	sb.image = file.loadImage("/usr/Assets/UiWidgets/settings.png")
	sb.x = 20; sb.y = 600
	sb.localBounds = new Bounds 
	sb.localBounds.width = sb.image.width 
	sb.localBounds.height = sb.image.height
	sb.check_mouse = function
		if self.contains(mouse) and mouse.button then
			ui.menu
		end if
	end function
	uidp.sprites.push sb
end function
ui.invb = function
	invb = new Sprite
	invb.image = file.loadImage("/usr/Assets/UiWidgets/inventoryicon.png")
	invb.x = 45; invb.y = 600
	invb.localBounds = new Bounds 
	invb.localBounds.width = invb.image.width 
	invb.localBounds.height = invb.image.height
	invb.check_mouse = function
		if self.contains(mouse) and mouse.button then
			ui.smallinv
		end if
	end function
	uidp.sprites.push invb
end function
ui.pstatsb = function
	pstatsb = new Sprite
	pstatsb.image = file.loadImage("/usr/Assets/UiWidgets/playerstats.png")
	pstatsb.x = 95; pstatsb.y = 600
	pstatsb.localBounds = new Bounds 
	pstatsb.localBounds.width = pstatsb.image.width 
	pstatsb.localBounds.height = pstatsb.image.height
	pstatsb.check_mouse = function
		if self.contains(mouse) and mouse.button then
			ui.pstats
		end if
	end function
	uidp.sprites.push pstatsb
end function
ui.stb = function
	stb = new Sprite
	stb.image = file.loadImage("/usr/Assets/UiWidgets/skillsbutton.png")
	stb.x = 120; stb.y = 600
	stb.localBounds = new Bounds 
	stb.localBounds.width = stb.image.width 
	stb.localBounds.height = stb.image.height
	stb.check_mouse = function
		if self.contains(mouse) and mouse.button then
			ui.st
		end if
	end function
	uidp.sprites.push stb
end function
ui.sgb = function
	sgb = new Sprite
	sgb.image = file.loadImage("/usr/Assets/UiWidgets/smallgridbutton.png")
	sgb.x = 740; sgb.y = 100
	sgb.localBounds = new Bounds 
	sgb.localBounds.width = sgb.image.width 
	sgb.localBounds.height = sgb.image.height
	sgb.check_mouse = function
		if self.contains(mouse) and mouse.button then
			grid.small
		end if
	end function
	uidp.sprites.push sgb
end function
ui.mgb = function
	mgb = new Sprite
	mgb.image = file.loadImage("/usr/Assets/UiWidgets/biggridbutton.png")
	mgb.x = 745; mgb.y = 70
	mgb.localBounds = new Bounds 
	mgb.localBounds.width = mgb.image.width 
	mgb.localBounds.height = mgb.image.height
	mgb.check_mouse = function
		if self.contains(mouse) and mouse.button then
			grid.medium
		end if
	end function
	uidp.sprites.push mgb
end function
ui.lb = function
	lb = new Sprite
	lb.image = file.loadImage("/usr/Assets/UiWidgets/lables.png")
	lb.x = 758; lb.y = 40
	lb.localBounds = new Bounds 
	lb.localBounds.width = lb.image.width 
	lb.localBounds.height = lb.image.height
	lb.check_mouse = function
		if self.contains(mouse) and mouse.button then
			ui.lables
		end if
	end function
	uidp.sprites.push lb	
end function							
ui.techtree = function
	tt = new Sprite
	tt.image = file.loadImage("/usr/Assets/UiWidgets/techtree.png")
	tt.x = 560; tt.y = 400
	uidp.sprites.push tt
	
	xbutton = new Sprite
	xbutton.image = file.loadImage("/usr/Assets/UiWidgets/xbutton.png")
	xbutton.x = 713; xbutton.y = 515
	xbutton.localBounds = new Bounds 
	xbutton.localBounds.width = xbutton.image.width 
	xbutton.localBounds.height = xbutton.image.height
	xbutton.check_mouse = function()
		if self.contains(mouse) and mouse.button then
			uidp.sprites.removeVal xbutton
			uidp.sprites.removeVal tt
		end if
	end function
	uidp.sprites.push xbutton 
end function
ui.smallinv = function
	// This is the iventory Section. Small, Medium sizes.
	smallinventory = new Sprite
	smallinventory.image = file.loadImage("/usr/Assets/UiWidgets/smallinventory.png")
	smallinventory.x = 200; smallinventory.y = 468
	uidp.sprites.push smallinventory
	
	xbutton = new Sprite
	xbutton.image = file.loadImage("/usr/Assets/UiWidgets/xbutton.png")
	xbutton.x = 309; xbutton.y = 515
	xbutton.localBounds = new Bounds 
	xbutton.localBounds.width = xbutton.image.width 
	xbutton.localBounds.height = xbutton.image.height
	xbutton.check_mouse = function()
		if self.contains(mouse) and mouse.button then
			uidp.sprites.removeVal xbutton
			uidp.sprites.removeVal smallinventory
		end if
	end function
	uidp.sprites.push xbutton
end function
ui.pstats = function
	playerstats = new Sprite
	playerstats.image = file.loadImage("/usr/Assets/UiWidgets/playerstat.png")
	playerstats.x = 560; playerstats.y = 380
	uidp.sprites.push playerstats
	
	xbutton = new Sprite
	xbutton.image = file.loadImage("/usr/Assets/UiWidgets/xbutton.png")
	xbutton.x = 740; xbutton.y = 520
	xbutton.localBounds = new Bounds 
	xbutton.localBounds.width = xbutton.image.width 
	xbutton.localBounds.height = xbutton.image.height
	xbutton.check_mouse = function()
		if self.contains(mouse) and mouse.button then
			uidp.sprites.removeVal xbutton
			uidp.sprites.removeVal playerstats
		end if
	end function
	uidp.sprites.push xbutton
end function
ui_load = function
	aop.map
	ui.main
	ui.lb
	ui.sgb
	ui.mgb
	ui.stb
	ui.pstatsb
	ui.sb
	ui.invb
end function
menu.startButton


while true
	yield
	for ui_item in uidp.sprites
		if not ui_item.hasIndex("check_mouse") then continue
		ui_item.check_mouse
	end for
end while
