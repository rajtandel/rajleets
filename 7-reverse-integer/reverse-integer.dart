class Solution {
  int reverse(int x) {
    bool isNegative = x < 0;
    if(x<0) {
        x = x.abs();
    }

    int reversed = 0;
    while(x > 0) {
        int digit = x % 10;
         if (reversed > (2147483647 - digit) ~/ 10) {
             return 0;
         }
    
        reversed = reversed * 10 + digit;
        x ~/= 10;
    }
    return isNegative ? -reversed : reversed;;
  }
}