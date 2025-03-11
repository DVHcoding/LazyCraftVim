# LazyCraftVim

**LazyCraftVim** is a minimal, yet powerful, Neovim configuration that builds upon the **LazyVim** framework. This project offers a customized setup with all the essential configurations, ensuring a smooth, efficient, and aesthetically pleasing development experience. Along with a carefully crafted **colorscheme**, it optimizes your workflow and enhances your productivity.

## Features

- **LazyVim Customizations**: Pre-configured settings and key mappings designed to improve your editing experience.
- **Colorscheme**: A clean, easy-on-the-eyes theme that helps reduce eye strain and improves code readability.
- **Plugin Management**: Powered by [Lazy.nvim](https://github.com/folke/lazy.nvim), ensuring fast and efficient plugin loading.
- **Lightweight Setup**: Simple and minimal setup that doesn’t get in the way of your workflow, while still offering powerful features.

## Installation

To install LazyCraftVim, follow the steps below:

### Prerequisites

- Neovim (version 0.7 or higher)
- [Lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager

### Steps

1. **Install Neovim** (if you haven’t already):

   - Follow the installation guide for your system from [Neovim's website](https://neovim.io/).

2. **Install LazyVim**:

   If you're using a plugin manager like `lazy.nvim`, add LazyCraftVim to your plugins list:

   ```lua
   require("lazy").setup({
       -- Other plugins ...
       { "your-username/LazyCraftVim" },
   })
   ```
