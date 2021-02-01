require('memory').fill(0x00531155, 0x90, 5, true) -- shift afk fix
require('memory').fill(sampGetBase() + 0x2D3C45, 0, 2, true) -- fast connect
writeMemory(0x555854, 4, -1869574000, true) -- fix bug
writeMemory(0x555858, 1, 144, true) -- fix bug
