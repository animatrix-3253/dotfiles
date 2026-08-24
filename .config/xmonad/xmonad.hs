import XMonad
import Colors

import XMonad.Util.Run (spawnPipe)
import XMonad.Util.EZConfig
import XMonad.Util.SpawnOnce

import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops

import XMonad.Layout.Spacing

import Graphics.X11.ExtraTypes.XF86
import System.IO (hPutStrLn)

main :: IO ()
main = do
  xmproc <- spawnPipe "xmobar"

  xmonad
    $ docks
    $ def
      { modMask = mod4Mask
      , terminal = "alacritty"

      -- Window borders
      , normalBorderColor = color1
      , focusedBorderColor = color4

      , layoutHook = avoidStruts layoutConfig
      , startupHook = onLogin

      , logHook = dynamicLogWithPP xmobarPP
          { ppOutput = hPutStrLn xmproc
          , ppTitle = xmobarColor color4 ""
          }
      }
    `additionalKeysP`
      -- Spawn terminal
      [ ("M-t", spawn "alacritty")

      -- Rofi
      , ("M-d", spawn "rofi -show drun -theme ~/.config/rofi/theme.rasi")
      , ("M-r", spawn "rofi -show run -theme ~/.config/rofi/theme.rasi")

      -- Browser
      , ("M-b", spawn "qutebrowser")

      -- Screenshot GUI
      , ("M-S-s", spawn "flameshot gui")

      -- Kill Active Process
      , ("M-S-c", kill)
      ]

onLogin :: X ()
onLogin = do
  spawnOnce "feh --bg-fill ~/Pictures/Wallpapers/wallpaper.png"
  spawnOnce "wal -R"

layoutConfig =
  spacing 10 $
    tiled
      ||| Mirror tiled
      ||| Full
  where
    tiled = Tall 1 (3 / 100) (1 / 2)
