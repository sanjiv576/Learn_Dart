import 'bank.dart';

void main() {
  Bank bank = Bank();

  bank.addUser(accountHolder: 'Aryan', accountNumber: 'SDFSDFSD3434');
  print('');

  bank.deposit(accountHolderName: 'Aryan', amount: 1223);
  print('');

  bank.withdraw(accountHolderName: 'Aryan', amount: 5000);
  print('');

  bank.withdraw(accountHolderName: 'Aryan', amount: 1200);
  print('');

  print(bank.getUser(name: 'Aryan', searchLabel: 'balance'));

  print('');
  bank.printAllUsers();


}
