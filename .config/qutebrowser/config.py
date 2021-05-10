import subprocess
config.bind(',y', 'hint links spawn mpv {hint-url}')
config.bind(',Y', 'spawn mpv {url}')
c.tabs.position = "top"
c.statusbar.position = "bottom"
c.completion.shrink = True
c.tabs.width = 24
c.colors.webpage.bg = "#eee"
prefers_color_scheme_dark = True
c.url.start_pages = ["https://en.wikipedia.org/wiki/Main_Page"]
c.fonts.statusbar = "fixed"
c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/lite/?q={}'}
c.content.geolocation = False
#c.tabs.favicons.show = "always"
c.tabs.show = "multiple"
c.tabs.background = False
c.tabs.mousewheel_switching = True 
c.completion.cmd_history_max_items = 1
#c.completion.web_history.max_items = 0
#c.tabs.title.format = "{perc}{index}"
c.auto_save.session = True
c.downloads.remove_finished = 10
c.completion.quick = True
monospace = "12px 'fixed'"

#c.scrolling.bar = "never"
c.statusbar.hide = True

# Font used in the completion categories.
c.fonts.completion.category = f"bold {monospace}"

# Font used in the completion widget.
c.fonts.completion.entry = monospace

# Font used for the debugging console.
c.fonts.debug_console = monospace

# Font used for the downloadbar.
c.fonts.downloads = monospace

# Font used in the keyhint widget.
c.fonts.keyhint = monospace

# Font used for error messages.
c.fonts.messages.error = monospace

# Font used for info messages.
c.fonts.messages.info = monospace

# Font used for warning messages.
c.fonts.messages.warning = monospace

# Font used for prompts.
c.fonts.prompts = monospace

# Font used in the statusbar.
c.fonts.statusbar = monospace

# Font used in the tab bar.
c.fonts.tabs = monospace

#c.content.user_stylesheets = [ "userContent.css", "block.css", "personal.css"]
c.content.user_stylesheets = [ "block.css"]
config.unbind("q")
c.confirm_quit = ["downloads"]
# Font used for the hints.
c.fonts.hints = monospace

# Chars used for hint strings.
c.hints.chars = "asdfqwer"
#c.scrolling.bar = "always"
c.scrolling.smooth = False
c.tabs.background = True
c.tabs.last_close = "close"
c.tabs.padding = {
        "left": 5,
        "right": 5,
        "top": 0,
        "bottom": 1,
        }
config.bind("<f12>", "inspector")
config.bind("q", "tab-close")
config.bind("Z", "history")
# Foreground color of the URL in the statusbar on successful load
# (https).
#c.colors.statusbar.url.success.https.fg = "white"
#c.colors.statusbar.url.success.https.fg = xresources['*foreground']
#c.colors.statusbar.url.success.https.bg = xresources['*background']
