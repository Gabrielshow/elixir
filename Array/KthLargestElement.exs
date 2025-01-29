defmodule Practice.Array.KthLargestElement do
  def kth_largest_element(arr, k) do
    Enum.sort(arr, &(&2 >= &1)) |> Enum.at(k-1)
  end
end
