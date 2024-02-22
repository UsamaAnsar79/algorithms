//Whenever George asks Lily to hang out, she's busy doing homework. George wants to help her finish it faster, but he's in over his head! Can you help George understand Lily's homework so she can hang out with him?

lilyhomework(List<int> arr){
  int swap=0;
  for(int i=arr.length-1;i>0;i--){
    if(arr[i]<arr[i-1]){
      swap++;
    }
  }
  return swap;
}

void main() {
  List<int> arr = [7,15,12,3];
  print(lilyhomework(arr)); 
  arr.sort();
print(arr);

}


