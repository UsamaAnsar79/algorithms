
/// 

void main() {
  List<int> input = [1, 2, 3, 4]; 
  input.sort();

  int count = 0;

  for (int i = 1; i <= input[0]; i++) {
   print(i);
    for (int j = i; j <= input[1]; j++) {
       print(j);
      for (int k = j; k <= input[2]; k++) {
        print(k);
        for (int l = k; l <= input[3]; l++) {
          print(l);
                    if ((i ^ j ^ k ^ l) != 0) {
            count++;
          }
        }
      }
    }
  }

  print(count);
}
