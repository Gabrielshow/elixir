rows = 5
cols = 5

for i <- rows..1 do
  for j <- 1..cols do
    IO.write("#{i})")
  end
  IO.puts("")
end
