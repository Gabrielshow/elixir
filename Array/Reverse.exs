defmodule Practice.Array.Reverse do
  def reverse_array(arr) do
    Enum.reverse(arr)
  end
end

array = [1, 2, 3, 4, 5]
reversed_array = Practice.Array.Reverse.reverse_array(array)
IO.inspect(reversed_array)
