import 'bank_account.dart';

class Bank {
  List<BankAccount>? _bankAccount = [];

  Bank() {
    _bankAccount!.add(
        BankAccount(accountNum: 'DEG120034DDR', userName: 'Sanjiv Shrestha', accountBalance: 452235.23));

    _bankAccount!.add(BankAccount(
        accountNum: 'DEDFEDGE20232',
        userName: 'Anish Hayu'));

    _bankAccount!.add(BankAccount(
        accountNum: 'EFGET003430W',
        userName: 'John Cena',
        accountBalance: 53435.03));
  }

  void addUser(
      {required String accountHolder,
      required String accountNumber,
      double accountBalance = 0.0}) {
    _bankAccount!.add(BankAccount(
        accountNum: accountNumber,
        userName: accountHolder,
        accountBalance: accountBalance));
    print('New member has been added as $accountHolder');
  }

  void deposit({required String accountHolderName, required double amount}) {
    for (BankAccount user in _bankAccount!) {
      if (user.accountHolder == accountHolderName) {
        user.balance = user.balance! + amount;
        print('Amount has been added successfully.');
        return;
      }
    }
    print('Amount has been failed to deposit.');
  }

  void withdraw({required String accountHolderName, required double amount}) {
    for (BankAccount user in _bankAccount!) {
      if (user.accountHolder == accountHolderName) {
        if (user.balance! - amount > 0) {
          user.balance = user.balance! - amount;
          print('Amount has been withdrawn successfully.');
          return;
        } else {
          print('Amount is greater than your balance, so failed to withdraw');
          return;
        }
      }
    }
    print('Amount has been failed to withdraw.');
  }

  dynamic getUser({required String name, required String searchLabel}) {
    for (BankAccount user in _bankAccount!) {
      if (user.accountHolder == name) {
        if (searchLabel.toLowerCase() == 'balance') {
          return user.balance;
        } else if (searchLabel.toLowerCase() == 'account number') {
          return user.accountNumber;
        } else {
          return true;
        }
      }
    }
    print("Sorry, $name name does not exist.");
    return false;
  }

  // double? _getBalance({required String accountHolderName}) {
  //   for (BankAccount user in _bankAccount!) {
  //     if (user.accountHolder == accountHolderName) {
  //       return user.balance;
  //     }
  //   }
  //   print("Sorry, $accountHolderName name does not exist.");
  //   return 0.0;
  // }

  void printAllUsers() {
    for (BankAccount users in _bankAccount!) {
      print(
          'Account holder : ${users.accountHolder} \nAccount Number : ${users.accountNumber} \nBalance : ${users.balance}');
    }
  }
}
