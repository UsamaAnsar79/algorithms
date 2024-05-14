//How to sort an array of dates 

void main(){
  List<DateTime> dates = [
  DateTime(2020,3,10),
   DateTime(2021,12,1),
    DateTime(2019,10,5),
     DateTime(2003,2,12)
  
  ]; 
  dates.sort((date1,date2)=>date1.compareTo(date2));
  print("$dates");

}