import XMonad
import XMonad.Util.EZConfig
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog

import System.IO (hPutStrLn)
import XMonad.Util.Run(spawnPipe)

main :: IO()
main = do 	
	xmproc <- spawnPipe "xmobar ~/.config/xmobar/xmobar.hs"
	xmonad 
		$ docks
		$ def
			{ modMask = mod4Mask
			, terminal = "alacritty"
			, logHook = dynamicLogWithPP xmobarPP
				{ ppOutput = hPutStrLn xmproc
				, ppTitle = xmobarColor "#89b4fa" ""
				}
			}
			`additionalKeysP`  
			[ ("M-t", spawn "alacritty")
			, ("M-d", spawn "rofi -show drun")
			, ("M-r", spawn "rofi -show run") 
			]
