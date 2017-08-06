defmodule BubbleSort3 do
  def sort(list), do: do_sort(list, [], [], [])

  defp do_sort([], [], [], final), do: final

  defp do_sort([], [], sorted, final), do: Enum.reverse(sorted, final)

  defp do_sort([], bubbled, sorted, final) do
    do_sort(Enum.reverse(bubbled), [], [], Enum.reverse(sorted, final))
  end

  defp do_sort([a, b | rest], bubbled, sorted, final) when a > b do
    # The ++ is not avoidable because both sorted and bubbled are arrays
    do_sort([a | rest], [b | sorted ++ bubbled], [], final)
  end

  defp do_sort([a | rest], bubbled, sorted, final) do
    do_sort(rest, bubbled, [a | sorted], final)
  end
end
