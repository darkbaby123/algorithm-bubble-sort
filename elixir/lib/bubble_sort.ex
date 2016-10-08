defmodule BubbleSort do
  def bubble_sort(list) when length(list) < 2, do: list
  def bubble_sort(list) do
    {rest, [max]} = list |> bubble_move_right |> Enum.split(-1)
    bubble_sort(rest) ++ [max]
  end

  def cocktail_shaker_sort(list) when length(list) < 2, do: list
  def cocktail_shaker_sort(list) do
    {rest, [max]} = list |> bubble_move_right |> Enum.split(-1)
    [min | rest] = rest |> bubble_move_left
    [min] ++ cocktail_shaker_sort(rest) ++ [max]
  end

  defp bubble_move_right([a]), do: [a]
  defp bubble_move_right([a, b | rest]) when a > b, do: [b | bubble_move_right([a | rest])]
  defp bubble_move_right([a, b | rest]), do: [a | bubble_move_right([b | rest])]

  defp bubble_move_left([a]), do: [a]
  defp bubble_move_left(list) do
    {rest, [a, b]} = Enum.split(list, -2)
    if a > b do
      bubble_move_left(rest ++ [b]) ++ [a]
    else
      bubble_move_left(rest ++ [a]) ++ [b]
    end
  end
end
