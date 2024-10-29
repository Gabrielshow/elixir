IO.puts "Enter ten numbers:"

# Collecting ten numbers from user input
numbers = Enum.map(1..10, fn _ ->
  String.trim(IO.gets("")) |> String.to_integer()
end)

# Filtering odd numbers and calculating their sum
sum_odd_numbers = numbers
                  |> Enum.filter(fn x -> rem(x, 2) != 0 end)
                  |> Enum.sum()

IO.puts "Sum of odd numbers: #{sum_odd_numbers}"
