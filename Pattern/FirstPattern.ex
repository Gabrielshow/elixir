rows = 4
cols = 4

for i <- 1..rows do
  for j <- 1..cols do
    IO.write("#{i}")
  end
  IO.puts('')
end
