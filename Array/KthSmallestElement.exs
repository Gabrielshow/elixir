defmodule Practice.Array.KthSmallestElement do
  def kth_smallest_element(arr, k) do
    Enum.sort(arr) |> Enum.at(k-1)
  end
end

array = [9, 1, 2, 7, 0]
kth_smallest_element = Practice.Array.KthSamllestElement.kth_smallest_element(arr, 2)
IO.puts("kth smallest element: #{kth_smallest_element}")
