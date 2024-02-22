//Given a list of unsorted integers, , find the pair of elements that have the smallest absolute difference between them. If there are multiple pairs, find them all.


List<dynamic> closestnumber(List<int> arr){
  arr.sort();
  int mindiff=arr[1]-arr[0];
  List<int> closepair=[arr[0],arr[1]];
  for(int i=1;i<arr.length-1;i++){
    int diff=arr[i+1] - arr[i];
    if(diff<mindiff){
      mindiff=diff;
      closepair=[arr[i],arr[i+1]];
    }
  }
return [mindiff,closepair];
}
void main(){
 List<int> arr = [5,2,3,7,9];
  List<dynamic>  result = closestnumber(arr);
  print("Closest difference between any two elements: ${result[0]}");
  print("Closest pair of elements: ${result[1][0]} and ${result[1][1]}");

}