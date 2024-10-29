IO.puts "Enter a number"

number = String.trim(IO.gets(""))
    |> String.to_integer()

if rem(number, 4) == 0 and rem(number, 6) == 0 do
    IO.puts "#{number} is divisible by both 4 and 6"
else
    IO.puts "#{number} is not divisible by both 4 and 6"
end
