function bubbleSort1(origArr) {
  const arr = origArr.slice()
  let swapped = true // trigger the first while loop

  while (swapped) {
    swapped = false
    for (let i = 1; i < arr.length; i++) {
      if (arr[i-1] > arr[i]) {
        swap(arr, i-1, i)
        swapped = true
      }
    }
  }

  return arr
}

function bubbleSort2(origArr) {
  const arr = origArr.slice()
  let swapped = true // trigger the first while loop
  let max = arr.length - 1

  while (swapped) {
    swapped = false
    for (let i = 1; i <= max; i++) {
      if (arr[i-1] > arr[i]) {
        swap(arr, i-1, i)
        swapped = true
      }
    }
    max--
  }

  return arr
}

function bubbleSort3(origArr) {
  const arr = origArr.slice()
  let max = arr.length - 1

  while (max) {
    let newMax = 0
    for (let i = 1; i <= max; i++) {
      if (arr[i-1] > arr[i]) {
        swap(arr, i-1, i)
        newMax = i-1
      }
    }
    max = newMax
  }

  return arr
}

function cocktailShakerSort1(origArr) {
  const arr = origArr.slice()
  let swapped = true

  while (swapped) {
    swapped = false
    for (let i = 1; i < arr.length; i++) {
      if (arr[i-1] > arr[i]) {
        swap(arr, i-1, i)
        swapped = true
      }
    }

    if (!swapped) break

    swapped = false
    for (let j = arr.length - 1; j > 0; j--) {
      if (arr[j-1] > arr[j]) {
        swap(arr, j-1, j)
        swapped = true
      }
    }
  }

  return arr
}

function cocktailShakerSort2(origArr) {
  const arr = origArr.slice()
  let min = 1
  let max = arr.length - 1

  while (min <= max) {
    let newMax = 0
    for (let i = min; i <= max; i++) {
      if (arr[i-1] > arr[i]) {
        swap(arr, i-1, i)
        newMax = i-1
      }
    }
    max = newMax
    if (!max) break

    let newMin = 0
    for (let j = max; j >= min; j--) {
      if (arr[j-1] > arr[j]) {
        swap(arr, j-1, j)
        newMin = j+1
      }
    }
    min = newMin
    if (!min) break
  }

  return arr
}

function swap(arr, i, j) {
  const t = arr[i]
  arr[i] = arr[j]
  arr[j] = t
}

module.exports = {
  bubbleSort1,
  bubbleSort2,
  bubbleSort3,
  cocktailShakerSort1,
  cocktailShakerSort2,
}
