
int minLoss(List<int> prices) {
  List<List<int>> idxprice=[];
  for(int i=0;i<prices.length;i++){
    idxprice.add([prices[i],i]);
  }
idxprice.sort((a,b)=>a[0].compareTo(b[0]));

int minlos=1<<30;
for(int i=1;i<idxprice.length;i++){
  int loss=idxprice[i][0] - idxprice[i-1][0];
  if(loss<minlos && idxprice[i][1] < idxprice[i-1][1]){
   minlos=loss;
  }
}
return minlos;
}
void main(){
  List<int> prices=[5,10,3];
  List<int> prices2 = [20, 7, 8, 2, 5];

  print(minLoss(prices));
   print(minLoss(prices2));
  
}