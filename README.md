# 🌿 tokusa.nvim

木賊(tokusa) - A dark green colorscheme for Neovim

## Installation

### lazy.nvim

```lua
{
  "aidyak/tokusa",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("tokusa")
  end,
}
```

以下動作確認をしていないので、ご自身でトライしてみてください。
何が問題があればPRをください。

### packer.nvim

```lua
use {
  "aidyak/tokusa",
  config = function()
    vim.cmd.colorscheme("tokusa")
  end,
}
```

### vim-plug

```vim
Plug 'aidyak/tokusa'

" After plug#end()
colorscheme tokusa
```

### dein.vim

```vim
call dein#add('aidyak/tokusa')

" In your config
colorscheme tokusa
```

### mini.deps

```lua
MiniDeps.add({ source = "aidyak/tokusa" })
vim.cmd.colorscheme("tokusa")
```

### Manual

```bash
git clone https://github.com/aidyak/tokusa ~/.local/share/nvim/site/pack/plugins/start/tokusa
```

Then add to your config:

```lua
vim.cmd.colorscheme("tokusa")
```

