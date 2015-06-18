! Compile xft: Attempt to find a visual with the given bit depth; option -depth.
! URxvt*depth: bitdepth

! Compile xft: Turn on/off double-buffering for xft (default enabled).  On some card/driver combination enabling it slightly decreases performance, on most it greatly helps it. The slowdown is small, so it should normally be
! URxvt*buffered: boolean

! Create the window with the specified X window geometry [default 80x24]; option -geometry.
! URxvt*geometry: geom

! Use the specified colour as the windows background colour [default White]; option -bg.
! URxvt*background: colour

! Use the specified colour as the windows foreground colour [default Black]; option -fg.
! URxvt*foreground: colour

! Use the specified colour for the colour value n, where 0-7 corresponds to low-intensity (normal) colours and 8-15 corresponds to high-intensity (bold = bright foreground, blink = bright background) colours. The canonical
! URxvt*colorn: colour

! 
! URxvt*colorBD: colour

! Use the specified colour to display bold or italic characters when the foreground colour is the default. If font styles are not available (Compile styles) and this option is unset, reverse video is used instead.
! URxvt*colorIT: colour

! Use the specified colour to display underlined characters when the foreground colour is the default.
! URxvt*colorUL: colour

! If set, use the specified colour as the colour for the underline itself. If unset, use the foreground colour.
! URxvt*underlineColor: colour

! If set, use the specified colour as the background for highlighted characters. If unset, use reverse video.
! URxvt*highlightColor: colour

! If set and highlightColor is set, use the specified colour as the foreground for highlighted characters.
! URxvt*highlightTextColor: colour

! Use the specified colour for the cursor. The default is to use the foreground colour; option -cr.
! URxvt*cursorColor: colour

! Use the specified colour for the colour of the cursor text. For this to take effect, cursorColor must also be specified. The default is to use the background colour.
! URxvt*cursorColor2: colour

! True: simulate reverse video by foreground and background colours; option -rv. False: regular screen colours [default]; option +rv. See note in COLOURS AND GRAPHICS section.
! URxvt*reverseVideo: boolean

! True: specify that jump scrolling should be used. When receiving lots of lines, urxvt will only scroll once a whole screen height of lines has been read, resulting in fewer updates while still displaying every received
! URxvt*jumpScroll: boolean

! True: (the default) specify that skip scrolling should be used. When receiving lots of lines, urxvt will only scroll once in a while (around 60 times per second), resulting in far fewer updates. This can result in urxvt
! URxvt*skipScroll: boolean

! Turn on/off pseudo-transparency by using the root pixmap as background.
! URxvt*transparent: boolean

! Fade the text by the given percentage when focus is lost; option -fade.
! URxvt*fading: number

! Fade to this colour, when fading is used (see fading:). The default colour is black; option -fadecolor.
! URxvt*fadeColor: colour

! Tint the transparent background with the given colour. If the RENDER extension is not available only black, red, green, yellow, blue, magenta, cyan and white tints can be performed server-side. Note that a black tint
! URxvt*tintColor: colour

! Darken (0 .. 99) or lighten (101 .. 200) the transparent background.  A value of 100 means no shading; option -sh.
! URxvt*shading: number

! Specify background blending type; option -blt.
! URxvt*blendType: string

! Apply gaussian blur with the specified radius to the transparent background; option -blr.
! URxvt*blurRadius: number

! Set the application icon pixmap; option -icon.
! URxvt*iconFile: file

