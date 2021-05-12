# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  num_hash = {}
  nums.each_with_index do |num, index|
    remain = target - num
    
    if num_hash[remain]
      return [num_hash[remain], index]
    else
      num_hash[num] = index
    end
  end
end
