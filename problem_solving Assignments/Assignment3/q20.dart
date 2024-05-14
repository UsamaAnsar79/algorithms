// Q20: Write a program that counts the number of vowels in a given string
// using a for loop and if-else condition.

void main() {
  String word = "abiipo";
  int count = 0;

  for (int i = 0; i < word.length; i++) {
    if ("aeiou".contains(word[i])) {
      count++;
    }
  }

  print("Vowel count: ${count}");
}
