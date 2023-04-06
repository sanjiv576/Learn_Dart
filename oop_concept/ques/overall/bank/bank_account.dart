class BankAccount{
  String? accountNumber;
  String? accountHolder;
  double? balance;

  BankAccount(
      {required String accountNum,
      required String userName,
      double accountBalance = 0.0}) {
    this.accountNumber = accountNum;
    this.accountHolder = userName;
    this.balance = accountBalance;
  }
}
