content = "Now is the time"

lp = with {:ok, file} = File.open("/etc/passwd"),
			content			= IO.read(file, :eof), # note: same name as above
			:ok				= File.close(file),
			[_, uid, gid]   = Regex.run(~r/^lp:.*?:(\d+):(\d+)/m, content)
		do
			"Group: #{gid}, User: #{uid}"
		end

IO.puts content
IO.puts lp
