# Bubble Sort & Cocktail Shaker Sort


## Summary

This is a algorithm practise for bubble sort and cocktail shaker sort (aka bidirection bubble sort). I implemented the JavaScript version. Ruby version and Elixir version will be done later.

In JavaScript version I implement 3 bubble sort functions and 2 cocktail shaker sort functions. They're:

- `bubbleSort1`, the basic bubble sort. It's used to demostrate the idea.
- `bubbleSort2`, the optmized bubble sort. It doesn't check the last n-th number in the n-th pass. See wikipedia for detail.
- `bubbleSort3`, the most optmized bubble sort. Because all elements after the last swap are sorted, it uses the last swapped index to reduce the check range. See wikipedia for detail.
- `cocktailShakerSort1`, the basic cocktail shaker sort. It's used to demonstrate the idea.
- `cocktailShakerSort2`, the optimized cocktail shaker sort. The idea is the same as `bubbleSort3` but it's bidrection.


## How to run

Run JavaScript version

```bash
cd js
npm test # run all tests
```
