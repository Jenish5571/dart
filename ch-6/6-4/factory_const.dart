class Student
{
  late int id;
  late String name;
  late double per;

  Student({required this.id,required this.name,required this.per})
  {
    print("Successfully Created");
  }

  factory Student.fromMap({required Map<String,dynamic> data })
  {
    return Student(
      id: data["id"],
      name: data["name"],
      per: data["per"],
      );
  } 

  void getstudData()
  {
    print("Id : $id");
    print("Name : $name");
    print("Per : $per");
  }
}
void main()
{
  Map<String,dynamic> stud ={
    "id" : 101,
    "name" : "jenish",
    "per" : 78.65,
  };

  Student student =Student.fromMap(data: stud);

  student.getstudData();
}