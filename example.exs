defmodule Practice do
  def main do
    time = DateTime.new!(Date.new!(2026, 1, 1), Time.new(0,0,0,0), "Etc/UTC")
    time_till = DateTime.diff(time, DateTime.utc_now())
    IO.puts(time_till)

    days = div(time_till, 86_400)
    IO.puts(days)
    hours = div(rem(time_till, 86_400), 60 * 60)
    IO.puts(hours)
    mins = div(rem(time_till, 60 * 60), 60)
    IO.puts(mins)
    seconds = rem(time_till, 60)
    IO.puts(seconds)

    IO.puts("Time until new year: #{days} days, #{hours} hours, #{mins} minutes, #{seconds} seconds")
  end
  end
