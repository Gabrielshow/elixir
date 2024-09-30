defmodule MySet do
  defstruct items: []

  def push(%__MODULE__{items: items}, item) do
    if Enum.member?(items, item) do
      %__MODULE__{items: items}
    else
      %__MODULE__{items: items ++ [item]}
    end
  end
end

set = %MySet{}
set = MySet.push(set, "apple")

new_set = %MySet{}
new_set = MySet.push(new_set, "pie")

IO.inspect MySet.push(set, "apple")
IO.inspect MySet.push(new_set, "apple")
