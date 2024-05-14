  
//   List<int> linearSearch(List<int> arr,x){
//     List<int> index=[];
//   for (int i=0;i<arr.length;i++){
//    if(arr[i]== x){
//    index.add(i);
    
//    }
   
//   }
//  return index;
//   //  return -1;
// }

// void main(){
//   List<int> list=[5,7,8,9,23,13,34,54,13,64,21];
//   // int n=list.length;
//   int x=13;
  
//    List<int> result=linearSearch(list, x);
//   if(result != -1){
//     print("$x is found at index of $result");
//   }
//   else{
//     print("not found");
//   }
// }



// find value if it is at even or odd index.....

  // import 'dart:ffi';

// linearSearch( arr,x){
  
//   for (int i=0;i<arr.length;i++){
//    if(arr[i]%2 == 0 && arr[i]==x){
//    return "$x is at even indices $i";
//    }
   
//    else if (arr[i]%2 != 0 && arr[i]==x) {
//     return "$x is at odd indices $i";
//    }
//   }

  
// }

// void main(){
//   List<int> list=[5,7,8,9,23,13,34,54,13,64,21];
//   // int n=list.length;
//   int x=9;
  
//    var result=linearSearch(list, x);
//    print(result);
  
 
// }


// find minimum and maximum number in a array

 linearSearch(List<int> arr){
  int max=0;
  for (int i=0;i<arr.length;i++){
   if(arr[i]>max){
    max= arr[i];
    
    
   }
   
  }
return max;
  
}

void main(){
  var list=[5,7,8,9,23,13,34,54,13,64,21];
  // int n=list.length;

  
   var result=linearSearch(list);
   print(result);
}



// determine if the array is sorted or not sorted.....

// linearSearch(List<int> arr){
//   int n=arr.length;
//   for (int i=0;i<n-1;i++){
//    if(arr[i] > arr[i+1]){
    
//   return false;
    
//    }
   
//   }
//   return true;

  
// }

// void main(){
//   final  list=[5,7,8,9,23,33,34,54,63,64,271];
  

//    if(linearSearch(list)==true){
//     print("array is sorted");
//    }
//    else{
//     print("array is not sorted");
//    }
//    }