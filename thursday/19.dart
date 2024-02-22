

void countSort(List<List<String>> arr) {
  int n =arr.length;
  int maxkey=0;
  for(int i=0;i<n;i++){
    int key=int.parse(arr[i][0]);
    if(key>maxkey){
      maxkey=key;
    }
  }
  List<List<String>> counts=List.generate(maxkey+1, (_) => []);
  List<String> dasharray=[];

  for(int i=0;i<n;i++){
    int key=int.parse(arr[i][0]);
    String str=arr[i][1];
    if(i<n~/2){
      dasharray.add("-");
    }
    else{
      counts[key].add(str);
    }
  }
  List<String> result=[];
  for(List<String> strings in counts){
    result.addAll(strings);
  }
  print([...dasharray,...result].join(" "));
}
void main() {
  // Sample Input
  List<List<String>> arr = [
    ["0", "ab"], ["6", "cd"], ["0", "ef"], ["6", "gh"], ["4", "ij"],
    ["0", "ab"], ["6", "cd"], ["0", "ef"], ["6", "gh"], ["0", "ij"],
    ["4", "that"], ["3", "be"], ["0", "to"], ["1", "be"], ["5", "question"],
    ["1", "or"], ["2", "not"], ["4", "is"], ["2", "to"], ["4", "the"]
  ];

  // Call the countSort function
  countSort(arr);
}
