defmodule Practice.Array.LeftShiftArray do
  def rotate_left(arr, positions) do
    length = length(arr)
    shift_amount= rem(positions, length)

    adjusted_shift_amount = if shift_amount < 0 do
      length + shift_amount
    else
      shift_amount
    end

    Enum.drop(arr, adjusted_shift_amount) ++ Enum.take(arr, adjusted_shift_amount)
  end
end

array = [1, 2, 3, 4, 5]
rotated = Practice.Array.LeftShiftArray.rotate_left(array, -2)
IO.inspect(rotated)
