pico-8 cartridge // http://www.pico-8.com
version 29
__lua__
function _init()
x=60
y=60
end

function _update60()
	if (btn(➡️)) x+=1
	if (btn(⬅️)) x-=1
	if (btn(⬇️)) y+=1
	if (btn(⬆️)) y-=1
	 
end

function _draw()
cls()
map(0,0,0,0)
spr(1,x,y,2,2)

end

__gfx__
00000000000080000000000066666666000000000000800000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000220000000000066666666000000000009900000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700002222000000000066636636000000000099990000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000aaaaaa00000000066666666000000000cccccc000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000af8f8a00000000066366666000550000c8f8fc000000000000000000000000000000000000000000000000000000000000000000000000000000000
0070070000ffff0000000000666663660005650000ffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000f22ff22f000000006666666600005650099ff99000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000f222222ff00000006666666600000565f999999f00000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000002222220f00000000000000000000056f999999ff0000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000222222000000000000000000000000f69999990f0000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000042222400000000000000000000000000499994000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000044004400000000000000000000000000440044000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000044004400000000000000000000000000440044000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000ff00ff00000000000000000000000000ff00ff000000000000000000000000000000000000000000000000000000000000000000000000000000000
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
0303030303030303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
