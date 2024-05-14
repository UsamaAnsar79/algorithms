import 'dart:math';

pigeonHole(List<int> arr){
 int n=arr.length;
 int maxvalue=arr.reduce(max);
 int minvalue=arr.reduce(min);
 int range =maxvalue - minvalue +1;
 List<int> holes=List<int>.filled(range, 0);
 for(int i=0;i<n;i++){
   holes[arr[i] - minvalue]++;
 }
 int index=0;
 for(int i=0;i<range;i++){
   while(holes[i]>0){
    arr[index++]= i + minvalue;
    holes[i]--;
   }
 }
}



void main() {
  List<int> arr = [8, 3, 2, 7, 4, 6, 8];
  
  print("Original array: $arr");
  
  pigeonHole(arr);
  
  print("Sorted array: $arr");
}
