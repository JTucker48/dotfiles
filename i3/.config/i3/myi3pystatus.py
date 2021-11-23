from i3pystatus import Status

status = Status()

cd0  =  "#1c1c1c"
cd1  =  "#af005f"
cd2  =  "#5faf00"
cd3  =  "#d7af5f"
cd4  =  "#5fafd7"
cd5  =  "#808080"
cd6  =  "#d7875f"
cd7  =  "#d0d0d0"
cd8  =  "#585858"
cd9  =  "#5faf5f"
cd10 =  "#afd700"
cd11 =  "#af87d7"
cd12 =  "#ffaf00"
cd13 =  "#ff5faf"
cd14 =  "#00afaf"
cd15 =  "#5f8787"


status.register("clock",
    format      ="%a %-d %b %X ",
    )

status.register("pulseaudio",
    format      ="♪ {volume}",
    )

status.register("network",
    interface   = "wlp5s0",
    hints       = {"markup": "pango"},
    format_up   = "{essid}",
    format_down = "Wifi Down",
    color_up    = cd9,
    color_down  = cd1,
    )

#status.register("spotify",
#    color      = cd11,
#    format     = "{title} - {artist}",
#    format_no_player = "",
#    )

status.register("cmus",
    format     = "{status} {title} - {artist}",
                )

status.run()
