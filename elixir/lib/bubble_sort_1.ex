defmodule BubbleSort1 do
  def sort(list), do: do_sort(list, [], false)

  defp do_sort([], acc, false), do: Enum.reverse(acc)
  defp do_sort([], acc, true), do: do_sort(Enum.reverse(acc), [], false)
  defp do_sort([a, b | rest], acc, _swapped) when a > b, do: do_sort([a | rest], [b | acc], true)
  defp do_sort([a | rest], acc, swapped), do: do_sort(rest, [a | acc], swapped)
end
