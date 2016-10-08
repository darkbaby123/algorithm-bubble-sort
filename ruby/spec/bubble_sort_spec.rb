RSpec.describe BubbleSort do
  shared_examples "create example" do |method_name, orig, dest|
    it "#{orig.inspect} => #{dest.inspect}" do
      expect(described_class.send(method_name, orig)).to eq(dest)
    end
  end

  shared_examples "create example group" do |method_name|
    describe method_name do
      [
        [[], []],
        [[1], [1]],
        [[2, 1], [1, 2]],
        [[2, 1, 5, 4, 3], [1, 2, 3, 4, 5]],
        [[2, 1, 3, 2, 5], [1, 2, 2, 3, 5]],
        [[1, 2, 3, 4, 5], [1, 2, 3, 4, 5]],
        [[6, 5, 3, 1, 8, 7, 2, 4], [1, 2, 3, 4, 5, 6, 7, 8]],
      ].each do |(orig, dest)|
        include_examples "create example", method_name, orig, dest
      end
    end
  end

  include_examples "create example group", "bubble_sort"
  include_examples "create example group", "cocktail_shaker_sort"
end
