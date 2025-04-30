{
  pkgs,
  lib,
  ...
}: {
  vim = {
    lazy.enable = true;
    lazy.enableLznAutoRequire = true;
    lazy.plugins = {
      #lzn-auto-require = {
      #  package = "lzn-auto-require";
      #  setupModule = "lzn-auto-require";
      #  after = ''require("lzn-auto-require").enable()'';
      #};
      #lz-n = {
      #  package = "lz-n";
      #  setupModule = "lz-n";
      #};
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
    #statusline.lualine.enable = true;
    #telescope.enable = true;
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
        key = "<c-Y>";
        mode = "n";
        silent = true;
        action = "<Cmd>Yazi toggle<CR>";
        desc = "Yazi toggle";
      }
      {
        key = "<c-?>";
        mode = "n";
        silent = true;
        action = "<Cmd>ToggleTerm<CR>";
        desc = "ToggleTerm";
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
      {
        key = "<D-Space>";
        mode = ["n" "i"];
        silent = true;
        noremap = true;
        action = "<Nop>";
        desc = "DONT WRITE THIS!!!";
      }
    ];

    languages = {
      enableLSP = true;
      enableTreesitter = true;
      enableFormat = true;

      nix.enable = true;
      clang.enable = true;
      lua.enable = true;
      bash.enable = true;
    };
  };
}
