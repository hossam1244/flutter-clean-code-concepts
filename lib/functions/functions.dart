// 1- functions parameters
// 2- functions names
// 3- function flags
// 4- conditionals in functions
// 5- negative conditionals
// 6- remove dead code
// 7- code structure



/**
    Limiting the amount of function parameters is incredibly important because it makes testing your function easier. Having more than three leads to a combinatorial explosion where you have to test tons of different cases with each separate argument.

    One or two arguments is the ideal case, and three should be avoided if possible. Anything more than that should be consolidated. Usually, if you have more than two arguments then your function is trying to do too much. In cases where it's not, most of the time a higher-level object will suffice as an argument.

    To make it obvious what properties the function expects, you can use named parameters. They have a few advantages:

    When someone looks at the function signature, it's immediately clear what properties are being used.
    Linters can warn you about unused properties, if they are required.
 */

// bad
// void createMenu(String title, String body, String buttonText, bool cancellable) {
//   // ...
// }

// createMenu('Foo', 'Bar', 'Baz', false);

// good
// void createMenu({
//   required String title,
//   required String body,
//   required String buttonText,
//   required bool cancellable,
// }) {
//   // ...
// }

// createMenu(
//   title: 'Foo',
//   body: 'Bar',
//   buttonText: 'Baz',
//   cancellable: false,
// );


/**
 * Functions should do one thing
 * This is by far the most important rule in software engineering.
 * When functions do more than one thing, they are harder to compose, test, and reason about.
 * When you can isolate a function to just one action,
 * it can be refactored easily and your code will read much cleaner.
 */

class Client {
  Client({required this.email, required this.name});

  final String name;
  final int email;
}

clientEmail(Client client) {
  // ...
}

class Database {
  // ...
  static lookup(Client client) {
    // ...
  }
}

// bad
void emailClients(List<Client> clients) {
  for(final client in clients) { // for loop
    final clientRecord = Database.lookup(client); // database lookup
    if (clientRecord.isActive()) { // if statement
      clientEmail(client);
    }
  }
}



// good
void emailActiveClients(List<Client> clients) {
  clients
      .where(isActiveClient)
      .forEach(clientEmail);
}

bool isActiveClient(Client client) {
  final clientRecord = Database.lookup(client);
  return clientRecord.isActive();
}


/**
 * Function names should say what they do
 */

// Bad: It's not obvious what the function does
void addToDate(DateTime date, int months) {
  // ...
}

final currentDate = DateTime.now();

// It's hard to tell from the function name what is added
// addToDate(currentDate, 1)


// Good: It's clear from the function name what is added
void addMonthsToDate(int months, DateTime date) {
  // ...
}


/**
 * Don't use flags as function parameters
 */

// Bad:
// void createFile(String name, bool temp) {
//   if (temp) {
//     File('./temp/${name}').create();
//   } else {
//     File(name).create();
//   }
// }

// Good:
// void createFile(String name) {
//   File(name).create();
// }
//
// void createTempFile(String name) {
//   File('./temp/${name}').create();
// }


/**
 * Encapsulate conditionals
 */

// bad
// if (programmer.language == 'dart' && programmer.projectsList.isNotEmpty) {
// // ...
// }

// good
// bool isValidDartProgrammer(Programmer programmer) {
//   return programmer.language == 'dart' && programmer.projectsList.isNotEmpty;
// }
//
// if (isValidDartProgrammer(programmer)) {
// // ...
// }


/**
 * Avoid negative conditionals
 */

// good:
// bool isFileValid(File file) {
//   // ...
// }
// if (isFileValid(file)) {
// // ...
// }


/**
 * Remove dead code
    Dead code is just as bad as duplicate code.
    There's no reason to keep it in your codebase.
    If it's not being called, get rid of it! It will still be safe in your version history if you still need it.
 */