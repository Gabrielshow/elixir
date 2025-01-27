defmodule Practice.Array.MajorityElement do
  def majority_element(arr) do
    majority_count = length(arr) div 2
    frequencies = Enum.frequencies(arr)
    Enum.find_value(frequencies, fn{num, freq} -> freq > majority_count && num end)
  end
end

array = [2, 2, 3, 3, 2, 3,2 ]
majority = Practice.Array.MajorityElement(array)
IO.puts("Majority element: #{majority}")
