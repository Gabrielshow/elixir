defmodule Practice.Array.CountEven do
  def count_even_odd(arr) do
    [even_count, odd_count] = Enum.reduce(arr, [0, 0], fn num, [even_acc, odd_acc] ->
      if rem(num, 2) == 0 do
        [even_acc + 1, odd_acc]
      else
        [even_acc, odd_acc + 1]
      end
    end)
    [even_count, odd_count]
  end
end

array = [1, 2, 3, 4, 5]
[even_count, odd_count] = Practice.Array.CountEven.count_even_odd(array)
IO.puts("Even elements count: #{even_count}")
IO.puts("Odd eleements count: #{odd_count}")
