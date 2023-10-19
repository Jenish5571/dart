import 'dart:io'; 
  
 void main() { 
   int a, b, choice; 
  
   stdout.write("Enter Number1:"); 
   a = int.parse(stdin.readLineSync()!); 
  
   stdout.write("Enter Number2:"); 
   b = int.parse(stdin.readLineSync()!); 
  
   do { 
     print("Enter......\n1.Sum\n2.Sub\n3.Mul\n4.Div\n5.Mod\n6.Exit"); 
     stdout.write("Enter Your Choice:"); 
     choice = int.parse(stdin.readLineSync()!); 
  
     switch (choice) { 
       case 1: 
         print("Sum:"); 
         print("$a + $b =${a + b}"); 
         break; 
  
       case 2: 
         print("Sub:"); 
         print("$a - $b =${a - b}"); 
         break; 
  
       case 3: 
         print("Mul:"); 
         print("$a * $b =${a * b}"); 
         break; 
  
       case 4: 
         print("Div:"); 
         print("$a / $b =${a / b}"); 
         break; 
  
       case 5: 
         print("Mod:"); 
         print("$a % $b =${a % b}"); 
         break; 
  
       default: 
         print("Invalid Choice"); 
         break; 
     } 
   } while (choice!=6);
}