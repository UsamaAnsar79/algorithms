cycleSort(List<int> arr){
  int n = arr.length;
  int cycles=0;
  for(int cyclestart=0;cyclestart<n-1;cyclestart++){
   int item=arr[cyclestart];
   int pos=cyclestart;
   for(int i=cyclestart + 1;i<n;i++){
    if(arr[i]<item){
      pos++;
    }

   }
   if(pos==cyclestart){
    continue;
   }
   while(item==arr[pos]){
     pos++;
   }
   if(pos!=cyclestart){
    int temp=item;
    item=arr[pos];
    arr[pos]=temp;
    cycles++;
   }
   while(pos != cyclestart){
    pos=cyclestart;
   
   for(int i=cyclestart + 1;i<n;i++){
    if(arr[i]<item){
      pos++;
    }
   }
     while(item==arr[pos]){
     pos++;
   }
   if(item!=arr[pos]){
int temp = item;
        item = arr[pos];
        arr[pos] = temp;
        cycles++;
   }
  }
}}
void main() {
  List<int> arr = [5, 1, 4, 2, 8, 9];
  
  print("Original array: $arr");
  
  cycleSort(arr);
  
  print("Sorted array: $arr");
}