# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    # Pass 1: Create a map from value => [index (n)]
    # Sort the array (nlgn)
    # Pass 2: Walk the array from both sides
      # If the sum is too small move the left pointer to the right
      # If the sum is too large move the right pointer to the left
    # Once you find the sum, look up the indexes for those values.
    indexMap = {}
    nums.each_with_index do |num, index|
        # Storing the indexes as an array to handle duplicates
        if !indexMap[num]
            indexMap[num] = []
        end
        indexMap[num] << index
    end

    leftIndex = 0
    rightIndex = nums.length - 1
    sortedNums = nums.sort

    while leftIndex < rightIndex do
        leftVal = sortedNums[leftIndex]
        rightVal = sortedNums[rightIndex]
        sum = leftVal + rightVal
        if sum == target
            # Popping to get unique indexes out of the indexMap
            return [indexMap[leftVal].pop, indexMap[rightVal].pop]
        elsif sum < target
            leftIndex += 1
        else
            rightIndex -= 1
        end
    end

    return -1;
end


# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum_too_slow(nums, target)
  nums.each_with_index do |num1, index1|
    nums.each_with_index do |num2, index2|
      next if index1 == index2
      return [index1, index2] if num1 + num2 == target
    end
  end

  return -1
end