! Use the specified colour for the scrollbar [default #B2B2B2].
! URxvt*scrollColor: colour

! Use the specified colour for the scrollbars trough area [default #969696]. Only relevant for rxvt (non XTerm/NeXT) scrollbar.
! URxvt*troughColor: colour

! The colour of the border around the text area and between the scrollbar and the text.
! URxvt*borderColor: colour

! Use the specified image file for the background and also optionally specify a colon separated list of operations to modify it.  Supported operations are:
! URxvt*backgroundPixmap: file[;oplist]

! Specify the colon-delimited search path for finding background image files.
! URxvt*path: path

! Select the fonts to be used. This is a comma separated list of font names that are checked in order when trying to find glyphs for characters. The first font defines the cell size for characters; other fonts might be
! URxvt*font: fontlist

! URxvt*boldFont: fontlist

! 
! URxvt*italicFont: fontlist

! The font list to use for displaying bold, italic or bold italic characters, respectively.
! URxvt*boldItalicFont: fontlist

! When font styles are not enabled, or this option is enabled (True, option -is, the default), bold/blink font styles imply high intensity foreground/background colours. Disabling this option (False, option +is) disables
! URxvt*intensityStyles: boolean

! Set window title string, the default title is the command-line specified after the -e option, if any, otherwise the application name; option -title.
! URxvt*title: string

! Set the name used to label the windows icon or displayed in an icon manager window, it also sets the windows title unless it is explicitly set; option -n.
! URxvt*iconName: string

! True: de-iconify (map) on receipt of a bell character. False: no de-iconify (map) on receipt of a bell character [default].
! URxvt*mapAlert: boolean

! True: set the urgency hint for the wm on receipt of a bell character.  False: do not set the urgency hint [default].
! URxvt*urgentOnBell: boolean

! True: use visual bell on receipt of a bell character; option -vb.  False: no visual bell [default]; option +vb.
! URxvt*visualBell: boolean

! True: start as a login shell by prepending a - to argv[0] of the shell; option -ls. False: start as a normal sub-shell [default]; option +ls.
! URxvt*loginShell: boolean

! True: inhibit writing record into the system log file utmp; option -ut. False: write record into the system log file utmp [default]; option +ut.
! URxvt*utmpInhibit: boolean

! Specify a command pipe for vt100 printer [default lpr(1)]. Use Print to initiate a screen dump to the printer and Ctrl-Print or Shift-Print to include the scrollback as well.
! URxvt*print-pipe: string

! Set scrollbar style to rxvt, plain, next or xterm. plain is the authors favourite.
! URxvt*scrollstyle: mode

! Set the scrollbar width in pixels.
! URxvt*thickness: number

! True: enable the scrollbar [default]; option -sb. False: disable the scrollbar; option +sb.
! URxvt*scrollBar: boolean

! True: place the scrollbar on the right of the window; option -sr.  False: place the scrollbar on the left of the window; option +sr.
! URxvt*scrollBar_right: boolean

! True: display an rxvt scrollbar without a trough; option -st.  False: display an rxvt scrollbar with a trough; option +st.
! URxvt*scrollBar_floating: boolean

! Align the top, bottom or centre [default] of the scrollbar thumb with the pointer on middle button press/drag.
! URxvt*scrollBar_align: mode

! True: scroll to bottom when tty receives output; option -si.  False: do not scroll to bottom when tty receives output; option +si.
! URxvt*scrollTtyOutput: boolean

! True: scroll with scrollback buffer when tty receives new lines (i.e.  try to show the same lines) and scrollTtyOutput is False; option -sw. False: do not scroll with scrollback buffer when tty receives new lines; option
! URxvt*scrollWithBuffer: boolean

! True: scroll to bottom when a non-special key is pressed. Special keys are those which are intercepted by rxvt-unicode for special handling and are not passed onto the shell; option -sk. False: do not scroll to bottom when
! URxvt*scrollTtyKeypress: boolean

! Save number lines in the scrollback buffer [default 64]. This resource is limited on most machines to 65535; option -sl.
! URxvt*saveLines: number

! Internal border of number pixels. This resource is limited to 100; option -b.
! URxvt*internalBorder: number

! External border of number pixels. This resource is limited to 100; option -w, -bw, -borderwidth.
! URxvt*externalBorder: number

! Set MWM hints to request a borderless window, i.e. if honoured by the WM, the rxvt-unicode window will not have window decorations; option -bl.
! URxvt*borderLess: boolean

! Compile frills: Disable the usage of the built-in block graphics/line drawing characters and just rely on what the specified fonts provide. Use this if you have a good font and want to use its block graphic glyphs; option
! URxvt*skipBuiltinGlyphs: boolean

! Specifies the terminal type name to be set in the TERM environment variable; option -tn.
! URxvt*termName: termname

! Specifies number of lines (pixel height) to insert between each row of the display [default 0]; option -lsp.
! URxvt*lineSpace: number

! True: handle Meta (Alt) + keypress to set the 8th bit. False: handle Meta (Alt) + keypress as an escape prefix [default].
! URxvt*meta8: boolean

! True: the mouse wheel scrolls a page full. False: the mouse wheel scrolls five lines [default].
! URxvt*mouseWheelScrollPage: boolean

! True: store tabs as wide characters. False: interpret tabs as cursor movement only; option "-ptab".
! URxvt*pastableTabs: boolean

! True: blink the cursor. False: do not blink the cursor [default]; option -bc.
! URxvt*cursorBlink: boolean

! True: Make the cursor underlined. False: Make the cursor a box [default]; option -uc.
! URxvt*cursorUnderline: boolean

! True: blank the pointer when a key is pressed or after a set number of seconds of inactivity. False: the pointer is always visible [default].
! URxvt*pointerBlank: boolean

! Mouse pointer foreground colour.
! URxvt*pointerColor: colour

! Mouse pointer background colour.
! URxvt*pointerColor2: colour

! Specifies number of seconds before blanking the pointer [default 2]. Use a large number (e.g. 987654321) to effectively disable the timeout.
! URxvt*pointerBlankDelay: number

! The string to send when the backspace key is pressed. If set to DEC or unset it will send Delete (code 127) or, with control, Backspace (code 8) - which can be reversed with the appropriate DEC private mode escape
! URxvt*backspacekey: string

! The string to send when the delete key (not the keypad delete key) is pressed. If unset it will send the sequence traditionally associated with the Execute key.
! URxvt*deletekey: string

! The characters used as delimiters for double-click word selection (whitespace delimiting is added automatically if resource is given).
! URxvt*cutchars: string

! 
! URxvt*{|}

! OverTheSpot, OffTheSpot, Root; option -pt.
! URxvt*preeditType: style

! name of inputMethod to use; option -im.
! URxvt*inputMethod: name

! The locale to use for opening the IM. You can use an "LC_CTYPE" of e.g.  "de_DE.UTF-8" for normal text processing but "ja_JP.EUC-JP" for the input extension to be able to input japanese characters while staying in another
! URxvt*imLocale: name

! Specify the font-set used for XIM styles "OverTheSpot" or "OffTheSpot". It must be a standard X font set (XLFD patterns separated by commas), i.e. its not in the same format as the other font lists used in urxvt. The
! URxvt*imFont: fontset

! Change the meaning of triple-click selection with the left mouse button. Instead of selecting a full line it will extend the selection to the end of the logical line only; option -tcw.
! URxvt*tripleclickwords: boolean

! Enables "insecure" mode. Rxvt-unicode offers some escape sequences that echo arbitrary strings like the icon name or the locale. This could be abused if somebody gets 8-bit-clean access to your display, whether through a
! URxvt*insecure: boolean

! Set the key to be interpreted as the Meta key to: alt, meta, hyper, super, mod1, mod2, mod3, mod4, mod5; option -mod.
! URxvt*modifier: modifier

! Specify the reply rxvt-unicode sends to the shell when an ENQ (control-E) character is passed through. It may contain escape values as described in the entry on keysym following.
! URxvt*answerbackString: string

! Turn on/off secondary screen (default enabled).
! URxvt*secondaryScreen: boolean

! Turn on/off secondary screen scroll (default enabled). If this option is enabled, scrolls on the secondary screen will change the scrollback buffer and, when secondaryScreen is off, switching to/from the secondary screen
! URxvt*secondaryScroll: boolean

! Turn on/off hold window after exit support. If enabled, urxvt will not immediately destroy its window when the program executed within it exits. Instead, it will wait till it is being killed or closed by the user.
! URxvt*hold: boolean

! Sets the working directory for the shell (or the command specified via -e). The path must be an absolute path and it must exist for urxvt to start. If it isnt specified then the current working directory will be used;
! URxvt*chdir: path

! Compile frills: Associate string with keysym sym. The intervening resource name keysym. cannot be omitted.
! URxvt*keysym.sym: string

! URxvt*perl-ext-common: string

! Comma-separated list(s) of perl extension scripts (default: "default") to use in this terminal instance; option -pe.
! URxvt*perl-ext: string

! Perl code to be evaluated when all extensions have been registered. See the urxvtperl(3) manpage.
! URxvt*perl-eval: string

! Colon-separated list of additional directories that hold extension scripts. When looking for perl extensions, urxvt will first look in these directories, then in $HOME/.urxvt/ext and lastly in /usr/lib/urxvt/perl/.
! URxvt*perl-lib: path

! Additional selection patterns, see the urxvtperl(3) manpage for details.
! URxvt*selection.pattern-idx: perl-regex

! Selection auto-transform patterns, see the urxvtperl(3) manpage for details.
! URxvt*selection-autotransform.idx: perl-transform

! Sets the hotkey that starts the incremental scrollback buffer search (default: "M-s").
! URxvt*searchable-scrollback: keysym

! Specifies the program to be started with a URL argument. Used by the "selection-popup" and "matcher" perl extensions.
! URxvt*urlLauncher: string

! Compile frills: Sets the WM_TRANSIENT_FOR property to the given window id.
! URxvt*transient-for: windowid

! Compile frills: Sets override-redirect for the terminal window, making it almost invisible to window managers; option -override-redirect.
! URxvt*override-redirect: boolean

! Turn on/off ISO 14755 (default enabled).
! URxvt*iso14755: boolean

! Turn on/off ISO 14755 5.2 mode (default enabled).@@@@THE SCROLLBAR
! URxvt*iso14755_52: boolean

! Scroll down with Button1 (xterm-scrollbar) or Shift-Next.  Scroll up with Button3 (xterm-scrollbar) or Shift-Prior.  Continuous scroll with Button2.@@@@MOUSE REPORTING
! URxvt*xterm-scrollbar is without arrows and its behaviour mimics that of xterm

! THE SELECTION: SELECTING AND PASTING TEXT
! URxvt*respectively. Similarly, clicking on the up and down arrows sends ESC [ A (Up) and ESC [ B (Down), respectively.

! URxvt*rxvt-unicode will automatically re-apply these fonts to the output so far.

! ·   5.1: Basic method
! URxvt*is available when rxvt-unicode was compiled with "--enable-iso14755".

! 
! URxvt*urxvt tries to write an entry into the utmp(5) file so that it can be seen via the who(1) command, and can accept messages.  To allow this feature, urxvt may need to be installed setuid root on some systems or setgid to root

! COLOURS AND GRAPHICS
! URxvt*or to some other group on others.

! Here is a list of the ANSI colours with their names.
! URxvt*arranged in an 4x4x4 (or 6x6x6) colour RGB cube plus a 8 (24) colour greyscale ramp.

! 
! URxvt*color0       (black)            = Black

! 
! URxvt*color1       (red)              = Red3

! 
! URxvt*color2       (green)            = Green3

! 
! URxvt*color3       (yellow)           = Yellow3

! 
! URxvt*color4       (blue)             = Blue3

! 
! URxvt*color5       (magenta)          = Magenta3

! 
! URxvt*color6       (cyan)             = Cyan3

! 
! URxvt*color7       (white)            = AntiqueWhite

! 
! URxvt*color8       (bright black)     = Grey25

! 
! URxvt*color9       (bright red)       = Red

! 
! URxvt*color10      (bright green)     = Green

! 
! URxvt*color11      (bright yellow)    = Yellow

! 
! URxvt*color12      (bright blue)      = Blue

! 
! URxvt*color13      (bright magenta)   = Magenta

! 
! URxvt*color14      (bright cyan)      = Cyan

! 
! URxvt*color15      (bright white)     = White

! 
! URxvt*foreground                      = Black

! It is also possible to specify the colour values of foreground, background, cursorColor, cursorColor2, colorBD, colorUL as a number 0-15, as a convenient shorthand to reference the colour name of color0-color15.
! URxvt*background                      = White

! ALPHA CHANNEL SUPPORT
! URxvt*would yield White on Black, while on xterm(1) it would yield Black on White.

! For complete control, rxvt-unicode also supports "rgba:rrrr/gggg/bbbb/aaaa" (exactly four hex digits/component) colour specifications, where the additional "aaaa" component specifies opacity (alpha) values. The minimum value
! URxvt*colour.

! You probably need to specify "-depth 32", too, to force a visual with alpha channels, and have the luck that your X-server uses ARGB pixel layout, as X is far from just supporting ARGB visuals out of the box, and rxvt-unicode
! URxvt*of 0000 is completely transparent, while "ffff" is completely opaque). The two example colours from earlier could also be specified as "rgba:ff00/0000/0000/8000" and "rgba:0000/ff00/0000/f332".

! For example, the following selects an almost completely transparent black background, and an almost opaque pink foreground:
! URxvt*just fudges around.

! Please note that due to bugs in Xft, specifying alpha values might result in garbage being displayed when the X-server does not support the RENDER extension.@@@@ENVIRONMENT
! URxvt*colours will either be transparent as specified (the background image will show through) on servers supporting the RENDER extension, or fully opaque on servers not supporting the RENDER EXTENSION.

! TERM
! URxvt*urxvt sets and/or uses the following environment variables:

! CURRENT PROJECT COORDINATOR
! URxvt*urxvt(7), urxvtc(1), urxvtd(1), xterm(1), sh(1), resize(1), X(1), pty(4), tty(4), utmp(5)

! me.QueensU.CA>
! URxvt*mj olesen <olesen


