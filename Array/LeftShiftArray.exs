defmodule Practice.Array.LeftShiftArray do
  def rotate_left(arr, positions) do
    length = length(arr)
    shift_amount= rem(positions, length)

    if shift_amount < 0 do
      shift_amount = length + shift_amount
    end

    Enum.drop(arr, shift_amount) ++ Enum.take(arr, shift_amount)
  end
end

array = [1, 2, 3, 4, 5]
rotated = Practice.Array.LeftShiftArray.rotate_left(array, -2)
IO.inspect(rotated)
