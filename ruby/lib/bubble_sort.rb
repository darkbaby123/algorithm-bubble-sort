module BubbleSort
  def self.bubble_sort(orig_arr)
    arr = orig_arr.dup
    max = arr.size - 1

    while !max.zero?
      new_max = 0
      1.upto max do |i|
        if arr[i-1] > arr[i]
          arr[i-1], arr[i] = arr[i], arr[i-1]
          new_max = i-1
        end
      end
      max = new_max
    end

    arr
  end

  def self.cocktail_shaker_sort(orig_arr)
    arr = orig_arr.dup
    min, max = 1, arr.size - 1

    while min <= max
      new_max = 0
      min.upto max do |i|
        if arr[i-1] > arr[i]
          arr[i-1], arr[i] = arr[i], arr[i-1]
          new_max = i-1
        end
      end
      max = new_max
      break if max.zero?

      new_min = 0
      max.downto min do |i|
        if arr[i-1] > arr[i]
          arr[i-1], arr[i] = arr[i], arr[i-1]
          new_min = i+1
        end
      end
      min = new_min
      break if min.zero?
    end

    arr
  end
end
