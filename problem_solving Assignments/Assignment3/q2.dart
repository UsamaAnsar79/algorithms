// Q2: Write a program that prints the Fibonacci sequence up to a given
// number using a for loop.
// Example:
// Input: 10
// Output: 0 1 1 2 3 5 8

void main() {
  void findSequence(int limit) {
    int first = 0;
    int second = 1;

    List<int> sequence = [first, second];

    for (int i = 0; i < limit; i++) {
      sequence.add(sequence[i] + sequence[i + 1]);


      if (sequence.last > limit) {
        sequence.removeLast();
        break;
      }
    }

    print(sequence);
  }

  findSequence(10);
}
