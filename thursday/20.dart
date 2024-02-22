//Given a map of Hackerland and the transmission range, determine the minimum number of transmitters so that every house is within range of at least one transmitter. Each transmitter must be installed on top of an existing house.

radiotransmitter(List<int>houses,int k){
  houses.sort();
  int n=houses.length;
  int transmitter=0;
  int i=0;
  while(i<n){
    int location=houses[i] + k;
    transmitter++;
    while(i<n && houses[i]<=location){
      i++;
    }
    location=houses[--i] + k;
    while(i<n && houses[i]<=location){
      i++;
    }
  }
  return transmitter;
}
void main() {
  List<int> houses = [1,2,3,5,9 ];
  int k = 2;
  print(radiotransmitter(houses, k)); 
  
}