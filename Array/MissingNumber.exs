defmodule Practice.Array.MissingNumber do
  def find_missing_number_in_consecutive_sequence(arr) do
    n = length(arr) + 1
    expected_sum = (n * n(n+1))/2
    actual_sum = Enum.reduce(arr, 0 , &(&1 + &2))
    expected_sum - actual_sum
  end
end

array = [1, 2, 3, 5, 6]
missing_number = Practice.Array.MissingNumber.find_missing_number_in_consecutive_sequence(array)
IO.puts("Missing number: #{missing_number}")
