# dotfiles

Minimal configs for Neovim and WezTerm — no plugin managers, no bloat.

---

## Neovim

### Install

**1. Install Neovim** (0.9+)

```bash
# macOS
brew install neovim

# Ubuntu/Debian
sudo apt install neovim
```

**2. Copy the config**

```bash
mkdir -p ~/.config/nvim
cp nvim/init.lua ~/.config/nvim/init.lua
```

**3. Open Neovim**

```bash
nvim
```

That's it — no `:PackerSync`, no `:Lazy`, nothing extra.

---

### Key bindings

`Space` is the leader key.

| Key | Mode | Action |
|-----|------|--------|
| `Space w` | Normal | Save file |
| `Space q` | Normal | Close window |
| `Space e` | Normal | File explorer (built-in) |
| `Space g` | Normal | Open lazygit in a vertical terminal split |
| `Ctrl+h/j/k/l` | Normal | Move between splits |
| `Esc` | Normal | Clear search highlight |
| `J` / `K` | Visual | Move selected lines down / up |

---

### Essential Neovim commands

| Command | What it does |
|---------|--------------|
| `nvim file.txt` | Open a file |
| `i` | Enter insert mode (start typing) |
| `Esc` | Return to normal mode |
| `:w` | Save |
| `:q` | Quit |
| `:wq` | Save and quit |
| `/word` | Search forward |
| `n` / `N` | Next / previous search result |
| `yy` | Copy current line |
| `dd` | Delete current line |
| `p` | Paste |
| `u` | Undo |
| `Ctrl+r` | Redo |
| `gg` / `G` | Go to top / bottom of file |
| `Ctrl+w v` | Split vertically |
| `Ctrl+w s` | Split horizontally |

---

## WezTerm

**1. Install WezTerm** → [wezterm.org](https://wezfurlong.org/wezterm/)

**2. Copy the config**

```bash
cp wezterm/wezterm.lua ~/.wezterm.lua
```

### Key bindings

| Key | Action |
|-----|--------|
| `Ctrl+Shift+T` | New tab |
| `Ctrl+Shift+W` | Close tab |
| `Ctrl+Shift+C` | Copy |
| `Ctrl+Shift+V` | Paste |
| `Ctrl+Shift+G` | Open lazygit in a new tab |
| `Ctrl+=` / `Ctrl+-` | Increase / decrease font size |
| `Ctrl+0` | Reset font size |

---

## lazygit

A terminal UI for Git — review commits, diffs, and branches before pushing.

**Install**

```bash
brew install lazygit
```

**Usage**

| Where | Key | Action |
|-------|-----|--------|
| WezTerm | `Ctrl+Shift+G` | Open lazygit in a new tab |
| Neovim | `Space g` | Open lazygit in a vertical split |
| Terminal | `lazygit` | Run directly |

**Key bindings inside lazygit**

| Key | Action |
|-----|--------|
| `d` | View diff of selected commit / file |
| `P` | Push to remote |
| `p` | Pull from remote |
| `c` | Commit staged changes |
| `space` | Stage / unstage file |
| `q` | Quit |
