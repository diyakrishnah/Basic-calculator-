import 'dart:io';

void main() {
stdout.write('Enter 2 numbers (space separated): ');
var input = stdin.readLineSync()?.split(' ');

if (input == null || input.length < 2) return;

try {
var a = int.parse(input[0]);
var b = int.parse(input[1]);
String? choice;

while (choice != '3') {  
  stdout.write('\nChoose: 1->Arithmetic, 2->Comparison, 3->Exit: ');  
  choice = stdin.readLineSync();  

  switch (choice) {  
    case '1':  
      print('\n1. Add\n2. Subtract\n3. Multiply\n4. Divide');  
      stdout.write('Select operation: ');  
      var op = stdin.readLineSync();  

      switch (op) {  
        case '1':  
          print('Sum: ${a + b}');  
          break;  
        case '2':  
          print('Difference: ${a - b}');  
          break;  
        case '3':  
          print('Product: ${a * b}');  
          break;  
        case '4':  
          b != 0 ? print('Quotient: ${a / b}') : print('Cannot divide by zero');  
          break;  
        default:  
          print('Invalid operation');  
      }  
      break;  

    case '2':  
      if (a > b) {  
        print('$a is greater than $b');  
      } else if (a < b) {  
        print('$a is less than $b');  
      } else {  
        print('$a is equal to $b');  
      }  
      break;  

    case '3':  
      print('Exiting...');  
      break;  

    default:  
      print('Invalid choice');  
  }  
}

} catch (e) {
print("Invalid input. Please enter valid integers.");
}
}

