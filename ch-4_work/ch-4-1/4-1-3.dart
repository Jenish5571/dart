import 'dart:io';

int ADDITION(int N1,int N2)
{
  return N1 + N2;
}

int SUBTRACTION(int N1,int N2)
{
  return N1 - N2;
}

int MULTIPLICATION(int N1,int N2)
{
  return N1 * N2;
}

double DIVISION(int N1,int N2)
{
  return N1 / N2;
}

int MODULE(int N1,int N2)
{
  return N1 % N2;
}

void main()
{
  int N1,N2,choice;

  stdout.write("Enter Number1 : ");
  N1 = int.parse(stdin.readLineSync()!);
  
  stdout.write("Enter Number2 : ");
  N2 = int.parse(stdin.readLineSync()!);

  do{
    print("Enter any number");
    print("1.ADD");
    print("2.SUB");
    print("3.MUL");
    print("4.DIV");
    print("5.MOD");
    print("6.EXIT");
    print("ENTER YOUR CHOICE :");
    choice = int.parse(stdin.readLineSync()!);

    switch(choice){
      case 1:
        print("ADD:");
        print("SUM := ${ADDITION(N1, N2)}");
        break;
      
      case 2:
        print("SUB:");
        print("SUM := ${SUBTRACTION(N1,N2)}");
        break;
      case 3:
        print("MUL:");
        print("SUM := ${MULTIPLICATION(N1, N2)}");
        break;

      case 4:
        print("DIV:");
        print("SUM := ${DIVISION(N1, N2)}");
        break;

      case 5:
        print("MOD:");
        print("SUM := ${MODULE(N1, N2)}");
        break;

      default:
        print("Invalid Choice");
        break;
    }

  }
  while(choice !=6);
}