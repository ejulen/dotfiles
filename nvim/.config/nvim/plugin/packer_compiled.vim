" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/johannes/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/johannes/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/johannes/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/johannes/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/johannes/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\bfoo¢\2\1\0\b\0\19\0!6\0\0\0'\2\1\0B\0\2\0029\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0029\3\5\0015\4\n\0005\5\6\0004\6\3\0009\a\a\2>\a\1\0069\a\b\2>\a\2\6=\6\t\5=\5\v\4>\4\1\0039\3\5\0015\4\17\0005\5\r\0003\6\f\0=\6\14\0054\6\3\0009\a\15\2>\a\1\0069\a\16\2>\a\2\6=\6\t\5=\5\18\4>\4\2\3K\0\1\0\14Signature\1\0\0\abg\tcyan\rprovider\1\0\0\0\rFileName\1\0\0\14highlight\rdarkblue\fmagenta\1\0\1\rprovider\rFileName\tleft\fdefault\21galaxyline.theme\fsection\15galaxyline\frequire\0" },
    loaded = true,
    path = "/home/johannes/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\n¡\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vsource\1\0\4\rnvim_lsp\2\tcalc\2\tpath\2\vbuffer\2\1\0\4\18documentation\2\14preselect\venable\17autocomplete\2\fenabled\2\nsetup\ncompe\frequire\0" },
    loaded = true,
    path = "/home/johannes/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/johannes/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/johannes/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/johannes/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/johannes/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/johannes/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/johannes/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  }
}

-- Config for: galaxyline.nvim
try_loadstring("\27LJ\2\n\19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\bfoo¢\2\1\0\b\0\19\0!6\0\0\0'\2\1\0B\0\2\0029\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0029\3\5\0015\4\n\0005\5\6\0004\6\3\0009\a\a\2>\a\1\0069\a\b\2>\a\2\6=\6\t\5=\5\v\4>\4\1\0039\3\5\0015\4\17\0005\5\r\0003\6\f\0=\6\14\0054\6\3\0009\a\15\2>\a\1\0069\a\16\2>\a\2\6=\6\t\5=\5\18\4>\4\2\3K\0\1\0\14Signature\1\0\0\abg\tcyan\rprovider\1\0\0\0\rFileName\1\0\0\14highlight\rdarkblue\fmagenta\1\0\1\rprovider\rFileName\tleft\fdefault\21galaxyline.theme\fsection\15galaxyline\frequire\0", "config", "galaxyline.nvim")
-- Config for: nvim-compe
try_loadstring("\27LJ\2\n¡\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vsource\1\0\4\rnvim_lsp\2\tcalc\2\tpath\2\vbuffer\2\1\0\4\18documentation\2\14preselect\venable\17autocomplete\2\fenabled\2\nsetup\ncompe\frequire\0", "config", "nvim-compe")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
