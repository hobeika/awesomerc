---------------------------------------------------------------------------
-- @author Vincent Hobeïka &lt;vincent.hobeika@gmail.com&gt;
-- @copyright 2013 Vincent Hobeïka
-- @release v3.4.13
---------------------------------------------------------------------------

local setmetatable = setmetatable
local capi = { widget = widget,
               timer = timer }

--- Text load average widget.
module("hobeika.widget.textloadavg")

-- Execute a command and return its output. We may not only execute
-- commands with a one line output.
function execute_command(command)
   local fh = io.popen(command)
   local str = ""
   for i in fh:lines() do
      str = str .. i
   end
   io.close(fh)
   return str
end

--- Create a textloadavg widget. It draws the average load of the system in a textbox.
-- @param args Standard arguments for textbox widget.
-- @param timeout How often update the time. Default is 60.
-- @return A textbox widget.
function new(args, timeout)
    local args = args or {}
    local timeout = timeout or 60
    args.type = "textbox"
    local w = capi.widget(args)
    local timer = capi.timer { timeout = timeout }
    w.text = execute_command("cat /proc/loadavg | cut -c -9") .. " "
    timer:add_signal("timeout", function() w.text = execute_command("cat /proc/loadavg | cut -c -9") .. " " end)
    timer:start()
    return w
end

setmetatable(_M, { __call = function(_, ...) return new(...) end })
