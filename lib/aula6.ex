defmodule Aula6 do
  def soma_tuplas({{a, b}, {c, d}}) do
    a + b + c + d
  end

  def shift({{x, y}, z}) do
    {x, {y, z}}
  end

  defp min(x, y, z) do
    cond do
      x <= y && x <= z -> x
      y <= x && y <= z -> y
      true -> z
    end
  end

  defp max(x, y, z) do
    cond do
      x >= y && x >= z -> x
      y >= x && y >= z -> y
      true -> z
    end
  end

  def min_e_max(x, y, z), do: {min(x, y, z), max(x, y, z)}
end
