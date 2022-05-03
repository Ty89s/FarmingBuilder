display(4).mode = displayMode.pixel
pdp = display(4)
grid = {}
grid.small = function
	//Outside Box
	gfx.drawRect 0, 0, 960, 640
	//14 Collums 
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
	// 9 Rows
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
grid.medium = function
	//Outside Box
	pdp.drawRect 0, 0, 960, 640
	//29 Collums 
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
	// 19 Rows
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
grid.small