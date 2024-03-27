import 'dart:io';

class SuparMarket {
  late int cust_id;
  late String cust_name;
  late int cust_contact;
  List cust_products = [];

  void setCustData() {
    stdout.write("\nEnter Customer Id : ");
    cust_id = int.parse(stdin.readLineSync()!);

    stdout.write("Enter Customer Name : ");
    cust_name = stdin.readLineSync()!;

    stdout.write("Enter Customer Contact : ");
    cust_contact = int.parse(stdin.readLineSync()!);
  }

  void BillData({
    required int productId,
    required String name,
    required String number,
    required List product,
    required double price,
    required double total,
  }) {
    print("\nCustomer Details");
    print("****************************************************");
    print("CUSTOMER ID      : $cust_id");
    print("CUSTOMER NAME    : $cust_name");
    print("CUSTOMER CONTACT : $cust_contact");

    print("\nProduct Details");
    print("****************************************************");

    product.forEach((e) {
      print("${e['name']}\t${e['price']}\t${e['qty']}");
    });
    print("\n");
    print("****************************************************");
    print("\tPrice       : $price");
    print("\tTotal Amount: $total\n");
  }
}

class Product {
  late int cust_id;
  late String cust_name;
  late int cust_contact;
  List cust_products = [];
  Customer customer;
  List<Map<String, dynamic>> product = [
    {
      "id": 01,
      "name": "Mobile",
      "price": 1000,
      "qty": 1,
    },
    {
      "id": 02,
      "name": "Laptop",
      "price": 25000,
      "qty": 3,
    },
    {
      "id": 03,
      "name": "Tv",
      "price": 80000,
      "qty": 4,
    },
    {
      "id": 04,
      "name": "Airprod",
      "price": 5000,
      "qty": 6,
    },
    {
      "id": 05,
      "name": "watch",
      "price": 20000,
      "qty": 10,
    },
  ];

  int? choice;
  int? pro_id;

  void productData() {
    product.map((e) {
      print(
          "${e['id'].toString().padLeft(2, '0')}\t${e['name']}\tRs.${e['price']}");
    }).toList();
  }

  void getProductDetails() {
    do {
      print("\n\nPress 1 for Add Product");
      print("Press 2 for Remove Product");
      print("Press 3 for Show Product");
      print("Press 0 for Exit");
      stdout.write("\nEnter any choice: ");
      choice = int.parse(stdin.readLineSync()!);
      switch (choice) {
        case 1:
          productData();
          stdout.write("\n Enter any choice\t: ");
          pro_id = int.parse(stdin.readLineSync()!);
          stdout.write("\n Enter the qty\t: ");
          int qty = int.parse(stdin.readLineSync()!);

          product.map((e) {
            if (e['id'] == pro_id) {
              e['qty'] = qty;
              product.add(e);
            }
          }).toList();
          break;
        case 2:
          productData();
          stdout.write("\n Enter any choice: ");
          pro_id = int.parse(stdin.readLineSync()!);

          product.map((e) {
            if (e['id'] == pro_id) {
              product.remove(e);
            }
          }).toList();
          break;
        case 3:
          product.forEach((element) {
            print("\n\nPRODUCT NAME\t: ${element['name']}");
            print("PRODUCT PRICE\t: ${element['price']}");
          });
          break;
        case 0:
          print("WELCOME BACK 🙏");
        default:
          print("Invalid Choice !!");
      }
    } while (choice != 0);
  }

  void BillData() {
    double final_amount = 0, discount_amount = 0;
    for (int i = 0; i < product.length; i++) {
      int price = product[i]['price'] * product[i]['qty'];
      final_amount += price;
    }

    if (final_amount >= 500 && final_amount <= 1500) {
      discount_amount = final_amount - (final_amount * 10 / 100);
    } else if (final_amount >= 1501 && final_amount <= 3500) {
      discount_amount = final_amount - (final_amount * 20 / 100);
    } else if (final_amount >= 3501 && final_amount <= 6500) {
      discount_amount = final_amount - (final_amount * 25 / 100);
    } else if (final_amount >= 6501) {
      discount_amount = final_amount - (final_amount * 30 / 100);
    }

    customer.cust_products.add({
      'cust_id': cust_id,
      'cust_name': cust_name,
      'cust_number': cust_contact,
      'product': cust_products,
      'sub_total': final_amount,
      'total': discount_amount,
    });
  }

  Product({
    required this.cust_id,
    required this.cust_name,
    required this.cust_contact,
    required this.customer,
  }) {
    getProductDetails();
    BillData();
  }
}

void main() {
  Customers customer = Customers();

  stdout.write("Enter number of Customer: ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    customer.setCustomerData();

    Product(
      cust_id: customer.cust_id,
      cust_name: customer.cust_name,
      cust_contact: customer.cust_contact,
      customer: customer,
    );
  }

  print("${customer.customer_products.length}");

  stdout.write("Enter the Customer Id\t: ");
  int cust_id = int.parse(stdin.readLineSync()!);

  customer.customer_products.forEach((e) {
    if (e['cust_id'] == cust_id) {
      customer.printCustomerBill(
        id: e['cust_id'],
        name: e['cust_name'],
        number: e['cust_number'],
        product: e['product'],
        sub_total: e['sub_total'],
        total: e['total'],
      );
    } else {
      print("NO Data Available...");
    }
  });
}
