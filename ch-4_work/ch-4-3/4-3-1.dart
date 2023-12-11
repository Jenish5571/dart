class Distance
{
  late  int feet;
  late int inches;

  Distance({required this.feet,required this.inches});

  void setDistanceData(){
    int totalInches = (feet * 12) + inches;
    feet = totalInches ~/ 12;
    inches = totalInches % 12;
  }
  void getDistanceData()
  {
    print("FEET : $feet");
    print("INCHES : $inches");
  }
}
void main() {
  Distance distance = Distance(feet: 5, inches: 15);

  distance.setDistanceData();
  distance.getDistanceData();
}