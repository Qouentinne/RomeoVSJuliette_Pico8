pico-8 cartridge // http://www.pico-8.com
version 29
__lua__
function _init()

	p1={
	sp=1,
	x=(mapx+15*8/3),
	y=100,
	w=8,
	h=16,
	flp=false,
	dx=0,
	dy=0,
	max_dx=2,
	max_dy=3,
	acc=0.2,
	boost=4,
	anim=0,
	running=false,
	jumping=false,
	falling=false,
	landed=false,
	player_key=0,
}

	p2={
	sp=3,
	x=(mapx+15*8/3)+(mapx+15*8/3),
	y=100,
	w=8,
	h=16,
	flp=false,
	dx=0,
	dy=0,
	max_dx=2,
	max_dy=3,
	acc=0.2,
	boost=4,
	anim=0,
	running=false,
	jumping=false,
	falling=false,
	landed=false,
	player_key=1,
}

gravity=0.3
friction=0.85



end




-->8
--spawn+move

function spawn()
//spr(p1.sp,p1.x,p1.y,2,2)
end

//function jump()
// if (y==104) y-=16
//end
mapx=0
mapy=0

function next_room()

if fget(mget(p1.x/8,p1.y/8),2) then
		mapx+=128
		p1.x+=35
	end
end
-->8
--update and draw
function _update60()
	player_update(p1)
	player_update(p2)
	//player_animate()
	next_room()
	--simple camera
end

function _draw()
	cls()
	map(0,0)
	camera(mapx,mapy)
	spr(p1.sp,p1.x,p1.y,1,2)
	spr(p2.sp,p2.x,p2.y,1,2)
	print(p1.x)
	print(p1.y)
	
end
-->8
--collisions

function collide_map(obj,aim,flag)
	--obj = table needs x,y,w,h
	
	local x=obj.x		local y=obj.y
	local w=obj.w		local h=obj.h
	
	local x1=0		local y1=0
	local x2=0		local y2=0
	
	if aim=="left" then
	x1=x-1		y1=y
	x2=x		y2=y+h-1
	
	elseif aim=="right" then
	x1=x+w		y1=y
	x2=x+w+1		y2=y+h-1
	
	elseif aim=="up" then
		x1=x+1		y1=y-1
		x2=x+w-1		y2=y
	
	elseif aim=="down" then
	x1=x		y1=y+h
	x2=x+w		y2=y+h
	end

	--pixels to tiles
	x1/=8		y1/=8
	x2/=8		y2/=8

	if fget(mget(x1,y1), flag)
	or fget(mget(x1,y2), flag)
	or fget(mget(x2,y1), flag)
	or fget(mget(x2,y2), flag) then
		return true
	else
		return false
	end
	
end
-->8
--player
function player_update(player)
	--physics
	player.dy+=gravity
	player.dx*=friction
	
	--controls
	
	if btn(⬅️,player.player_key) then
		player.dx-=player.acc
		player.running=true
		player.flp=true
	end
		
	if btn(➡️,player.player_key) then
		player.dx+=player.acc
		player.running=true
		player.flp=true
	end
		
	--jump
	if btnp(⬆️,player.player_key)
		and player.landed then
		player.dy-=player.boost
		player.landed=false
	end

	--check collision up and down
	if player.dy>0 then
			player.falling=true
			player.landed=false
			player.jumping=false
			
			if collide_map(player,"down",0) then
				player.landed=true
				player.falling=false
				player.dy=0
				player.y-=(player.y+player.h)%8
			end
				
			elseif player.dy<0 then
				player.jumping=true
				if collide_map(player,"up",0) then
					player.dy=0
			end

	end
	--check collision left and right
	
	if player.dx<0 then
		if collide_map(player,"left",1) then
			player.dx=0
		end
	
	elseif player.dx>0 then
		if collide_map(player,"right",1) then
			player.dx=0
		end
	end

		player.x+=player.dx
		player.y+=player.dy
end	

		
		 
