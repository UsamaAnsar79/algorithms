int hackerlandRadioTransmitters(List<int> houses, int k) {
  houses.sort(); 

  int n = houses.length;
  int transmitterCount = 0; 

  int i = 0;
  while (i < n) {
    int loc = houses[i] + k; 
    print("loc:${loc}");// Place the transmitter at the rightmost house within the range
    transmitterCount++; // Increment the transmitter count
    print("tran:$transmitterCount");

    // Move to the next house that is out of range of the current transmitter
    while (i < n && houses[i] <= loc) {
      i++;
      print("i:${i}");
    }

    // Place the transmitter at the leftmost house within the range of the previous transmitter
    loc = houses[--i] + k;
    print("loc2:${loc}");

    // Move to the next house that is out of range of the current transmitter
    while (i < n && houses[i] <= loc) {
      i++;
      print("i2:${i}");
    }
  }

  return transmitterCount;
}

void main() {
  List<int> houses = [1,2,3,5,9 ];
  int k = 1;
  print(hackerlandRadioTransmitters(houses, k)); // Output: 2
}
