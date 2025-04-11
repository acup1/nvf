{
  pkgs,
  lib,
  ...
}: {
  vim = {
    lazy.enable = true;
    lazy.enableLznAutoRequire = false;
    lazy.plugins = {
      "LazyVim" = {
        package = pkgs.vimPlugins.LazyVim;
        setupModule = "lazyvim";

        after = builtins.readFile ./lazy.lua;
      };
    };
    filetree.neo-tree.enable = true;
    theme = {
      enable = true;
      name = "onedark";
      style = "dark";
    };
    statusline.lualine.enable = true;
    telescope.enable = true;
    autocomplete.nvim-cmp.enable = true;

    keymaps = [
      {
        key = "\\";
        mode = "n";
        silent = true;
        action = "<Cmd>Neotree toggle<CR>";
        desc = "Neotree toggle";
      }
      {
        key = "<Tab>";
        mode = "n";
        silent = true;
        action = "<Cmd>bnext<CR>";
        desc = "next buffer";
      }
      {
        key = "<S-Tab>";
        mode = "n";
        silent = true;
        action = "<Cmd>bprevious<CR>";
        desc = "bprevious buffer";
      }
      {
        key = "<F5>";
        mode = "n";
        silent = true;
        action = "<cmd>RunFile<cr>";
        desc = "run file";
      }
      {
        key = "<leader>tt";
        mode = "n";
        silent = true;
        action = "<cmd>Themify<cr>";
        desc = "themes";
      }
    ];

    languages = {
      enableLSP = true;
      enableTreesitter = true;
      enableFormat = true;

      nix.enable = true;
      clang.enable = true;
      lua.enable = true;
    };
  };
}