__gfx__
00000000000000003333333300008000555555550000000000800000000000000000080000800000000000000000000000000000000000000000000000000000
00000000000080003b333b3300099000555555550000000008a80000000000000022220000990000000000000444444000000000000000000000000000000000
0070070000222200bbbbbbbb00999900555555550000000000800000000000000aaaaa0009999000000000000444444000000000000000000000000000000000
000770000aaaaaa00b000b000cccccc055555555080000000000000000000000aaf1f10f0cccccc000000000444c544400000000000000000000000000000000
000770000af1f1a00b000b000c1f1fc0555555558a80000000000000000000000affff0f0c1f1fc0000000004445c44400000000000000000000000000000000
007007000affffa00b000b0000ffff0055555555080000000000000000000000aa2ff2ff00ffff0000000000444cc44400000000000000000000000000000000
000000000a2ff2a00b000b00099ff990555555550000000000000000000080000f2222000f9ff9f0000000004444444400000000000000000000000000000000
000000000a2222a00b000b00f999999f5555555500000000000000000008a800ff2222000f9999f0000000004444444400000000000000000000000000000000
00000000ff2222ff00000000f999999f00000000000000000000000000000000008889000f9999f000000000444444a400000000000000000000000000000000
000000000022220000000000f999999f0000000000000000000000000000000002222200ff99fff0000000004444444400000000000000000000000000000000
00000000008898000000000004444440000000000000000000000000000000002222220044444400000000004444444400000000000000000000000000000000
000000000222222000000000044444400000000000000000000000000000000000f00f0044444400000000004454454400000000000000000000000000000000
0000000022222222000000000440044000000000000000000000000000000000effeff0044004400000000004454454400000000000000000000000000000000
0000000000f00f00000000000ff00ff00000000000000000000000000000000000000000ff00ff00000000004454454400000000000000000000000000000000
0000000000f00f00000000000ff00ff0000000000000000000000000000000000000000000000000000000004454454400000000000000000000000000000000
0000000000e00e000000000001100110000000000000000000000000000000000000000000000000000000004444444400000000000000000000000000000000
__label__
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000003333333300000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000003b333b3300000000000000000000000055555555
5555555500000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbb00000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000b000b0000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000b000b0000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000b000b0000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000b000b0000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000b000b0000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555333333333333333300000000000000000000000000000000000000000000000000000000000000000000000000000000333333333333333355555555
555555553b333b333b333b33000000000000000000000000000000000000000000000000000000000000000000000000000000003b333b333b333b3355555555
55555555bbbbbbbbbbbbbbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000bbbbbbbbbbbbbbbb55555555
555555550b000b000b000b00000000000000000000000000000000000000000000000000000000000000000000000000000000000b000b000b000b0055555555
555555550b000b000b000b00000000000000000000000000000000000000000000000000000000000000000000000000000000000b000b000b000b0055555555
555555550b000b000b000b00000000000000000000000000000000000000000000000000000000000000000000000000000000000b000b000b000b0055555555
555555550b000b000b000b00000000000000000000000000000000000000000000000000000000000000000000000000000000000b000b000b000b0055555555
555555550b000b000b000b00000000000000000000000000000000000000000000000000000000000000000000000000000000000b000b000b000b0055555555
55555555000000000000000000000000000000003333333333333333333333330000000033333333333333330000000000000000000000000000000055555555
55555555000000000000000000000000000000003b333b333b333b333b333b33000000003b333b333b333b330000000000000000000000000000000055555555
5555555500000000000000000000000000000000bbbbbbbbbbbbbbbbbbbbbbbb00000000bbbbbbbbbbbbbbbb0000000000000000000000000000000055555555
55555555000000000000000000000000000000000b000b000b000b000b000b00000000000b000b000b000b000000000000000000000000000000000055555555
55555555000000000000000000000000000000000b000b000b000b000b000b00000000000b000b000b000b000000000000000000000000000000000055555555
55555555000000000000000000000000000000000b000b000b000b000b000b00000000000b000b000b000b000000000000000000000000000000000055555555
55555555000000000000000000000000000000000b000b000b000b000b000b00000000000b000b000b000b000000000000000000000000000000000055555555
55555555000000000000000000000000000000000b000b000b000b000b000b00000000000b000b000b000b000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
55555555000000003333333333333333000000000000000000000000000000000000000000080000000000000000000033333333333333330000000055555555
55555555000000003b333b333b333b3300000000000000800000000000000000000000000099000000000000000000003b333b333b333b330000000055555555
5555555500000000bbbbbbbbbbbbbbbb0000000000002222000000000000000000000000099990000000000000000000bbbbbbbbbbbbbbbb0000000055555555
55555555000000000b000b000b000b0000000000000aaaaaa00000000000000000000000cccccc0000000000000000000b000b000b000b000000000055555555
55555555000000000b000b000b000b0000000000000af1f1a00000000000000000000000c1f1fc0000000000000000000b000b000b000b000000000055555555
55555555000000000b000b000b000b0000000000000affffa000000000000000000000000ffff00000000000000000000b000b000b000b000000000055555555
55555555000000000b000b000b000b0000000000000a2ff2a0000000000000000000000099ff990000000000000000000b000b000b000b000000000055555555
55555555000000000b000b000b000b0000000000000a2222a0000000000000000000000f999999f000000000000000000b000b000b000b000000000055555555
555555550000000000000000000000000000000000ff2222ff000000000000000000000f999999f0000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000222200000000000000000000000f999999f0000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000889800000000000000000000000044444400000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000002222220000000000000000000000044444400000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000022222222000000000000000000000044004400000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000f00f000000000000000000000000ff00ff00000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000f00f000000000000000000000000ff00ff00000000000000000000000000000000000000000055555555
55555555000000000000000000000000000000000000e00e00000000000000000000000011001100000000000000000000000000000000000000000055555555
33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
3b333b333b333b333b333b333b333b333b333b333b333b333b333b333b333b333b333b333b333b333b333b333b333b333b333b333b333b333b333b333b333b33
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb
0b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b00
0b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b00
0b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b00
0b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b00
0b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b000b00

__gff__
0000030003000003000000040000000000000000000000000000000400000000000000000000000000000004040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0404040404040404040404040404040404040404040404040404040404040404040404040404040404040400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0400000000000000000000000000000404000000000000000000000000000004040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0400000000000000000000000000000404000000000000000000000000000004040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0400000000000000000000000000000404000000000000000000000000000004040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0400000000000000000002020202000404000000000000000000000000000004040000000000000000000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0400000000000000000000000000000404000000000000000000000000000004040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0400000000000000000000000000000404000000000000000000000000000004040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0400000000000000000000020000000404000000000000000000000000000004040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0400000000000000000000000000000404000000000000000000000000000004040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0402020000000000000000000002020404000000000000000000000000000004040202000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0400000000020202000202000000000404000000000000000000000000000004040000000002020200020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0400000000000000000000000000000404000000000000000000000000000004040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0400000000000000000000000000000404000000000000000000000000000004040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0400020200000000000000000200000b0b000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0400000000000000000000000000001b1b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020202020202020202020202020202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000