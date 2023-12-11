class Emplyee
{
  late String? name;
  late int salary;
  late String? address;
  late String? designation;

  Emplyee({required this.name,required this.salary,required this.address,required this.designation}) { }

  factory Emplyee.fromMap({required Map data})
  {
    return Emplyee(
      name: data["name"],
      salary: data["salary"],
      address: data["address"],
      designation: data["designation"],
      );
  } 

  void getempData()
  {
    print("name : $name");
    print("salary    : $salary");
    print("address  : $address");
    print("designation  : $designation");
  }
}
void main()
{
  List <Map> empData =[
    {"name":"ayush",  "salary":20000, "address":"surat", "designation":"admin""\n"   },
    {"name":"mehul",  "salary":10000, "address":"surat", "designtion":"subadmin""\n" },
    {"name":"piyush", "salary":2000,  "address":"surat", "designation":"admin""\n"   },
    {"name":"ramesh", "salary":3000,  "address":"surat", "desgnation":"subadmin""\n" },
    {"name":"ayush",  "salary":20000, "address":"surat", "designation":"admin""\n"   },
    {"name":"mehul",  "salary":10000, "address":"surat", "designtion":"subadmin""\n" },
    {"name":"piyush", "salary":2000,  "address":"surat", "designation":"admin""\n"   },
    {"name":"ramesh", "salary":3000,  "address":"surat", "desgnation":"subadmin""\n" },
    {"name":"ayush",  "salary":20000, "address":"surat", "designation":"admin""\n"   },
    {"name":"mehul",  "salary":10000, "address":"surat", "designtion":"subadmin""\n" }, 

    {"name":"piyush", "salary":2000,  "address":"surat", "designation":"admin""\n"   },
    {"nam" :"ramesh",  "salary":3000, "address":"surat", "desgnation":"subadmin""\n" },
    {"name":"ayush",  "salary":20000, "address":"surat", "designation":"admin""\n"   },
    {"name":"mehul",  "salary":10000, "address":"surat", "designtion":"subadmin""\n" },
    {"name":"piyush", "salary":2000,  "address":"surat", "designation":"admin""\n"   },
    {"name":"ramesh", "salary":3000,  "address":"surat", "desgnation":"subadmin""\n" },
    {"name":"ayush",  "salary":20000, "address":"surat", "designation":"admin""\n"   },
    {"name":"mehul",  "salary":10000, "address":"surat", "designtion":"subadmin""\n" },
    {"name":"piyush", "salary":2000,  "address":"surat", "designation":"admin""\n"   },
    {"name":"ramesh", "salary":3000,  "address":"surat", "desgnation":"subadmin""\n" },

    {"name":"piyush", "salary":2000,  "address":"surat", "designation":"admin""\n"   },
    {"nam" :"ramesh",  "salary":3000, "address":"surat", "desgnation":"subadmin""\n" },
    {"name":"ayush",  "salary":20000, "address":"surat", "designation":"admin""\n"   },
    {"name":"mehul",  "salary":10000, "address":"surat", "designtion":"subadmin""\n" },
    {"name":"piyush", "salary":2000,  "address":"surat", "designation":"admin""\n"   },
    {"name":"ramesh", "salary":3000,  "address":"surat", "desgnation":"subadmin""\n" },
    {"name":"ayush",  "salary":20000, "address":"surat", "designation":"admin""\n"   },
    {"name":"mehul",  "salary":10000, "address":"surat", "designtion":"subadmin""\n" },
    {"name":"piyush", "salary":2000,  "address":"surat", "designation":"admin""\n"   },
    {"name":"ramesh", "salary":3000,  "address":"surat", "desgnation":"subadmin""\n" },

  ];

List<Emplyee> AllstudData = empData.map((e) => Emplyee.fromMap(data: e)).toList();

  AllstudData.forEach((e) {
    e.getempData();
  });
}