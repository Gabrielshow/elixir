IO.puts "Enter a number to find the sum of even numbers up to"

number = String.trim(IO.gets(""))
 |> String.to_integer()

# Check if the number is less than 2
if number < 2 do
  IO.puts "Please enter a number greater than or equal to 2."
else
  # Calculate the sum of even numbers from 2 to the entered number
  sum = Enum.sum(Enum.filter(2..number, fn x -> rem(x, 2) == 0 end))
  IO.puts "Sum of even numbers from 2 to #{number}: #{sum}"
end
