comp = {
    'comp0': '#000000',
    'comp1': '#22262b',
    'comp2': '#282c34',
    'comp3': '#3d424a',
    'comp4': '#c0bdb8',
    'comp5': '#e0dcd4',
    'comp6': '#e8e4dc',
    'comp7': '#f5f2eb',
    'comp8': '#c8beb8',
    'comp9': '#c8c0b0',
    'comp10':'#ccc4b0',
    'comp11':'#b4beb4',
    'comp12':'#b0bcc8',
    'comp13':'#b4bec8',
    'comp14':'#c4beb8',
    'comp15':'#c0b8bc',
}

## Background color of the completion widget category headers.
## Type: QssColor
c.colors.completion.category.bg = comp['comp0']

## Bottom border color of the completion widget category headers.
## Type: QssColor
c.colors.completion.category.border.bottom = comp['comp0']

## Top border color of the completion widget category headers.
## Type: QssColor
c.colors.completion.category.border.top = comp['comp0']

## Foreground color of completion widget category headers.
## Type: QtColor
c.colors.completion.category.fg = comp['comp5']

## Background color of the completion widget for even rows.
## Type: QssColor
c.colors.completion.even.bg = comp['comp1']

## Background color of the completion widget for odd rows.
## Type: QssColor
c.colors.completion.odd.bg = comp['comp1']

## Text color of the completion widget.
## Type: QtColor
c.colors.completion.fg = comp['comp4']

## Background color of the selected completion item.
## Type: QssColor
c.colors.completion.item.selected.bg = comp['comp3']

## Bottom border color of the selected completion item.
## Type: QssColor
c.colors.completion.item.selected.border.bottom = comp['comp3']

## Top border color of the completion widget category headers.
## Type: QssColor
c.colors.completion.item.selected.border.top = comp['comp3']

## Foreground color of the selected completion item.
## Type: QtColor
c.colors.completion.item.selected.fg = comp['comp6']

## Foreground color of the matched text in the completion.
## Type: QssColor
c.colors.completion.match.fg = comp['comp13']

## Color of the scrollbar in completion view
## Type: QssColor
c.colors.completion.scrollbar.bg = comp['comp1']

## Color of the scrollbar handle in completion view.
## Type: QssColor
c.colors.completion.scrollbar.fg = comp['comp5']

## Background color for the download bar.
## Type: QssColor
c.colors.downloads.bar.bg = comp['comp0']

## Background color for downloads with errors.
## Type: QtColor
c.colors.downloads.error.bg = comp['comp11']

## Foreground color for downloads with errors.
## Type: QtColor
c.colors.downloads.error.fg = comp['comp5']

## Color gradient stop for download backgrounds.
## Type: QtColor
c.colors.downloads.stop.bg = comp['comp15']

## Color gradient interpolation system for download backgrounds.
## Type: ColorSystem
## Valid values:
##   - rgb: Interpolate in the RGB color system.
##   - hsv: Interpolate in the HSV color system.
##   - hsl: Interpolate in the HSL color system.
##   - none: Don't show a gradient.
c.colors.downloads.system.bg = 'none'

## Background color for hints. Note that you can use a `rgba(...)` value
## for transparency.
## Type: QssColor
c.colors.hints.bg = comp['comp13']

## Font color for hints.
## Type: QssColor
c.colors.hints.fg = comp['comp0']

## Font color for the matched part of hints.
## Type: QssColor
c.colors.hints.match.fg = comp['comp10']

## Background color of the keyhint widget.
## Type: QssColor
c.colors.keyhint.bg = comp['comp1']

## Text color for the keyhint widget.
## Type: QssColor
c.colors.keyhint.fg = comp['comp5']

## Highlight color for keys to complete the current keychain.
## Type: QssColor
c.colors.keyhint.suffix.fg = comp['comp13']

## Background color of an error message.
## Type: QssColor
c.colors.messages.error.bg = comp['comp11']

## Border color of an error message.
## Type: QssColor
c.colors.messages.error.border = comp['comp11']

## Foreground color of an error message.
## Type: QssColor
c.colors.messages.error.fg = comp['comp5']

## Background color of an info message.
## Type: QssColor
c.colors.messages.info.bg = comp['comp8']

## Border color of an info message.
## Type: QssColor
c.colors.messages.info.border = comp['comp8']

## Foreground color an info message.
## Type: QssColor
c.colors.messages.info.fg = comp['comp5']

## Background color of a warning message.
## Type: QssColor
c.colors.messages.warning.bg = comp['comp12']

## Border color of a warning message.
## Type: QssColor
c.colors.messages.warning.border = comp['comp12']

## Foreground color a warning message.
## Type: QssColor
c.colors.messages.warning.fg = comp['comp5']

## Background color for prompts.
## Type: QssColor
c.colors.prompts.bg = comp['comp2']

# ## Border used around UI elements in prompts.
# ## Type: String
c.colors.prompts.border = '1px solid ' + comp['comp0']

## Foreground color for prompts.
## Type: QssColor
c.colors.prompts.fg = comp['comp5']

