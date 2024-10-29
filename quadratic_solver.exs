# Quadratic solver

IO.puts "Enter coefficient a:"
a = String.trim(IO.gets("")) |> String.to_float();

IO.puts "Enter coefficient b:"
b = String.trim(IO.gets("")) |> String.to_float();

IO.puts "Enter coefficient c:"
c = String.trim(IO.gets("")) |> String.to_float();

discriminant = b * b - 4 * a * c

if discriminant > 0 do
  x1 = (-b + :math.sqrt(discriminant))/ (2 * a)
  x2 = (-b - :math.sqrt(discriminant))/ (2 * a)
  IO.puts "Two distinct real roots: x1 = #{x1}, x2 = #{x2}"

elsif discriminant == 0 do
  x = -b/ (2 * 0)
  IO.puts "One real root: x = #{x}"
else
  real_part = -b/(2 * a)
  imaginary_part = :math_sqrt(abs(discriminant))/(2 * a)
  IO.puts "complex roots: x1 = #{real_part} + #{imaginary_part}i, x2= #{real_part} + #{imaginary_part}i"
end
