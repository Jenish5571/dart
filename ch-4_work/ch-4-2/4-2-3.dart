import 'dart:io';

class SuparMarket{
  int? item_no;
  String? item_name;
  int? Quantity;
  double? tax;
  double? discount; 

  void setData() 
  {
    stdout.write("Enter Item No : ");
    item_no = int.parse(stdin.readLineSync()!);

    stdout.write("Enter Item Name: ");
    item_name = stdin.readLineSync()!;

    stdout.write("Enter Item Quantity : ");
    Quantity = int.parse(stdin.readLineSync()!);
    
    stdout.write("Enter Item tax : ");
    tax = double.parse(stdin.readLineSync()!);

    stdout.write("Enter Item discount : ");
    discount = double.parse(stdin.readLineSync()!);

  }

  void getData() 
  {
    print("Item Number: $item_no");
    print("Item Name: $item_name");
    print("Item Quantity: $Quantity");
    print("Item tax: $tax");
    print("Item discount: $discount");  
  }
}
void main() {

  stdout.write("Enter User Id :");
  String UserId = stdin.readLineSync()!;

  stdout.write("Enter User Password :");
  String Password = stdin.readLineSync()!;

  if(UserId == "user123" && Password == "user123"){}
  else{
    print("\nInvalid User Id OR Password");
  }

  int n;

  stdout.write("Enter Item Number : ");
  n = int.parse(stdin.readLineSync()!);

  List objs = List.generate(n, (index) => SuparMarket());

  objs.forEach((e) {
    e.setData();
  });

  objs.forEach((e) {
    e.getData();
  });

  int no;

  stdout.write("Enter Item Number : ");
  no = int.parse(stdin.readLineSync()!);

  objs.forEach((e) {
    if(e.item_no==no){
    e.getData();
    }
    else{
      print("Item Not Found");
    }
  });
}