import 'dart:io';

void main() 
{
  int n;

    stdout.write("Enter a state: ");
    n = int.parse(stdin.readLineSync()!);

    List a = List.generate(n, (index) => null);

    a.forEach((state) {
      int i = a.indexOf(state);
      stdout.write("Indian States: ");
      a[i]= stdin.readLineSync()!;
    });

    a.forEach((state) {
      print(state);
    });

}