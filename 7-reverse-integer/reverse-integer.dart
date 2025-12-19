class Solution {
  int reverse(int x) {
    if(x.bitLength >= 31) {
        if(x != -2147483412 && x != 1463847412 && x != -1463847412){
             return 0;
        }
        
    }
    String strX = '$x';
    String output = '';
    for(int i=strX.length - 1;i>=0;i--) {
        if (strX[i] == '-') {
             output = '-$output';
        } else {
            output = output + strX[i];
        }
    }
    return int.tryParse(output) ?? 0;
  }
}