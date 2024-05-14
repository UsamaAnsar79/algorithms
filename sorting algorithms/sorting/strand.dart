strandSort(List<int> arr){
  List<int> result=[];
  while(arr.isNotEmpty){
    List<int> sublist=[arr.removeAt(0)];
    for(int i=0;i<arr.length;i++){
      if(arr[i]>=sublist.last){
        sublist.add(arr.removeAt(i));
        i--;
      }
    }
    print(sublist);
    result=mergeList(result, sublist);
  }
  return result;
}
 mergeList(List<int> list1,List<int> list2){
 List<int> mergedList=[];
 while(list1.isNotEmpty && list2.isNotEmpty){
  if(list1.first < list2.first){
    mergedList.add(list1.removeAt(0));
  }
  else{
    mergedList.add(list2.removeAt(0));
  }
 }
 mergedList.addAll(list1);
 mergedList.addAll(list2);
 return mergedList;
}
void main() {
  List<int> arr = [5, 3, 8, 1, 2, 7, 4]; // Example input list
  print("Original array: $arr");

  List<int> sortedArray = strandSort(List.of(arr)); // Sort the array using Strand Sort
  print("Sorted array: $sortedArray");
}