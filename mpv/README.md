# My MPV Configuration
⚠️ Some scripts may contain small personal modifications.

This repository lists the Lua scripts I use with **mpv** to enhance playback, usability, and UI.  
Most of these scripts are created by other developers — I only use them in my setup and sometimes make small adjustments so they work better for my configuration.

## Scripts

- **autoloop**  
  Automatically loops videos when playback ends.  
  Source: https://github.com/zydezu/mpvconfig/blob/main/scripts/autoloop.lua

- **autosub**  
  Automatically download subtitle of opened video.  
  Source: https://github.com/davidde/mpv-autosub/blob/master/autosub.lua

- **modernx**  
  A modern OSC (on-screen controller) replacement for mpv.  
  Source: https://github.com/zydezu/mpvconfig/blob/main/scripts/modernx.lua

- **mpv-filter-presets**  
  Quickly switch between video filter presets.  
  Source: https://github.com/praneetk96/mpv-filter-presets

- **mpv_sponsorblock**  
  Automatically skips sponsor segments in YouTube videos.  
  Source: https://github.com/po5/mpv_sponsorblock

- **thumbfast**  
  Generates preview thumbnails when seeking through videos.  
  Source: https://github.com/po5/thumbfast

## Modifications

Some scripts are slightly modified so they work better with my setup.

### modernx.lua

I changed the following line to allow the mpv window to automatically resize when the video is rotated.

Original (around line 1514):

```lua
mp.set_property_bool("auto-window-resize", false)
```

Modified:

```lua
mp.set_property_bool("auto-window-resize", true)
```

This ensures the window resizes correctly when using my `cycle_video_rotate.lua` script.

## More MPV Scripts

You can discover many more useful scripts here:  
https://github.com/stax76/awesome-mpv

---

*All credit goes to the original script authors.*
