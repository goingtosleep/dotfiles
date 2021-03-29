![nvim](https://i.imgur.com/UVudJDP.png)

# nvim
Python (`ipython console` on the left hand side `tmux` pane):
- Send cell code to console: `Space c`. 
- Run current line in console: `Space f`.
- Run all file: `Space r`.
- Clear console: `Space l`.
- Autocompletion with `coc-nvim`, semantic highlighting with `semshi`.

Editing:
- Autosave and jump to last place on reopen.
- Comment with `-`.
- Auto switch `Ibus` when changing modes.
- Conceal Greek alphabet characters and some operator (`**2`, `.T`).

# tmux
- Remapped `prefix` to `Ctrl+a`.

- Focus left pane: `Ctrl+h`.
- Focus right pane: `Ctrl+l`.
- Focus up pane: `Ctrl+k`.
- Focus down pane: `Ctrl+j`.


- Kill session: `Ctrl+a Ctrl+x`.
- Kill current pane: `Ctrl+a x`

- New column pane: `Ctrl+a |`.
- New row pane: `Ctrl+a -`.

# .scripts
- nvidia: increase minimum clock base for smooth animations (consume 1-2W more).
- open_folder: fuzzy search for folders and open.

# fish functions
- py: create a `tmux session` with 2 panes for `python`. Automatically restore previous `vim` session or create a new `main.py` if there's no previous session.\
Usage: `act conda_env_name && py session_name`.
