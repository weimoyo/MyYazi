-- ~/.config/yazi/init.lua
function Linemode:size_and_mtime()
	local time = math.floor(self._file.cha.mtime or 0)
	if time == 0 then
		time = ""
	elseif os.date("%Y", time) == os.date("%Y") then
		time = os.date("%m-%d %H:%M", time) -- 今年：月-日 时:分
	else
		time = os.date("%Y-%m-%d", time) -- 往年：年 月-日
	end
	local size = self._file:size()
	return string.format("%s %s", size and ya.readable_size(size) or "-", time)
end

return {}
