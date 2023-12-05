

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
  List <Map<String,dynamic>> studData =[
    {
    "id" : 101,
    "name" : "jenish",
    "per" : 78.65,
    },
    {
    "id" : 102,
    "name" : "mann",
    "per" : 68.45,
    },
    {
    "id" : 103,
    "name" : "kartik",
    "per" : 85.52,
    },
  ];

List<Student> AllstudData = studData.map((e) => Student.fromMap(data: e)).toList();

  AllstudData.forEach((e) {
    e.getstudData();
  });
}