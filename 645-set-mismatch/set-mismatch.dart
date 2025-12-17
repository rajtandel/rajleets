class Solution {
  List<int> findErrorNums(List<int> nums) {
    var repeatedNumber = 0;
  var missingNumber = 0;
  for (int i = 0; i < nums.length; i++) {
    var currentNumber = nums[i];
    var correctNumber = i + 1;
    if (currentNumber != correctNumber) {
      if (!nums.contains(correctNumber)) {
        missingNumber = correctNumber;
      }
    }
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] == nums[j]) {
        repeatedNumber = nums[i];
        break;
      }
    }
  }
  return [repeatedNumber, missingNumber];
  }
}