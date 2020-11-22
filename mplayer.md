# mplayer commands
mplayer commands are available at runtime through introspection

Python REPL provides:  
```  
>>> from mplayer import Player                                                                                                          
>>> Player.introspect()                                                                                                        
>>> p=Player()                                                                                                                          
>>> p.                                                                                                                                  
```

[Press TAB]

```
Display all 160 possibilities? (y or n) 
p.af_add(                  p.file_filter(             p.panscan                  p.stream_start             p.time_pos
p.af_clr(                  p.filename                 p.path                     p.stream_time_pos          p.titles
p.af_cmdline(              p.forced_subs_only(        p.pause(                   p.sub                      p.tv_brightness
p.af_del(                  p.fps                      p.paused                   p.sub_alignment            p.tv_contrast
p.af_switch(               p.frame_drop(              p.percent_pos              p.sub_delay                p.tv_hue
p.alt_src_step(            p.frame_step(              p.pt_step(                 p.sub_demux                p.tv_last_channel(
p.angle                    p.framedropping            p.pt_up_step(              p.sub_file                 p.tv_saturation
p.args                     p.fullscreen               p.quit(                    p.sub_forced_only          p.tv_set_brightness(
p.aspect                   p.gamma                    p.radio_set_channel(       p.sub_load(                p.tv_set_channel(
p.ass_use_margins          p.gui(                     p.radio_set_freq(          p.sub_log(                 p.tv_set_contrast(
p.audio_bitrate            p.height                   p.radio_step_channel(      p.sub_pos                  p.tv_set_freq(
p.audio_codec              p.help(                    p.radio_step_freq(         p.sub_remove(              p.tv_set_hue(
p.audio_delay              p.hide(                    p.rootwin                  p.sub_scale                p.tv_set_norm(
p.audio_format             p.hue                      p.run(                     p.sub_select(              p.tv_set_saturation(
p.balance                  p.introspect(              p.samplerate               p.sub_source               p.tv_start_scan(
p.border                   p.is_alive(                p.saturation               p.sub_step(                p.tv_step_chanlist(
p.brightness               p.key_down_event(          p.screenshot(              p.sub_visibility           p.tv_step_channel(
p.capturing                p.length                   p.seek(                    p.sub_vob                  p.tv_step_freq(
p.change_rectangle(        p.loadfile(                p.seek_chapter(            p.switch_angle(            p.tv_step_norm(
p.channels                 p.loadlist(                p.set_menu(                p.switch_audio             p.use_master(
p.chapter                  p.loop                     p.set_mouse_pos(           p.switch_program           p.version
p.chapters                 p.menu(                    p.spawn(                   p.switch_ratio(            p.video_bitrate
p.cmd_prefix               p.metadata                 p.speed                    p.switch_title(            p.video_codec
p.contrast                 p.mute                     p.speed_incr(              p.switch_video             p.video_format
p.deinterlace              p.ontop                    p.speed_mult(              p.switch_vsync(            p.vo_border(
p.demuxer                  p.osd(                     p.speed_set(               p.teletext_add_dec(        p.vo_fullscreen(
p.dvb_set_channel(         p.osd_show_progression(    p.stderr                   p.teletext_format          p.vo_ontop(
p.dvdnav(                  p.osd_show_property_text(  p.stdout                   p.teletext_go_link(        p.vo_rootwin(
p.edl_loadfile(            p.osd_show_text(           p.stop(                    p.teletext_half_page       p.vobsub_lang(
p.edl_mark(                p.osdlevel                 p.stream_end               p.teletext_mode            p.volume
p.exec_path                p.overlay_add(             p.stream_length            p.teletext_page            p.vsync
p.exit(                    p.overlay_remove(          p.stream_pos               p.teletext_subpage         p.width
```