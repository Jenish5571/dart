import 'dart:io';

void main() 
{
  List<String> indianStates = [];

  print("Enter Indian states (type 'exit' to finish):");
  
  while (true) {
    stdout.write("Enter a state: ");
    String input = stdin.readLineSync()!;

    if (input.toLowerCase() == 'exit') 
    {
      break;
    }

    indianStates.add(input);
  }

  print("\nList of Indian States:");

  indianStates.forEach((state) {
    print(state);
  });
}