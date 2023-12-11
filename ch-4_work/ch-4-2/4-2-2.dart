import 'dart:io';

class train{
  int? train_no;
  String? train_name;
  String? source;
  String? destination;
  int? time; 

  void setData() 
  {
    stdout.write("Enter train number : ");
    train_no = int.parse(stdin.readLineSync()!);

    stdout.write("Enter train Name: ");
    train_name = stdin.readLineSync()!;

    stdout.write("Enter train source : ");
    source = stdin.readLineSync()!;
    
    stdout.write("Enter train destination : ");
    destination = stdin.readLineSync()!;

    stdout.write("Enter train time : ");
    time = int.parse(stdin.readLineSync()!);

  }

  void getData() 
  {
    print("Train Number: $train_no");
    print("Train Name: $train_name");
    print("Train Source: $source");
    print("Train Destination: $destination");
    print("Train Time: $time");  
  }
}
void main() 
{
  int n;

  stdout.write("Enter Train Number : ");
  n = int.parse(stdin.readLineSync()!);

  List objs = List.generate(n, (index) => train());

  objs.forEach((e) {
    e.setData();
  });

  objs.forEach((e) {
    e.getData();
  });

  int no;

  stdout.write("Enter Train Number : ");
  no = int.parse(stdin.readLineSync()!);

  objs.forEach((e) {
    if(e.train_no==no){
    e.getData();
    }
  });
}