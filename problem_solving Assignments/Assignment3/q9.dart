// Q9 Implement a function that checks if a given string is a palindrome.
// Example:
// Input: "radar"
// Output: "radar" is a palindrome.

void main() {
  String word = "radar";

  bool checkPalindrome(String word) {
    for (int i = 0; i < word.length / 2.round(); i++) {
      if (word[i] != word[word.length - i - 1]) {
        print("Not a palindrome");
        return false;
      }
    }
    return true;
  }

  bool isPalindrome = checkPalindrome(word);

  isPalindrome
      ? print('"$word" is a palindrome')
      : print('"$word" is not a palindrome');
}
