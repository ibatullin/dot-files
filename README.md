# Dot files

## vim

### Nerdtree
Ctrl+N — open Nerdtree

### a
* :A switches to the header file corresponding to the current file being edited (or vise versa)
* :AS splits and switches
* :AV vertical splits and switches
* :AT new tab and switches
* :AN cycles through matches
* :IH switches to file under cursor
* :IHS splits and switches
* :IHV vertical splits and switches
* :IHT new tab and switches
* :IHN cycles through matches
* <Leader>ih switches to file under cursor
* <Leader>is switches to the alternate file of file under cursor (e.g. on  <foo.h> switches to foo.cpp)
* <Leader>ihn cycles through matches

### [Commentary](https://github.com/tpope/vim-commentary)

Comment stuff out. Use gcc to comment out a line (takes a count), gc to comment out the target of a motion (for example, gcap to comment out a paragraph), gc in visual mode to comment out the selection, and gc in operator pending mode to target a comment. You can also use it as a command, either with a range like :7,17Commentary, or as part of a :global invocation like with :g/TODO/Commentary. That's it.


## git

### Aliases

#### Statistics
`git stats`

#### Show Changed Words Instead of Whole Lines
`git worddiff`

#### See Which Branches You Recently Worked On
`git recent`

#### See What Everyone’s Been Getting Up To
`git overview`
`git overview --since='2 weeks'`

#### Remind Yourself What You’ve Been Up To
`git recap`

#### Today’s Work
`git today`

#### Check Which Changes You’re About to Pull
`git upstream origin/feature/fonts`

#### Review What You’re About to Push
`git local feature/fonts`

#### Generate a Changelog
`git changelog 1.0`

#### View Complex Logs
`git graph`

#### View Simple Logs
`git lg`
