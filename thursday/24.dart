
// beautiful quadruples

void main() {
  List<int> input = [1, 2, 3, 4]; 
  input.sort();

  int count = 0;

  for (int i = 1; i <= input[0]; i++) {
   
    for (int j = i; j <= input[1]; j++) {
       
      for (int k = j; k <= input[2]; k++) {
        
        for (int l = k; l <= input[3]; l++) {
          
          if ((i ^ j ^ k ^ l) != 0) {
            count++;
          }
        }
      }
    }
  }

  print(count);
}