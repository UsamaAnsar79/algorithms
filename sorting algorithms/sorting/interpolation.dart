// int interpolationSearch(List arr, int lo,int hi,int x){
//   int pos;
//   if(lo<=hi && x>=arr[lo] && x < arr[hi]){
//     pos=(lo +(((lo + hi).toDouble()/(arr[hi]-arr[lo]) ) *(x-arr[lo]))).toInt();
//     if (arr[pos] == x) return pos;

   
//     if (arr[pos] < x) return interpolationSearch(arr, pos + 1, hi, x);

//     if (arr[pos] > x) return interpolationSearch(arr, lo, pos - 1, x);
//   }
//   return -1;
// }

// int main() {
//   List<int> arr = [10, 12, 13, 16, 18, 19, 20, 21, 22, 23, 24, 33, 35, 42, 47];

//   int n = arr.length;

  
//   int x = 18;
//   int result = interpolationSearch(arr, 0, n - 1, x);

  
//   if (result != -1)
//     print("Element found at index $result");
//   else
//     print("Element not found");

//   return 0;
// }


//  another method

int interpolationSearch(List<int> arr, int target){
  int low=0;
  int high=arr.length-1;
 while( low <=high && target >= arr[low] && target <= arr[high]){
  int pos = low + ((target - arr[low]) * (high - low)~/(arr[high] - arr[low]));
  if(arr[pos] == target){
    return pos;
  }
  if (arr[pos] < target){
    low= pos + 1;
  }
  if (arr[pos] > target){
    high= pos -1;
  }
 }
return -1;
}

void main(){
   List<int> arr = [10, 12, 13, 16, 18, 19, 20, 21, 22, 23, 24, 33, 35, 42, 47];
int targetValue = 35;

  int result = interpolationSearch(arr, targetValue);

  if (result != -1) {
    print("Element $targetValue found at index $result.");
  } else {
    print("Element $targetValue not found in the array.");
  }
}