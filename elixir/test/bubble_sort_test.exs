defmodule BubbleSortTest do
  use ExUnit.Case
  doctest BubbleSort3

  test "bubble_sort" do
    assert BubbleSort3.sort([]) == []
    assert BubbleSort3.sort([1]) == [1]
    assert BubbleSort3.sort([2, 1]) == [1, 2]
    assert BubbleSort3.sort([2, 1, 5, 4, 3]) == [1, 2, 3, 4, 5]
    assert BubbleSort3.sort([2, 1, 3, 2, 5]) == [1, 2, 2, 3, 5]
    assert BubbleSort3.sort([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
    assert BubbleSort3.sort([6, 5, 3, 1, 8, 7, 2, 4]) == [1, 2, 3, 4, 5, 6, 7, 8]
  end
end
