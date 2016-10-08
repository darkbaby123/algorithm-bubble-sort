# Bubble Sort & Cocktail Shaker Sort


## Summary

This is an algorithm practise for bubble sort and cocktail shaker sort (aka bidirection bubble sort). I implement it with JavaScript, Ruby, and Elixir.


## JavaScript version

The most detailed version. I implement 3 bubble sort functions and 2 cocktail shaker sort functions. They're:

- `bubbleSort1`, the basic bubble sort. It's used to demostrate the idea.
- `bubbleSort2`, the optimized bubble sort. It doesn't check the last n-th number in the n-th pass. See wikipedia for detail.
- `bubbleSort3`, the most optimized bubble sort. Because all elements after the last swap are sorted, it uses the last swapped index to reduce the check range. See wikipedia for detail.
- `cocktailShakerSort1`, the basic cocktail shaker sort. It's used to demonstrate the idea.
- `cocktailShakerSort2`, the optimized cocktail shaker sort. The idea is the same as `bubbleSort3` but it's bidrection.

How to run:

```bash
cd js
npm install
npm test    # run all tests
```


## Ruby version

I only implement the most optimized bubble sort and cocktail shaker sort.

How to run:

```bash
cd ruby
bundle install
./bin/rspec      # Run all tests
./bin/console    # Enter irb with lib/bubble_sort.rb loaded
```


## Elixir version

The most special version. Functional programming and immutable data are very challenging. The idea is borrowed from [here](https://rosettacode.org/wiki/Sorting_algorithms/Bubble_sort#Elixir), use recursion to implement bubble moving. The solution is not performant but is very interesting. Look at it yourself.

How to run:

```bash
cd elixir
mix test      # run all tests
iex -S mix    # Enter iex with lib/bubble_sort.ex loaded
```


## Resources

[Bubble sort](https://en.wikipedia.org/wiki/Bubble_sort)
[Cocktail shaker sort](https://en.wikipedia.org/wiki/Cocktail_shaker_sort)