## Background color for the selected item in filename prompts.
## Type: QssColor
c.colors.prompts.selected.bg = comp['comp3']

## Background color of the statusbar in caret mode.
## Type: QssColor
c.colors.statusbar.caret.bg = comp['comp15']

## Foreground color of the statusbar in caret mode.
## Type: QssColor
c.colors.statusbar.caret.fg = comp['comp5']

## Background color of the statusbar in caret mode with a selection.
## Type: QssColor
c.colors.statusbar.caret.selection.bg = comp['comp15']

## Foreground color of the statusbar in caret mode with a selection.
## Type: QssColor
c.colors.statusbar.caret.selection.fg = comp['comp5']

## Background color of the statusbar in command mode.
## Type: QssColor
c.colors.statusbar.command.bg = comp['comp2']

## Foreground color of the statusbar in command mode.
## Type: QssColor
c.colors.statusbar.command.fg = comp['comp5']

## Background color of the statusbar in private browsing + command mode.
## Type: QssColor
c.colors.statusbar.command.private.bg = comp['comp2']

## Foreground color of the statusbar in private browsing + command mode.
## Type: QssColor
c.colors.statusbar.command.private.fg = comp['comp5']

## Background color of the statusbar in insert mode.
## Type: QssColor
c.colors.statusbar.insert.bg = comp['comp14']

## Foreground color of the statusbar in insert mode.
## Type: QssColor
c.colors.statusbar.insert.fg = comp['comp1']

## Background color of the statusbar.
## Type: QssColor
c.colors.statusbar.normal.bg = comp['comp0']

## Foreground color of the statusbar.
## Type: QssColor
c.colors.statusbar.normal.fg = comp['comp5']

## Background color of the statusbar in passthrough mode.
## Type: QssColor
c.colors.statusbar.passthrough.bg = comp['comp10']

## Foreground color of the statusbar in passthrough mode.
## Type: QssColor
c.colors.statusbar.passthrough.fg = comp['comp5']

## Background color of the statusbar in private browsing mode.
## Type: QssColor
c.colors.statusbar.private.bg = comp['comp3']

## Foreground color of the statusbar in private browsing mode.
## Type: QssColor
c.colors.statusbar.private.fg = comp['comp5']

## Background color of the progress bar.
## Type: QssColor
c.colors.statusbar.progress.bg = comp['comp5']

## Foreground color of the URL in the statusbar on error.
## Type: QssColor
c.colors.statusbar.url.error.fg = comp['comp11']

## Default foreground color of the URL in the statusbar.
## Type: QssColor
c.colors.statusbar.url.fg = comp['comp5']

## Foreground color of the URL in the statusbar for hovered links.
## Type: QssColor
c.colors.statusbar.url.hover.fg = comp['comp8']

## Foreground color of the URL in the statusbar on successful load
## (http).
## Type: QssColor
c.colors.statusbar.url.success.http.fg = comp['comp5']

## Foreground color of the URL in the statusbar on successful load
## (https).
## Type: QssColor
c.colors.statusbar.url.success.https.fg = comp['comp14']

## Foreground color of the URL in the statusbar when there's a warning.
## Type: QssColor
c.colors.statusbar.url.warn.fg = comp['comp12']

## Background color of the tab bar.
## Type: QtColor
c.colors.tabs.bar.bg = comp['comp3']

## Background color of unselected even tabs.
## Type: QtColor
c.colors.tabs.even.bg = comp['comp3']

## Foreground color of unselected even tabs.
## Type: QtColor
c.colors.tabs.even.fg = comp['comp5']

## Color for the tab indicator on errors.
## Type: QtColor
c.colors.tabs.indicator.error = comp['comp11']

## Color gradient start for the tab indicator.
## Type: QtColor
# c.colors.tabs.indicator.start = comp['violet']

## Color gradient end for the tab indicator.
## Type: QtColor
# c.colors.tabs.indicator.stop = comp['orange']

## Color gradient interpolation system for the tab indicator.
## Type: ColorSystem
## Valid values:
##   - rgb: Interpolate in the RGB color system.
##   - hsv: Interpolate in the HSV color system.
##   - hsl: Interpolate in the HSL color system.
##   - none: Don't show a gradient.
c.colors.tabs.indicator.system = 'none'

## Background color of unselected odd tabs.
## Type: QtColor
c.colors.tabs.odd.bg = comp['comp3']

## Foreground color of unselected odd tabs.
## Type: QtColor
c.colors.tabs.odd.fg = comp['comp5']

# ## Background color of selected even tabs.
# ## Type: QtColor
c.colors.tabs.selected.even.bg = comp['comp0']

# ## Foreground color of selected even tabs.
# ## Type: QtColor
c.colors.tabs.selected.even.fg = comp['comp5']

# ## Background color of selected odd tabs.
# ## Type: QtColor
c.colors.tabs.selected.odd.bg = comp['comp0']

# ## Foreground color of selected odd tabs.
# ## Type: QtColor
c.colors.tabs.selected.odd.fg = comp['comp5']

## Background color for webpages if unset (or empty to use the theme's
## color)
## Type: QtColor
# c.colors.webpage.bg = 'white'
