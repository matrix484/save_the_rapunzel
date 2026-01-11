/// @description Insert description here
ini_open("settings.dat")
global.best = ini_read_real("Score","best",0)
window_set_fullscreen(ini_write_real("Settings","full",0))
ini_close()