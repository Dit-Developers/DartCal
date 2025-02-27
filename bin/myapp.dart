import 'dart:io';

void main() {
  print('''
    __  ___      ______      ________      __      __            
   /  |/  /_  __/ ____/___ _/ / ____/_  __/ /___ _/ /_____  _____
  / /|_/ / / / / /   / __ `/ / /   / / / / / __ `/ __/ __ \/ ___/
 / /  / / /_/ / /___/ /_/ / / /___/ /_/ / / /_/ / /_/ /_/ / /    
/_/  /_/\__, /\____/\__,_/_/\____/\__,_/_/\__,_/\__/\____/_/     
       /____/                        https://msuport.vercel.app 
''');
  
  while (true) {
    print('\nSimple Calculator');
    print('Enter first number:');

    double? num1 = double.tryParse(stdin.readLineSync()!);

    print('Enter an operator (+, -, *, /):');

    String? operator = stdin.readLineSync();

    print('Enter second number:');
    
    double? num2 = double.tryParse(stdin.readLineSync()!);

    if (num1 == null || num2 == null || operator == null) {
      print('Invalid input. Please enter valid numbers and operator.');
      continue;
    }

    double result;
    switch (operator) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        if (num2 == 0) {
          print('Error: Division by zero is not allowed.');
          continue;
        }
        result = num1 / num2;
        break;
      default:
        print('Invalid operator. Please use +, -, *, or /.');
        continue;
    }

    print('Result: $num1 $operator $num2 = $result');
    print('Do you want to perform another calculation? (yes/no)');
    String? choice = stdin.readLineSync()?.toLowerCase();
    if (choice != 'yes') break;
  }
}
