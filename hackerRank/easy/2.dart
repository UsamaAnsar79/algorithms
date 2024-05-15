
void main() {
  var n = 5; 
  var arr = [10,6,3,5,7,9,8,2]; 
  // Store the value to insert
  var valueToInsert = arr[n - 1];
  
  for (var i = n - 2; i >= 0; i--) {
    if (arr[i] > valueToInsert) {
      // Shift the elements to the right
      arr[i + 1] = arr[i];
      // Print the array after shifting
      print(arr.join(' '));
    } else {
      // Insert the stored value
      arr[i + 1] = valueToInsert;
      // Print the final array
      print(arr.join(' '));
      break;
    }
  }

  // If the value needs to be inserted at the beginning
  if (arr[0] > valueToInsert) {
    arr[0] = valueToInsert;
    print(arr.join(' '));
  }
}
