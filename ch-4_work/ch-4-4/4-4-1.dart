class Student
{
  int Roll_no;
  String Name;
  String Course;

  Student({required this.Roll_no,required this.Name,required this.Course}) { }

  factory Student.fromMap({required Map data})
  {
    return Student(
      Roll_no: data["Roll_no"],
      Name: data["Name"],
      Course: data["Course"],
      );
  } 

  void getstudData()
  {
    print("Roll_no : $Roll_no");
    print("Name    : $Name");
    print("Course  : $Course");
  }
}
void main()
{
  List <Map> studData =[
    { "Roll_no" : 1,  "Name" : "jenish",  "Course" : "flutter""\n" },
    { "Roll_no" : 2,  "Name" : "mann",    "Course" : "flutter""\n" },
    { "Roll_no" : 3,  "Name" : "ashu",    "Course" : "flutter""\n" },
    { "Roll_no" : 4,  "Name" : "meet",    "Course" : "flutter""\n" },
    { "Roll_no" : 5,  "Name" : "mayur",   "Course" : "flutter""\n" },
    { "Roll_no" : 6,  "Name" : "fenil",   "Course" : "flutter""\n" },
    { "Roll_no" : 7,  "Name" : "krishn",  "Course" : "flutter""\n" },
    { "Roll_no" : 8,  "Name" : "dev",     "Course" : "flutter""\n" },
    { "Roll_no" : 9,  "Name" : "kartik",  "Course" : "flutter""\n" },
    { "Roll_no" : 10, "Name" : "jenu",    "Course" : "flutter""\n" },

    { "Roll_no" : 11,  "Name" : "jenish", "Course" : "ui/ux""\n" },
    { "Roll_no" : 12,  "Name" : "mann",   "Course" : "ui/ux""\n" },
    { "Roll_no" : 13,  "Name" : "ashu",   "Course" : "ui/ux""\n" },
    { "Roll_no" : 14,  "Name" : "meet",   "Course" : "ui/ux""\n" },
    { "Roll_no" : 15,  "Name" : "mayur",  "Course" : "ui/ux""\n" },
    { "Roll_no" : 16,  "Name" : "fenil",  "Course" : "ui/ux""\n" },
    { "Roll_no" : 17,  "Name" : "krishn", "Course" : "ui/ux""\n" },
    { "Roll_no" : 18,  "Name" : "dev",    "Course" : "ui/ux""\n" },
    { "Roll_no" : 19,  "Name" : "kartik", "Course" : "ui/ux""\n" },
    { "Roll_no" : 20,  "Name" : "jenu",   "Course" : "ui/ux""\n" },

    { "Roll_no" : 21,  "Name" : "jenish", "Course" : "GIM""\n" },
    { "Roll_no" : 22,  "Name" : "mann",   "Course" : "GIM""\n" },
    { "Roll_no" : 23,  "Name" : "ashu",   "Course" : "GIM""\n" },
    { "Roll_no" : 24,  "Name" : "meet",   "Course" : "GIM""\n" },
    { "Roll_no" : 25,  "Name" : "mayur",  "Course" : "GIM""\n" },
    { "Roll_no" : 26,  "Name" : "fenil",  "Course" : "GIM""\n" },
    { "Roll_no" : 27,  "Name" : "krishn", "Course" : "GIM""\n" },
    { "Roll_no" : 28,  "Name" : "dev",    "Course" : "GIM""\n" },
    { "Roll_no" : 29,  "Name" : "kartik", "Course" : "GIM""\n" },
    { "Roll_no" : 30,  "Name" : "jenu",   "Course" : "GIM""\n" },

  ];

List<Student> AllstudData = studData.map((e) => Student.fromMap(data: e)).toList();

  AllstudData.forEach((e) {
    e.getstudData();
  });
}