IO.puts "Enter three numbers:"
{num1, num2, num3} = Enum.map(1..3, fn(_) -> String.trim(IO.gets("")) |> String.to_integer() end)
sorted_nums = Enum.sort([num1, num2, num3])
middle_number = Enum.at(sorted_nums, 1)
IO.puts "The middle number is: #{middle_number}"
