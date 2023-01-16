# TMUX Cheatsheet for beginners
Here comes a minimalist list of commands that you need to know for using
`tmux`.

> :warning: Most of these commands will mention a `<prefix>`, that prefix is
binded by default to `Ctrl+b`.


## Initial commands

**Start a session** by simply using :
```bash
tmux
```
or the custom script
```bash
tat
```

---
**Detach from a session** and keep it running in background using :
```plaintext
<prefix> d
```

---
**Rename your session** to find it easily in your session list using :
```plaintext
<prefix> $
```

## Objects overview

- **Session** - A collection of one or more windows
- **Window** - A single screen, similar to "tabs" in most applications. A
    client is attached to a single window.
- **Pane** - A portion, a "split" of a window, running a single process.


## Tiling commands

**Split your window horizontally** using :
```plaintext
<prefix> -
```

---
**Split your window vertically** using :
```plaintext
<prefix> |
```

---
**Move to other panes** using :
```plaintext
<prefix> h (Left)
<prefix> j (Bottom)
<prefix> k (Top)
<prefix> l (Right)
```

## Window commands

**Create a new window** using :
```plaintext
<prefix> c
```

---
**Move to the next window** using :
```plaintext
<prefix> p
```
or using the number keys :
```
<prefix> [0,1,2,...]
```

## Copy commands

**Enter copy mode** using :
```plaintext
<prefix> [
```

And use vim controls to move, select and copy

**Exit copy mode** using :
```plaintext
Ctrl+c
```

## :bulb: Recommandations from thoughtbot
- **Use a single client** - It is better to focus on a single tmux window, even
    if you can run multiple clients. Opening a new window could be useful for
    background processes such as servers.
- **One session per project** - Vim in the first window, with a pane for
    running tests or processes, and background processes in other windows.
- **One Vim instance per session** - In order to avoid conflicts between temp
    files and buffers getting out of sync. As a session only maps to one
    project it tends to keep you safe from conflicting edits.
