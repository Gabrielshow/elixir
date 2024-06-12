defmodule Good do
	def success do
		{:ok, msg } = { :ok, "status 200, ok"}
		IO.puts("#{msg}")
	end
end

Good.success()