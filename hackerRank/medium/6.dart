//pairs

int pairs(int k, List<int> arr) {
 
  int count = 0;

 
  for (int element in arr) {

    // Check if the complementary value exists in the set
    if (arr.contains(element + k)) {
      count++;
    }
   
  }

  // Return the total count of pairs
  return count;
}

void main() {
  int k = 2;
  List<int> arr = [1, 5, 3, 4, 2];

  print(pairs(k, arr)); 
}
