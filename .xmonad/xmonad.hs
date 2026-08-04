import XMonad

-- Utils
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig

-- Hooks
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops

-- Layouts
import XMonad.Layout.Spacing

-- Other 
import Graphics.X11.ExtraTypes.XF86
import System.IO (hPutStrLn)

main :: IO()
main = do 	
	xmproc <- spawnPipe "xmobar ~/.config/xmobar/xmobar.hs"
	xmonad 
		$ docks
		$ def
			{ modMask = mod4Mask
			, terminal = "alacritty"
      , layoutHook = avoidStruts $ layoutConfig
      , startupHook = onLogin
			, logHook = dynamicLogWithPP xmobarPP
				{ ppOutput = hPutStrLn xmproc
				, ppTitle = xmobarColor "#89b4fa" ""
				}
			}
			`additionalKeysP`  
			-- alacritty
			[ ("M-t", spawn "alacritty")

			--rofi
			, ("M-d", spawn "rofi -show drun")
			, ("M-r", spawn "rofi -show run") 

			-- Pipewire
			, ("<XF86AudioRaiseVolume>", spawn "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+")
			, ("<XF86AudioLowerVolume>", spawn "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-")
			, ("<XF86AudioMute>", spawn "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle")

			-- Alt+F4
			, ("M-S-c", kill)

			-- Flameshot
			, ("M-S-s", spawn "flameshot gui")
			]

onLogin = do
  spawn "feh --bg-fill ~/Pictures/wallpapers/wallpaper.png"

layoutConfig = spacing 10 $ tiled ||| Mirror tiled ||| Full
  where
    tiled = Tall 1 (3/100) (1/2)
