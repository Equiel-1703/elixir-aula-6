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

  def soma_lista_tuplas([]), do: 0

  def soma_lista_tuplas([{a, b} | t]) do
    a + b + soma_lista_tuplas(t)
  end

  def zip([], _l_2), do: []
  def zip(_l_1, []), do: []

  def zip([h_1 | t_1], [h_2 | t_2]) do
    [{h_1, h_2} | zip(t_1, t_2)]
  end

  defp unzip_esq([]), do: []

  defp unzip_esq([{a, _b} | t]) do
    [a | unzip_esq(t)]
  end

  defp unzip_dir([]), do: []

  defp unzip_dir([{_a, b} | t]) do
    [b | unzip_dir(t)]
  end

  def unzip([]), do: []

  def unzip(l) do
    {unzip_esq(l), unzip_dir(l)}
  end
end
