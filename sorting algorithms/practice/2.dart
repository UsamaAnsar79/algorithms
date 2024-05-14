// using counting sort


sort012(List<int> arr){
  int count0=0;
  int count1=0;
  int count2=0;
  for(int num in arr){
    if(num==0){
      count0++;
    }
    else if(num == 1){
      count1++;

    }
    else if(num ==2){
      count2++;
    }
  }
  int i=0;
  while(count0>0){
    arr[i++]=0;
    count0--;
  }
  while(count1>0){
    arr[i++]=1;
    count1--;
  }
  while(count2>0){
    arr[i++]=2;
    count2--;
  }
}
void main() {
  List<int> arr = [0, 1, 2, 0, 1, 2, 1, 2, 0, 1];
  sort012(arr);
  print(arr); // Output: [0, 0, 0, 1, 1, 1, 1, 2, 2, 2]
}

// time complexity is O(n) and space complexity is O(1)