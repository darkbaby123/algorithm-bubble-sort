defmodule BubbleSortOld2 do
  def bubble_sort(list, acc \\ [])
  def bubble_sort(list, acc) when length(list) < 2, do: list ++ acc
  def bubble_sort(list, acc) do
    {rest, sorted} = bubble_move_right(list)
    bubble_sort(rest, sorted ++ acc)
  end

  def cocktail_shaker_sort(list, left_acc \\ [], right_acc \\ [])
  def cocktail_shaker_sort(list, left_acc, right_acc) when length(list) < 2 do
    left_acc ++ list ++ right_acc
  end
  def cocktail_shaker_sort(list, left_acc, right_acc) do
    {rest, right_sorted} = bubble_move_right(list)
    {rest, left_sorted} = bubble_move_left(rest)
    cocktail_shaker_sort(rest, left_acc ++ left_sorted, right_sorted ++ right_acc)
  end

  defp bubble_move_right(list) do
    bubble_move(list, 0, 0, [], &(&1 > &2))
  end

  defp bubble_move_left(list) do
    {rest, sorted} = bubble_move(Enum.reverse(list), 0, 0, [], &(&1 < &2))
    {Enum.reverse(rest), Enum.reverse(sorted)}
  end

  defp bubble_move([], _idx, swapped_idx, acc, _comparer) do
    acc |> Enum.reverse |> Enum.split(swapped_idx)
  end
  defp bubble_move([a], idx, swapped_idx, acc, comparer) do
    bubble_move([], idx, swapped_idx, [a | acc], comparer)
  end
  defp bubble_move([a, b | rest], idx, swapped_idx, acc, comparer) do
    if comparer.(a, b) do
      bubble_move([a | rest], idx + 1, idx + 1, [b | acc], comparer)
    else
      bubble_move([b | rest], idx + 1, swapped_idx, [a | acc], comparer)
    end
  end
end
