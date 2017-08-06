defmodule BubbleSort2 do
  def sort(list), do: do_sort(list, false, [], [])

  defp do_sort([], false, [], final), do: final

  defp do_sort([], false, bubbled, final), do: Enum.reverse(bubbled, final)

  defp do_sort([], true, [a | rest], final) do
    do_sort(Enum.reverse(rest), false, [], [a | final])
  end

  defp do_sort([a, b | rest], _swapped, bubbled, final) when a > b do
    do_sort([a | rest], true, [b | bubbled], final)
  end

  defp do_sort([a | rest], swapped, bubbled, final) do
    do_sort(rest, swapped, [a | bubbled], final)
  end
end
