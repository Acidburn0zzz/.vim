Pretty standard stuff, except the plugins/autosess.vim, which is a customized
version of https://github.com/powerman/vim-plugin-autosess, which I tihnk is much
more useful: it always saves your session, even if you only have one file open
(unlike the original). So now when you open a file in vim, you can close vim and
reopen and it'll stay. It also saves constantly, meaning even if vim or your
computer crashes, your current session will be saved. NOTE: The sessions are
per-directory, so you'll need to open vim from the same directory to get the same
session again. If you tell vim to open a specific file "vim file.c" instead of
just "vim", it'll overwrite the session for that directory.

The other custom edit is in vimrc, which creates a statusline which shows the file
path and the previous two directories. So if you're currently opening a file
at /home/you/projects/my_project/src/file.c, it'll show my_project/src/file.c in
the statusline. (It handles directories that don't have two parents just fine as
well).
