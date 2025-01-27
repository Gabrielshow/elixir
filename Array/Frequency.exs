defmodule Practice.Array.Frequency do
  def element_frequency(arr) do
    Enum.reduce(arr, %{}, fn num, acc ->
      Map.update(acc, num, 1, &(&1 + 1))
    end)
  end
end

array = [1, 2, 2, 3, 3,3, 4,4,4,4]
frequency_map = Practice.Array.Frequency.element_frequency(array)
IO.inspect(frequency_map)
