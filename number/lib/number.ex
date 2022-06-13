defmodule Number do
  @moduledoc """
  Documentation for `Number`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Number.hello()
      :world

  """
  def is_even?(num_1) do
    rem(num_1, 2) == 0
  end

  def is_odd?(num_1) do
    rem(num_1, 2) !== 0
  end

  defp is_minimum() do
    list = [2, 4, 5, 87, 75]
    Enum.min(list)
  end

  defp is_maximum() do
    list = [2, 4, 5, 87, 75]
    Enum.max(list)
  end

  def max_min() do
    "largest : #{is_maximum()}, smallest : #{is_minimum()}"
  end

  def is_prime?(num) do
    cond do
      num <= 0 ->
        false

      num > 0 ->
        count =
          for n <- 1..num do
            rem(num, n) === 0
          end

        Enum.count(count, &(&1 == true)) === 2
    end
  end

  # Write a program to check whether the last digit of a number (entered by user) is divisible by 3 or not
  def div_three(num) do
    num |> Integer.to_string() |> String.last() |> String.to_integer() |> rem(3) === 0
  end
  # Write a program to accept percentage from the user and display the grade according to the following criteria:

  # Marks                                    Grade
  # > 90                                      A
  # > 80 and <= 90                            B
  # >= 60 and <= 80                           C
  # below 60                                  D
  def school_marks(num) do
   cond do
   num > 90 -> "Grade :A"
   num > 80 and num <= 90 -> "Grade :B"
   num >= 60 and num <= 80 -> "Grade :C"
   num < 60 -> "Grade :D"
    end
  end


  # Write a program to accept a number from 1 to 7 and display the name of the day like 1 for Sunday , 2 for Monday and so on.
  def days_inNumb(num)do
    cond do
    num == 1 -> "Sunday"
    num == 2 -> "Monday"
    num == 3 -> "Tuesday"
    num == 4 -> "Wednesday"
    num == 5 -> "Thrusday"
    num == 6 -> "Friday"
    num == 7 -> "Saturday"
    end
  end

  # Write a program to accept a number from 1 to 12 and display name of the month and days in that month like 1 for January and number of days 31 and so on.
  def month_inNumb(num)do
    cond do
    num == 1 -> "January"
    num == 2 -> "February"
    num == 3 -> "March"
    num == 4 -> "April"
    num == 5 -> "May"
    num == 6 -> "June"
    num == 7 -> "July"
    num == 8 -> "August"
    num == 9 -> "September"
    num == 10 -> "October"
    num == 11 -> "November"
    num == 12 -> "December"
    end
  end

  #write a program which will print 1 to 10
  def loop() do
    for n <- 1..10 do
      n
    end
  end


  #write a program which gives prime number or not
  def prime_number(num) do
    for n <- 1..num do
      n |> Number.is_prime?()
    end
  end

  #Write a  program which shows integer when it reads the same backward as forward.
  def palindrome(n) do
    reverse_string = n |> Integer.to_string() |> String.reverse()
    reverse_string === Integer.to_string(n)
  end

  # Program to print half pyramid using *
# *
# * *
# * * *
# * * * *
# * * * * *
  def pyramid(str) do
     for n <- 1..str do
      IO.puts(String.duplicate("*" , n))
     end
  end

  # Opposite Program to print half pyramid using *
  def opposite_pyramid(str) do
    for n <- str..1 do
     IO.puts(String.duplicate("*" , n))
    end
 end

#  Program to print full pyramid using
  #          *
  #        * * *
  #      * * * * *
  #    * * * * * * *
  #  * * * * * * * * *
  def increasing_pyramid(rows) do
    for n <- 1..rows, rem(n, 2) != 0 do #3
      IO.puts("pyramid : #{String.duplicate(" ", div(rows-n, 2))}#{String.duplicate("*", n)}")
    end
  end

  def leap_year?(year) do
    rem(year, 4) == 0 && rem(year, 100) != 0 || rem(year, 400) == 0
  end

 def number_pyramid(num) do
   for n <- 1..num do
     IO.puts(String.duplicate("*" , n))
    end
  end


  def triangle(n) do
    max = trunc(n * (n + 1) / 2)
    widths = for m <- (max - n + 1)..max, do: (m |> Integer.to_string |> String.length) + 1
    format = Enum.map(widths, fn wide -> "~#{wide}w" end) |> List.to_tuple
    line(n, 0, 1, format)
  end

  def line(n, n, _, _), do: :ok
  def line(n, i, count, format) do
    Enum.each(0..i, fn j -> :io.fwrite(elem(format,j), [count+j]) end)
    IO.puts ""
    line(n, i+1, count+i+1, format)
  end
end
