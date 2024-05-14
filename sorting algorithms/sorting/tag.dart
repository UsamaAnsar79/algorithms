//Tag Sort is an interesting sorting algorithm that operates by repeatedly finding the minimum and maximum elements in the unsorted portion of the array and then "tagging" them with their respective values.


tagSort(List<int> array,List<int> tags){
  int n = array.length;
  for(int i=0;i<n;i++){
    for(int j=i+1;j<n;j++){
      if(array[tags[i]]> array[tags[j]]){
        int temp=tags[i];
        tags[i]=tags[j];
        tags[j]=temp;
      }

    }
  }
}
void main(){
  List<int> array=[233,45,67,8,90];
  List<int> tag=List.generate(array.length, (index) => index);
  int n=array.length;
  tagSort(array, tag);
  print(tag);
  for(int i=0;i<n;i++){
    print("${array[i]} :: ${tag[i]}");
  }
}