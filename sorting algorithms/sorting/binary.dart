// int binary_search(List a, int l, int r, int x) {
//   if (r >= l) {
//     int middle = (l + (r - l) / 2).toInt();

//     //If the element is present at middle
//     if (a[middle] == x) {
//       return middle;
//     }

//     //If the element is smaller than middle
//     if (a[middle] > x) {
//      return binary_search(a, middle - 1, r, x);
//     }

//     return binary_search(a, middle + 1, r, x);
//   }
//   return -1;
// }

// void main() {
//   List list = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
//   int x = 55;
//   int n = list.length;
//   int index = binary_search(list, 0, n - 1, x);
//   print('list:');
//   print(list);
//   if (index != -1) {
//     print('$x found at positions: $index');
//   } else {
//     print('$x Not found');
//   }
// }


// iterative binary search...
 int iterativeBinary(List<int> a,int x){
  int l=0;
  int r= a.length-1;
 


while(l <= r){
   int  mid =(l + r)~/2;
    if(a[mid] == x){
   return mid;
  }
  else if(a[mid] > x){
    r = mid -1;
  }
  else{
    l=mid +1;
  }
   
  }
return -1;
}

void main(){
   List<int> list = [1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  int target = 21;
 
  int index = iterativeBinary(list, target);
  // print('list:');
  print(list);
  if (index != -1) {
     print('$target found at positions: $index');
   
  } else {
    
    print('$target Not found');
  }
}