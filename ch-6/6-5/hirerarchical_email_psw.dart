import 'dart:io';

class Account
{
  late String email;
  late String password;
}
class User extends Account{
  void setUserData()
  {

    stdout.write("enter email :");
    email = stdin.readLineSync()!;
    
    stdout.write("enter password :");
    password = stdin.readLineSync()!;

  }

  void emailGenerate()
  {
      String generate () 
      {
      return "@gmail.com";
      }
  }

  void PasswordGenerate()
  {
    String generate()
    {
      return "Uppercase1@ , 1234";
    }
  }                                                                                                                           

  void getUserData() {

    print("\t--USER DATA--\n");
    print("EMAIL : $email");
    print("PASSWORD : $password");
  
  }
}
void main()
{
  User user = User();

  user.setUserData();
  user.getUserData();
}