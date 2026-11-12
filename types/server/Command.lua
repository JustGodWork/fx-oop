---@meta
---@diagnostic disable
-- fx.Command (server): LuaLS annotations. AUTO-GENERATED, DO NOT EDIT.

---A parameter shown by the chat suggestion and the usage line.
---@class fx.CommandParam
---@field name string
---@field help? string

---@class fx.CommandOptions
---@field args? (fx.SchemaSpec|"...")[] Argument contract, like fx.Rpc: the text of an argument is converted when its spec starts with `integer`, `number` or `boolean` (`"true"`, `"1"`, `"yes"`); a last `"..."` passes the extra arguments unchecked
---@field rest? boolean The last argument takes the rest of the line (`/me waves at everyone`)
---@field help? string Text of the chat suggestion
---@field params? fx.CommandParam[] Parameters of the chat suggestion and of the usage line
---@field restricted? boolean Server: only players with the ACE `command.<name>` can use it

---What a command handler receives before its arguments.
---@class fx.CommandContext
---@field name string
---@field source integer Server id of the player, 0 for the server console (and on the client)
---@field player? fx.Player Server side: the player who typed it, nil for the console
---@field raw string The whole line, without the slash
---@field reply fun(message: string) Chat message to the player who typed it, or a console print

---`fx.Command(name, options?, handler)`: registers a chat / console command whose arguments are converted and checked
---before the handler runs. An invalid call answers with the usage line and the reason; an error in the handler is
---logged.
---```lua
---fx.Command("car", {
---  args = { "string:32", "integer?" },
---  params = { { name = "model" }, { name = "count", help = "1 by default" } },
---  help = "Spawns a vehicle",
---  restricted = true,
---}, function(ctx, model, count)
---  ctx.reply(("spawning %d %s"):format(count or 1, model))
---end)
---```
---@class fx.Command
---@overload fun(name: string, options: fx.CommandOptions, handler: fun(ctx: fx.CommandContext, ...: any))
---@overload fun(name: string, handler: fun(ctx: fx.CommandContext, ...: any))
local CommandStatic = {}

