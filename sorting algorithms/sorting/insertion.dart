List<int> insertionSort(List<int> list) {
  
  for (int i = 1; i < list.length; i++) {
    int j = i;

    while (j > 0 && list[j] < list[j - 1]) {
      int aux = list[j];
      list[j] = list[j - 1];
      list[j - 1] = aux;
      j--;
    }
  }
  return list;
}
void main(){
  var arr=[7,3,9,4,11,15,2,13];
  print(arr);
  var result=insertionSort(arr);
  print(result);
}