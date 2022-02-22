pico-8 cartridge // http://www.pico-8.com
version 29
__lua__
function _init()
	p1={
	sp=1,
	x=56,
	y=104,
	w=16,
	h=16,
}
	p2={
	sp=5,
	x=56,
	y=104,
	w=16,
	h=16,
}	

end

function _update()
move()
end

function _draw()
cls()
map(0,0,0,0)
spawn()
end

-->8
--spawn+move

function spawn()
spr(p1.sp,p1.x,p1.y,2,2)
spr(p2.sp,p2.x,p2.y,2,2)
end

function move()
	if (btn(➡️,0)) p1.x+=1
	if (btn(⬅️,0)) p1.x-=1
//	if (btn(⬇️))
//	if (btnp(⬆️)) jump()
//	if (y<104) y+=4

	if (btn(➡️,1)) p2.x+=1
	if (btn(⬅️,1)) p2.x-=1

end

//function jump()
// if (y==104) y-=16
//end
__gfx__
00000000000000000000000033333333000000000000000000008000555555550000000000000000000000000000000000000000000080000000000000008000
00000000000080000000000033333333000000000000000000099000555555550000800000000000000080000000000000000000000990000000000000099000
00700700002222000000000033333333000000000000000000999900555555550022220000000000002222000000000000000000009999000000000000999900
000770000aaaaaa0000000003333333300000000000000000cccccc0555555550aaaaaa0000550000aaaaaa000000000000000000cccccc0000000000cccccc0
000770000af1f1a0000000003333333300000000000000000c1f1fc0555555550af1f1a0005650000af1f1a000000000000550000c1f1fc0000000000c1f1fc0
007007000affffa00000000033333333000000000000000000ffff00555555550affffa0056500000affffa0000000000005650000ffff000000000000ffff00
000000000a2ff2a000000000333333330000000000000000099ff990555555550a2ff2a0565000000a2ff2a00000000000005650099ff99000000000099ff990
000000000a2222a000000000333333330000000000000000f999999f555555550a2222a5650000000a2222a00000000000000565f999999f00000000f999999f
00000000ff2222fff0000000000000000000000000000000f999999f00000000ff2222f650000000ff2222fff555555000000056f999999f00000000f999999f
00000000002222000000000000000000000000000000000ff999999f00000000002222000000000000222200000000000000000f6999999f0055555ff999999f
00000000008898000000000000000000000000000000000004444440000000000088980000000000008898000000000000000000044444400000000004444440
00000000022222200000000000000000000000000000000004444440000000000222222000000000022222200000000000000000044444400000000004444440
00000000222222220000000000000000000000000000000004400440000000002222222200000000222222220000000000000000044004400000000004400440
0000000000f00f00000000000000000000000000000000000ff00ff00000000000f00f000000000000f00f0000000000000000000ff00ff0000000000ff00ff0
0000000000f00f00000000000000000000000000000000000ff00ff00000000000f00f000000000000f00f0000000000000000000ff00ff0000000000ff00ff0
0000000000e00e0000000000000000000000000000000000011001100000000000e00e000000000000e00e000000000000000000011001100000000001100110
__label__
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666
66666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666
66666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666
66666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666
66666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666
66666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666
66666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666
66666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66366666663666666636666666366666663666666636666666366666663666668636666666366666663666666636666666366666663666666636666666366666
66666366666663666666636666666366666663666666636666666366666663622666636666666366666663666666636666666366666663666666636666666366
66666666666666666666666666666666666666666666666666666666666666222266666666666666666666666666666666666666666666666666666666666666
6666666666666666666666666666666666666666666666666666666666666aaaaaa6666666666666666666666666666666666666666666666666666666666666
6666666666666666666666666666666666666666666666666666666666666af8f8a6666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666ffff66666666666666666666666666666666666666666666666666666666666666
666366366663663666636636666366366663663666636636666366366663f22ff22f663666636636666366366663663666636636666366366663663666636636
666666666666666666666666666666666666666666666666666666666666f222222ff66666666666666666666666666666666666666666666666666666666666
66366666663666666636666666366666663666666636666666366666663662222226f66666366666663666666636666666366666663666666636666666366666
66666366666663666666636666666366666663666666636666666366666662222226636666666366666663666666636666666366666663666666636666666366
66666666666666666666666666666666666666666666666666666666666664222246666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666664466446666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666664466446666666666666666666666666666666666666666666666666666666666666
6666666666666666666666666666666666666666666666666666666666666ff66ff6666666666666666666666666666666666666666666666666666666666666
66636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666
66666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666
66666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666
66666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636666366366663663666636636
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666
66666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366666663666666636666666366
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
66666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666666
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

__map__
0707070707070707070707070707070700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0707070707070707070707070707070700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0707070707070707070707070707070700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0707070707070707070707070707070700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0707070707070707070707070707070700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0707070707070707070707070707070700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0707070707070707070707070707070700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0707070707070707070707070707070700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0707070707070707070707070707070700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0707070707070707070707070707070700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0707070707070707070707070707070700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0707070707070707070707070707070700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0707070707070707070707070707070700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0707070707070707070707070707070700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0707070707070707070707070707070700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
