//Given a list of unsorted  integers,arr , find the pair of elements that have the smallest absolute difference between them. If there are multiple pairs, find them all.

List<dynamic> findclosestDifference(List<int> arr){
  arr.sort();
  int mindiff=arr[1]-arr[0];
  List<int> closestpair=[arr[0],arr[1]];
  for(int i=1;i<arr.length-1;i++){
  int diff=arr[i+1] - arr[i];
  if(diff<mindiff){
    mindiff=diff;
    closestpair=[arr[i] , arr[i+1]];
  }
  }
  return [mindiff,closestpair];
}
void main(){
 List<int> arr = [2,4,5,8,10];
  List<dynamic>  result = findclosestDifference(arr);
  print("Closest difference between any two elements: ${result[0]}");
  print("Closest pair of elements: ${result[1][0]} and ${result[1][1]}");

}