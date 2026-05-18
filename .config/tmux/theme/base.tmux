TMUX_COLOR=magenta

WINDOW_STATUS_FORMAT=" #I #W "

# do not show window separator on the window after the active window or on the first window
WINDOW_SEPARATOR="#{?#{e|==:#{e|-:#I,1},#{active_window_index}},,#{?#{==:1,#I},,│}}"
STATUS_LEFT_SEPARATOR="#{?#{==:1,#I},┃,}"

set -g popup-border-lines rounded

set -g menu-border-lines rounded
set -g menu-selected-style fg=$FONT_COLOR_2,bg=$TMUX_COLOR

set -g status-style fg=$FONT_COLOR_1,bg=$BACKGROUND_COLOR_1

set -g status-left "  #S $STATUS_LEFT_SEPARATOR"
set -g status-left-length 50
set -g status-left-style bg=$TMUX_COLOR,fg=$FONT_COLOR_2,bold

set -g status-right ""
set -g status-right-length 50
set -g status-right-style bg=$TMUX_COLOR,fg=$FONT_COLOR_2,bold

set -g window-status-format "$WINDOW_SEPARATOR$WINDOW_STATUS_FORMAT"
set -g window-status-style fg=$FONT_COLOR_1,bg=$BACKGROUND_COLOR_2

set -g window-status-current-format "$WINDOW_STATUS_FORMAT"
set -g window-status-current-style fg=$FONT_COLOR_2,bg=$TMUX_COLOR,bold

set -g window-status-separator ""

set -g message-style fg=red,bg=$BACKGROUND_COLOR_1

set -g pane-border-style fg=$FONT_COLOR_1,bg=terminal
set -g pane-border-lines heavy

set -g pane-active-border-style fg=$TMUX_COLOR,bg=$BACKGROUND_COLOR_1
