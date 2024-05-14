// Q: sort the element by its frequency

sortbyFrequency(List<int> arr){
  if(arr.isEmpty){
    return;
  }
  Map<int,int> frequencyMap={};
  for(int num in arr){
    frequencyMap[num]=(frequencyMap[num]??0)+1;
  }
  int compareByFrequency(int a,int b){
    int freqcompare=frequencyMap[b]!.compareTo(frequencyMap[a]!);
    if(freqcompare !=0){
      return freqcompare;
    }
    else{
      return a.compareTo(b);
    }
  }
  arr.sort(compareByFrequency);
}

void main() {
  List<int> arr = [2, 5, 2, 8, 5, 6, 8, 8];
  sortbyFrequency(arr);
  print(arr); 
}