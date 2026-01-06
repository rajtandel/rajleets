class Solution {
  String longestCommonPrefix(List<String> strs) {
    var prefix = '';
    if(strs.isEmpty) {
        return '';
    }
    for(int i=0; i <strs[0].length;i++) {
        var currentChar = strs[0][i];
        for(int j=1;j<strs.length;j++) {
            if(i >= strs[j].length || strs[j][i] != currentChar) {
                return prefix;
            }
        }
        prefix += currentChar;
    }
    return prefix;
  }
}