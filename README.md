# Day 3: Merge Sort

**Fork and then clone me!**

Merge sort is an efficient sorting algorithm that uses a divide and conquer approach to sorting elements. In other words, it sorts small subsets of the list, merges those subsets, sorts those, and carries on until the whole list has been sorted. It is commonly implemented as a recursive algorithm.

![Merge Sort animation](./merge_sort.gif)

## How Does Merge Sort Work?

Let's say we have an Array consisting of four elements. First, we divide that into two Arrays of two elements each. Since this is not the smallest possible division, we then divide those into four Arrays total consisting of one element each:

```
[4, 3, 2, 1]
[4, 3] [2, 1]
[4] [3] [2] [1]
```

Next, we sort and combine those elements until we have a merged and sorted list:

```
Sort [4] with [3] => [3, 4]
Sort [2] with [1] => [1, 2]
Sort [3, 4] with [1, 2] => [1, 2, 3, 4]
```

It is common to declare two functions (or more) when implementing a merge sort. The main function is recursive: it divides the list and merges the sorted pieces. It calls a helper function, which might be recursive or iterative. The helper function merges the pieces of the list into sorted lists, and returns them.

## 1. Implement the Helper Function `merge`

`merge` takes two arguments, both of which are Arrays. **Each of those Arrays will already be sorted.** It then merges those Arrays into one sorted Array and returns it. It merges and sorts them by comparing the first element of each Array. The smallest one is removed and pushed onto a new result Array. It does this until one of the Arrays is empty, and then pushes any remaining values onto the result.

Here is an example of what happens during this process:
```
input 1 = [1, 2]
input 2 = [0, 6]
result = []

Is 1 < 0?
  No. Remove 0 and push onto result.

input 1 = [1, 2]
input 2 = [6]
result = [0]

Is 1 < 6?
  Yes. Remove 1 and push onto result.

input 1 = [2]
input 2 = [6]
result = [0, 1]

Is 2 < 6?
  Yes. Remove 2 and push onto result.

input 1 = []
input 2 = [6]
result = [0, 1, 2]

input 1 is empty, add remainder of input 2 to result:
result = [0, 1, 2, 6]
```

Be sure to test your `merge` method with Arrays of different sizes to ensure it's working. What sizes might those Arrays be? Will both inputs always be the same size? If your `merge` method is working, it'll return a sorted list:

```
merge([0, 1], [-2, 4])
=> [-2, 0, 1, 4]
```

And remember, each argument Array to `merge` will already be sorted:

```
// Valid inputs
merge([2, 10], [9, 10, 12])

// Invalid inputs
merge([10, 3], [10, 9, 2])
```

Do not worry about invalid inputs! Just ensure your method works for valid inputs before moving on. You'll need to rely on your own testing skills here! You've got this!

## 2. Implement the Main Function `merge_sort`/`mergeSort`



Use the language of your choosing. We've included starter files for some languages where you can pseudocode, explain your solution and code.

## Before you start coding:

1. Rewrite the problem in your own words
2. Validate that you understand the problem
3. Write your own test cases
4. Pseudocode
5. Code!

**_And remember, don't run our tests until you've passed your own!_**

## How to run your own tests

### Ruby

1. `cd` into the ruby folder
2. `ruby <filename>.rb`

### JavaScript

1. `cd` into the javascript folder
2. `node <filename>.js`

## How to run our tests

### Ruby

1. `cd` into the ruby folder
2. `bundle install`
3. `rspec`

### JavaScript

1. `cd` into the javascript folder
2. `npm i`
3. `npm test`
