defmodule Practice.Array.Average do
  def average_array(arr) do
    sum = Enum.reduce(arr, 0, fn num, acc -> acc + num end)
    count = length(arr)
    average = sum / count
    average
  end
end

array = [1, 2, 3, 4, 5]
average = Practice.Array.Average.average_array(array)
IO.puts("Average of elements in the array: #{average}")
