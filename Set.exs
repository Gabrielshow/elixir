defmodule MySet do
  defstruct items: []
end

defmodule MySetImpl do
  def push(%MySet{items: items}, item) do
    if Enum.member?(items, item) do
      %MySet{items: items}
    else
      %MySet{items: items ++ [item]}
    end
  end
end

set = %MySet{}
set = MySetImpl.push(set, "apple")

new_set = %MySet{}
new_set = MySetImpl.push(new_set, "pie")

IO.inspect MySetImpl.push(set, "apple")
IO.inspect MySetImpl.push(new_set, "apple")
