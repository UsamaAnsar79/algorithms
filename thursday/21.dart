//he city of Gridland is represented as an  matrix where the rows are numbered from  to  and the columns are numbered from  to .

//Gridland has a network of train tracks that always run in straight horizontal lines along a row. In other words, the start and end points of a train track are  and , where  represents the row number,  represents the starting column, and  represents the ending column of the train track.

//The mayor of Gridland is surveying the city to determine the number of locations where lampposts can be placed. A lamppost can be placed in any cell that is not occupied by a train track.

//Given a map of Gridland and its  train tracks, find and print the number of cells where the mayor can place lampposts.

int gridlandMetro(int n, int m, int k, List<List<int>> track) {
  final cell=Set<int>();
  for(final row in track){
    final colstart=row[1]-1;
    final colend=row[2];
    for(int i=colstart;i<colend;i++){
      cell.add(i+(row[0]-1)*m);
    }
  }
  return n*m-cell.length;
}
void main(){
final n = 4;
final m = 4;
final k = 3;
final track = [[2, 2, 3], [3, 1, 4], [4, 4, 4]];

final result = gridlandMetro(n, m, k, track);
print(result); 
}