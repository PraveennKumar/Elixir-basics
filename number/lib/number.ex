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
     rem(num_1 , 2) == 0
   end

   def is_odd?(num_1) do
     rem(num_1 , 2) !== 0
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
     num <= 0 -> false
     num > 0 ->
     count = for n <- 1..num do
     rem(num, n) === 0
    end
     Enum.count(count, &(&1 == true)) === 2
    end
    end

    def loop() do
      for n <- 1..10 do
        n
      end
    end

    @spec loop_multiply :: list
    def loop_multiply() do
      for n <- 1..20 do
        n  |> Number.is_prime?()
      end
    end

    def palindrome(n) do

         reverse_string = n  |>  Integer.to_string() |> String.reverse()
         reverse_string === Integer.to_string(n)
    end
end
