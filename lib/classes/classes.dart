/**
 * Unlike other languages, in Dart it is recommended to use getters and setters only when there is some logic before using the attribute.
 * If you just want to get or edit the attribute, don't use them.
 */

// bad:
class BankAccount {
  // "_" configure as private
  int _balance;


  int get balance => _balance;

  set balance(int amount) => _balance = amount;

  BankAccount({
    int balance = 0,
  }) : _balance = balance;
}

main() {
  final account = BankAccount();
  account.balance = 100;
}


// good:
class SecondaryBankAccount {
  int balance;

  SecondaryBankAccount({
    this.balance = 0,
  });
}

secondaryMain() {
  final account = SecondaryBankAccount();
  account.balance = 100;
}
