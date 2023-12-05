void main() {
  List name = ["jenish", "mann", "Ram", "Kanudo"];

  List copyName = [];

  name.forEach((element) => print(element));

  copyName = name.map((e) => e).toList();

  print(copyName);
}