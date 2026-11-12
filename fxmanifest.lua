---@diagnostic disable
-- AUTO-GENERATED, DO NOT EDIT.
fx_version 'cerulean'
game 'gta5'

name 'fx'
version '0.1.0'
description 'Object-oriented layer over the FiveM natives (generated)'

-- Consumer resources load '@fx/init.lua'; the other files are read on demand through
-- LoadResourceFile, so the client must download them.
-- server/*.lua is not listed: the server reads its files straight from disk.
files {
  'init.lua',
  'shared/*.lua',
  'shared/enums/*.lua',
  'client/*.lua',
}
