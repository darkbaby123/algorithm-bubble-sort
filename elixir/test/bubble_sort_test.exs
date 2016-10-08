defmodule BubbleSortTest do
  use ExUnit.Case
  doctest BubbleSort

  test "bubble_sort" do
    assert BubbleSort.bubble_sort([]) == []
    assert BubbleSort.bubble_sort([1]) == [1]
    assert BubbleSort.bubble_sort([2, 1]) == [1, 2]
    assert BubbleSort.bubble_sort([2, 1, 5, 4, 3]) == [1, 2, 3, 4, 5]
    assert BubbleSort.bubble_sort([2, 1, 3, 2, 5]) == [1, 2, 2, 3, 5]
    assert BubbleSort.bubble_sort([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
    assert BubbleSort.bubble_sort([6, 5, 3, 1, 8, 7, 2, 4]) == [1, 2, 3, 4, 5, 6, 7, 8]
  end

  test "cocktail_shaker_sort" do
    assert BubbleSort.cocktail_shaker_sort([]) == []
    assert BubbleSort.cocktail_shaker_sort([1]) == [1]
    assert BubbleSort.cocktail_shaker_sort([2, 1]) == [1, 2]
    assert BubbleSort.cocktail_shaker_sort([2, 1, 5, 4, 3]) == [1, 2, 3, 4, 5]
    assert BubbleSort.cocktail_shaker_sort([2, 1, 3, 2, 5]) == [1, 2, 2, 3, 5]
    assert BubbleSort.cocktail_shaker_sort([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
    assert BubbleSort.cocktail_shaker_sort([6, 5, 3, 1, 8, 7, 2, 4]) == [1, 2, 3, 4, 5, 6, 7, 8]
  end
end
