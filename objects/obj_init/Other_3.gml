/// @description Insert description here
ini_open("settings.dat")
ini_write_real("Score","best",global.best)
ini_write_real("Settings","full",window_get_fullscreen())
ini_close()