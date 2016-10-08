const {
  bubbleSort1,
  bubbleSort2,
  bubbleSort3,
  cocktailShakerSort1,
  cocktailShakerSort2,
} = require('../lib/solution')

function createExampleGroup(solution) {
  function createExample(orig, dest, { focus = false } = {}) {
    const text = `${JSON.stringify(orig)} => ${JSON.stringify(dest)}`
    const fn = () => {
      expect(solution(orig)).toEqual(dest)
    }
    focus ? it.only(text, fn) : it(text, fn)
  }

  describe(solution.name, () => {
    createExample([], [])
    createExample([1], [1])
    createExample([2, 1], [1, 2])
    createExample([2, 1, 5, 4, 3], [1, 2, 3, 4, 5])
    createExample([2, 1, 3, 2, 5], [1, 2, 2, 3, 5])
    createExample([1, 2, 3, 4, 5], [1, 2, 3, 4, 5])
    createExample([6, 5, 3, 1, 8, 7, 2, 4], [1, 2, 3, 4, 5, 6, 7, 8])
  })
}

createExampleGroup(bubbleSort1)
createExampleGroup(bubbleSort2)
createExampleGroup(bubbleSort3)
createExampleGroup(cocktailShakerSort1)
createExampleGroup(cocktailShakerSort2)
