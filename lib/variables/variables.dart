import 'package:intl/intl.dart';
// 1- Use meaningful and pronounceable variable names
// 2- Use the same vocabulary for the same type of variable
// 3- Use searchable names
// 4- Avoid mental mapping
// 5- Use default arguments instead of short circuiting or conditionals
// 6- Don't add unneeded context

/**
 *   Use meaningful and pronounceable variable names
 *   1- the variable/function name should be sufficient enough to understand its purpose
 *   2- should not have to read the whole code to figure out what a function does or what a class represents or to understand why a variable exists
 */

// bad
final yyyymmdstr = DateFormat('yyyy/MM/dd').format(DateTime.now());



// good
final currentDate = DateFormat('yyyy/MM/dd').format(DateTime.now());


// bad
int? d; // elapsed time in days

// good
int? elapsedTimeInDays;
int? daysSinceCreation;
int? daysSinceModification;
int? fileAgeInDays;


// bad: which members are active? which team? real madrid or barcelona?
List<int> getMembers() {
  final activeMembers = <int>[];
  for (var i = 0; i < 10; i++) {
    activeMembers.add(i);
  }
  return activeMembers;
}


// good
List<int> getActiveTeamMembersOfRealMadrid() {
  final activeTeamMembers = <int>[];
  const theTotalNumberOfTeamMembers = 10;
  for (var i = 0; i < theTotalNumberOfTeamMembers; i++) {
    activeTeamMembers.add(i);
  }
  return activeTeamMembers;
}





/**
 * Use the same vocabulary for the same type of variable
 */

// getProfile
// getCategories
// getCategoriesOfSpecificProfile

// getProfile - getCategories
// getTheProfileCategories()
   // profile(id)
   // categories(id)
   // getCategoriesOfSpecificProfile(id)

// ProfileEntity  - getProfileSettings() getProfileInfo()

// ProfileScreen
// SettingsScreen

// bad
getUserInfo() {
  return 'user info';
}

getClientData() {
  return 'user info';
}

getCustomerRecord() {
  return 'user info';
}

// good
getUser() {
  return 'user info';
}

/**
 * Use searchable & explanatory names
 */

saveCityZipCode(city, zipCode) {
  // ...
}

// bad
const address = <String>['One Infinite Loop', 'Cupertino', '95014'];


// saveCityZipCode(address[1], address[2]);


// good
final city = address[1];
final zipCode = address[2];
// saveCityZipCode(city, zipCode);




/**
 * Use searchable names
 */

// bad: What the 32 for?
// Future.delayed(Duration(minutes: 32), launch);


// good
// Declare them as const if the value is known at compile time;
// Declare as final if the variable is assigned just once;
// Use lowerCamelCase;
// setupTimeInMinutes is int, because the type is inferred.
const setupTimeInMinutes = 32;
//   Future.delayed(Duration(minutes: setupTimeInMinutes), launch);




/**
 * Avoid Mental Mapping
 * Readers shouldn’t have to mentally translate your names into other names they already know.
 * clarity is king.
 */
avoidMentalMapping() {
  // bad
  final locations = ['Austin', 'New York', 'San Francisco'];
  locations.forEach((l) {
     // what is `l`? `location`? `laundry`? `lottery`?
  });

  // good
  locations.forEach((location) {

  });
}


/**
 * Don't add unneeded context
    If your class/object name tells you something, don't repeat that in your variable name.
    - Classes and objects should have noun or noun phrase names like Customer, WikiPage, Account, and AddressParser.
    - Methods should have verb or verb phrase names like postPayment, deletePage, or save.

 */

class Bicycle {
  String bicycleMake;
  String bicycleModel;
  String bicycleColor;

  Bicycle({
    required this.bicycleMake,
    required this.bicycleModel,
    required this.bicycleColor,
  });
}

// bad
final bicycle = Bicycle(
  bicycleMake: 'Honda',
  bicycleModel: 'Accord',
  bicycleColor: 'Blue',
);

void paintBicycle(Bicycle car, String color) {
  bicycle.bicycleColor = color;
}


// good
class Car {
  String make;
  String model;
  String color;

  Car({
    required this.make,
    required this.model,
    required this.color,
  });
}

final car = Car(
  make: 'Honda',
  model: 'Accord',
  color: 'Blue',
);

void paintCar(Car car, String color) {
  car.color = color;
}


