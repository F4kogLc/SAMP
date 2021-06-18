local mem = require 'memory'

function patch() --fast loading
	if mem.getuint8(0x748C2B) == 0xE8 then
		mem.fill(0x748C2B, 0x90, 5, true)
	elseif mem.getuint8(0x748C7B) == 0xE8 then
		mem.fill(0x748C7B, 0x90, 5, true)
	end
	if mem.getuint8(0x5909AA) == 0xBE then
		mem.write(0x5909AB, 1, 1, true)
	end
	if mem.getuint8(0x590A1D) == 0xBE then
		mem.write(0x590A1D, 0xE9, 1, true)
		mem.write(0x590A1E, 0x8D, 4, true)
	end
	if mem.getuint8(0x748C6B) == 0xC6 then
		mem.fill(0x748C6B, 0x90, 7, true)
	elseif mem.getuint8(0x748CBB) == 0xC6 then
		mem.fill(0x748CBB, 0x90, 7, true)
	end
	if mem.getuint8(0x590AF0) == 0xA1 then
		mem.write(0x590AF0, 0xE9, 1, true)
		mem.write(0x590AF1, 0x140, 4, true)
	end
end
patch()

mem.setuint32((0x0052228C + 0x2), 0xB6EC1C) -- ptr to vertical mouse acceleration -> ptr to horizontal
mem.fill(0x00531155, 0x90, 5, true) -- shift afk fix
mem.fill(sampGetBase() + 0x2D3C45, 0, 2, true) -- fast connect
mem.fill(0x555854, 0x90, 5, true) -- fix interior
-- god mode patch
writeMemory(0x004B35A0, 4, 0x560CEC83, true)
writeMemory(0x004B35A0 + 4, 2, 0xF18B, true)
-- fix interior
--writeMemory(0x555854, 4, -1869574000, true)
--writeMemory(0x555858, 1, 144, true)

-- https://www.blast.hk/threads/90944/
-- patch wet roads
mem.fill(0x72BB9F, 0x90, 12, true)
mem.fill(0x72BBAB, 0x90, 20, true)
mem.fill(0x72BBCB, 0x90, 12, true)
-- patch wheel interpolation
mem.fill(0x72B940, 0x90, 5, true)
mem.fill(0x72B92B, 0x90, 5, true)
mem.fill(0x72B959, 0x90, 5, true)
-- disable sand particle
mem.fill(0x6AA8CF, 0x90, 53, true)
--patch blade helicopter collision
mem.fill(0x6C5107, 0x90, 59, true)
--disable speed limit
mem.fill(0x544CF0, 0x90, 14, true)
-- disable rails resistance
mem.setfloat(0x8D34AC, 0.0, true) 
