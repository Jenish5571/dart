import 'dart:io';

class SuparMarket
{
  late int cust_id;
  late String cust_name;
  late int cust_contact;

  void setCustData()
  {
    stdout.write("Enter Customer Id : ");
    cust_id = int.parse(stdin.readLineSync()!);
    
    stdout.write("Enter Customer Name : ");
    cust_name = stdin.readLineSync()!;

    stdout.write("Enter Customer Contact : ");
    cust_contact = int.parse(stdin.readLineSync()!);
  } 
  void getCustData()
  {
    print("CUSTOMER ID      : $cust_id");
    print("CUSTOMER NAME    : $cust_name");
    print("CUSTOMER CONTACT : $cust_contact");
  }
}
class Product 
{
  int pro_id;
  String pro_name;
  int pro_qty;
  double pro_price;

  Product(this.pro_id, this.pro_name, this.pro_qty, this.pro_price);

  void displayProduct(){
    print("PRODUCT ID   : $pro_id");
    print("PRODUCT NAME : $pro_name");
    print("QUANTITY     : $pro_qty");
    print("PRICE        : Rs.$pro_price");
  }

}

void main() 
{
  int n;

  stdout.write("Enter Customer Number : ");
  n = int.parse(stdin.readLineSync()!);

  List obj = List.generate(n, (index) => SuparMarket());

  obj.forEach((e) {
    e.setCustData();
    e.displayCustomer();
  });
  obj.forEach((e) {
    e.getCustData();
    e.addProdut();
    e.displayProduct();
  });
}
