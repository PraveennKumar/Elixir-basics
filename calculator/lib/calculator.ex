defmodule Calculator do
  @moduledoc """
  Documentation for `Calculator`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Calculator.hello()
      :world

  """
  def addition(num_1 , num_2) do
    num_1 + num_2
  end

    def subtraction(num_1 , num_2) do
      num_1 - num_2
    end

    def multiply(num_1 , num_2) do
      num_1 * num_2
    end

    def divide(num_1 , num_2) do
      num_1 / num_2
    end

    def square(num) do
      num * num
    end

    def square_root(num) do
      :math.sqrt(num)
    end

    def remainder(num_1, num_2) do
      rem(num_1, num_2)
    end
end
