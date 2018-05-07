Config { 

   -- appearance
     font =         "xft:WenQuanYi Micro Hei:size=9:bold:antialias=true"
   , bgColor =      "black"
   , fgColor =      "#646464"
   , position =    Bottom     
   , border =       BottomB
   , borderColor =  "#646464"
   , alpha = 90

   -- layout
   , sepChar =  "%"   -- delineator between plugin names and straight text
   , alignSep = "}{"  -- separator between left-right alignment
   , template = "<action=`termite -e ncmpc`>%vol%</action> | %mpd% "

   -- general behavior
   , lowerOnStart =     True    -- send to bottom of window stack on start
   , hideOnStart =      False   -- start with window unmapped (hidden)
   , allDesktops =      True    -- show on all desktops
   , overrideRedirect = True    -- set the Override Redirect flag (Xlib)
   , pickBroadest =     False   -- choose widest display (multi-monitor)
   , persistent =       True    -- enable/disable hiding (True = disabled)

   -- plugins
   --   Numbers can be automatically colored according to their value. xmobar
   --   decides color based on a three-tier/two-cutoff system, controlled by
   --   command options:
   --     --Low sets the low cutoff
   --     --High sets the high cutoff
   --
   --     --low sets the color below --Low cutoff
   --     --normal sets the color between --Low and --High cutoffs
   --     --High sets the color above --High cutoff
   --
   --   The --template option controls how the plugin is displayed. Text
   --   color can be set by enclosing in <fc></fc> tags. For more details
   --   see http://projects.haskell.org/xmobar/#system-monitor-plugins.
   , commands = 

        [ 
			  
		 Run MPD ["-t","<composer><file><state> <remaining> <title> (<album>) <track>/<plength> <statei> [<flags>]", "--", "-P", ">>", "-Z", "|", "-S", "><"] 10
        ,Run Com "/home/lincoo/.xmonad/bin/getMasterVolume" [] "vol" 300 
        ]
   }
