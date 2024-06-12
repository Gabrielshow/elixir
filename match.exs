defmodule Match do
	def atoms do
		{:error, reason } = {:error, "file not found"}
		IO.puts("#{reason}")
	end
end

Match.atoms()