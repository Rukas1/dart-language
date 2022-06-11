import 'dart:core'; // package par defaut (non obligatoire (importer))
import 'dart:io'; // package pour userEntry

// in line comment

/**
 * mutiple
 * line 
 * comment
 * with 
 * style
 */

/*
bonjour
same |<
*/

///
/// Documentation
///

void main() {
  userEntry();
  dataTypes();
  string_specification();
  convertion();
  constantType();
  dartOperator();
  var n;
  // var n = Num();
  int? number;

  number = n?.number;

  /**
   * -> 
   * if (n != null) {
   *   number = n.number;
   * }
  */

  int? number2;

  number2 = n?.number ?? 5;

  print(number);
  print(number2);

  int? nombre;
  print(nombre);
  print(number ??= 100);

  tenaryOperator();
  verification();
  condition();
  switch_case();
  looping();
  collection();
  function();
  classe();
  exceptionHandling();
}

void userEntry() {
  stdout.write("What is your name ? ");
  // stdout.writeln("What is your name ? ");
  String? name = stdin.readLineSync();
  if (name == "") {
    print("No name !");
  } else {
    print("Your name is $name ");
  }
}

void dataTypes() {
  /**
   * Strongly Typed language: The type of a variable is know at compile time.
   * For exemple: C++, Swift, java.
   * 
   * Dynamic Typed Language: The type of a variable is know at run time.
   * For exemple: Python, Javascript, Ruby.
   */
  /*
    Strongly Typed:
        int 
        double
        String
        bool
    
    Dynamic Typed:
        dynamic
  */
  int amount1 = 5;
  var amount2 = 100;

  print("Amount1: $amount1 | Amount2: $amount2 \n");

  double dAmount1 = 3.14;
  var dAmount2 = 3252.554532592015;

  print("dAmount1: $dAmount1 | dAmount2: $dAmount2 \n");

  String name1 = "Ichinose";
  var name2 = "Miku";

  print("dAmount1: $name1 | dAmount2: $name2 \n");

  bool isItTrue = true;
  var isItFalse = false;

  print("isItTrue: $isItTrue | isItFalse: $isItFalse");

  dynamic weekvariable = 100;
  print("weekVariable : $weekvariable");
  weekvariable = "dart is a super language ! ";
  print(weekvariable);

  weekvariable = null;
  print(weekvariable);

  int? nom;
  int? nam = null;
  print('$nom' + ' ' + '$nam');
}

void string_specification() {
  var s1 = 'Single quotes work well for string literals';
  var s2 = "Double quotes work just as well";
  var s3 = 'It\'s easy to escape the string delimiter';
  var s4 = "It's even easier to use the other delimiter";

  print(s1);
  print(s2);
  print(s3);
  print(s4);
  print('');

  // raw string
  var s = r'In a raw string, not even \n gets special treatment';
  print(s);

  var age = 14;
  var str = "My age is $age";
  print(str);

  var singleQuotes = '''
You can create
muti-line strings like 
this one''';

  var doublequotes = """This is also a
multi-line string""";

  print(singleQuotes);
  print(doublequotes);
}

void convertion() {
  // String -> int
  var one = int.parse('1');
  assert(one == 1); // -> true / false

  /** https://www.geeksforgeeks.org/assert-statements-in-dart/
   * 
   * Dart provides the programmer with assert 
   * statements to check for the error. The assert 
   * statement is a useful tool to debug the code 
   * and it uses boolean condition for testing. If 
   * the boolean expression in assert statement is 
   * true then the code continues to execute, but 
   * if it returns false then the code ends with 
   * Assertion Error. 
   * 
   * It must be noted that if you want to use assert
   *  then you have to enable it while execution as it 
   * can only be used in the development mode and not 
   * in productive mode. If it is not enabled then it 
   * will be simply be ignored while execution.
   * Enable the assert while executing a dart file via cmd as:
   * dart --enable-asserts file_name.dart
   * 
   * void main() { 
   *  String geek = "Geeks For Geeks";
   *  assert(geek != "Geeks For Geeks");
   *  print("You Can See This Line Geek as a Output");
   * 
   * assert(condition, "message");
   * 
   * 
}
*/

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
}

void constantType() {
  const aConstNum = 0; // int constant
  const aConstBool = true; // bool constant
  const aConstString = 'a constant string'; // sring constant

  print(aConstNum);
  print(aConstBool);
  print(aConstString);

  print(aConstNum.runtimeType);
  print(aConstBool.runtimeType);
  print(aConstString.runtimeType);
}

void dartOperator() {
  int number = 10 + 22;
  number = number - 2;

  print(number);

  number = number % 5;
  print(number);

  // relational ==, !=, >=, <=, >, <
  if (number == 0) {
    print("zero");
  }

  number = 100;
  number *= 2; // number = number * 2;
  print(number);

  // unary operator
  ++number;
  number++;
  number += 1;
  number -= 1;
  print(number);

  // logical && and logical ||  -> and/or
  if (number > 200 && number < 203) {
    print("200 to 203");
  }

  // != Not equal
  if (number != 100) {
    print("number is not equal to 100");
  }

  // Null Aware Operator
  // (?.), (??), (??=)
  // see class Num
}

class Num {
  int number = 15;
}

void tenaryOperator() {
  int x = 100;
  var result = x % 2 == 0 ? 'Even' : "Odd";
  /*
    if (x % 2 == 0) {
      result = "Even";
    }
    else {
      result = "Odd";
    }
  */

  print(result);
}

void verification() {
  var nombre = 15;

  if (nombre is int) {
    print("Integer");
  }
}

void condition() {
  int number = 100;
  if (number % 2 == 0) {
    print("Even");
  } else if (number % 3 == 0) {
    print("Odd");
  } else {
    print("confused");
  }
}

void switch_case() {
  int number = 0;

  switch (number) {
    case 0:
      {
        print("0");
      }
      break;
    case 10:
      {
        print("10");
      }
      break;
    default:
      {
        print("other");
      }
  }

  switch (number) {
    case 0:
      print("0");
      break;
    case 10:
      print("10");
      break;
    default:
      print("other");
  }
}

void looping() {
  // standard for loop
  for (var i = 1; i <= 10; ++i) {
    print(i);
  }
  // for-in loop
  var numbers = [1, 2, 3];
  for (var n in numbers) {
    print(n);
  }

  for (var i = 0; i < numbers.length; ++i) {
    print(numbers[i]);
  }
  // forEach loop
  numbers.forEach((n) => print(n));
  // function takes another function: higher order function
  numbers.forEach(printNum);
  // see down ...

  // while loop
  int num = 5;

  while (num > 0) {
    print(num);
    num--;
  }

  if (num < 1) {
    num = 5;
  }

  do {
    print(num);
    num--;
  } while (num > 0);

  // break and continue
  for (var i = 0; i < 10; ++i) {
    if (i > 5) break;
    print(i);
  }
  for (var i = 0; i < 10; ++i) {
    if (i % 2 == 0) continue;
    print("odd $i");
  }
}

void printNum(n) {
  print(n);
}

void collection() {
  // list, set, map

  // List (arrays in other language **)
  List names = ['Jack', 'Jill'];
  print(names[0]); // Jack (easy)
  print(names.length);

  var names2 = ['Ichinose', 'miku'];
  // same

  for (var n in names) {
    print("name: $n");
  }

  var items = ["jack", 101, 1.47, true];

  List<String> names3 = ["jack", "pierre"]; // statically typed

  names[1] = "Mark";
  print(names[1]);

  List<int> numbers = const [1, 2, 5, 4];
  // peut pas : numbers[0] = 4;

  var firstNames = names;
  // not copied, just a "link" !
  // if I change the list names, it changes the list firstNames too

  var firstNamesCopied = [...names];

  // Set
  // set is a unique collection of items
  var halogens = {'fluorine', 'chlorine', 'fluorine'};
  // the second flurine is not printed (see down)

  for (var x in halogens) {
    print(x);
  }

  var produit = {};
  print(produit.runtimeType);

  var produit2 = <String>{};
  print(produit2.runtimeType);

  Set<String> tools = {};

  print(tools.runtimeType);

  // Map (dictionnary)

  var gifts = {
    // key: value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  print(gifts['first']);

  var gifts2 = {
    // key: value
    1: 'partridge',
    2: 'turtledoves',
    5: 'golden rings'
  };

  print(gifts2[5]);

  var presents = Map();
  presents['first'] = 'mango';
  print(presents['first']);
  var presents2 = {'first': 'Mango', 'third': 'Jack fruit'};

  print(presents2['third']);
}

// function

void function() {
  showOutput(square(15));
  showOutput(square(18.1));

  print(square.runtimeType);

  var list = ['apple', 'peach', 'strawberry'];

  list.forEach((item) {
    print(item);
  });

  print(multiply(50, num2: 45));
  print(multiply(54));
}

dynamic square(var x) => x * x;

void showOutput(var msg) => print(msg);

dynamic sum({var num1, var num2}) => num1 + num2;

int multiply(int num1, {int? num2}) => num1 * (num2 ?? 1); // very important !
// {int num2 = 1} => num1 * num2;

// not named :
// int multiply(int num1, [int num2 = 1]) => num1 * num2;

// class

void classe() {
  Person person = Person("Lucas", 14);
  person.showOutput();

  var person2 = Person("jake", 25);
  person2.showOutput();

  var person3 = Person.guest();
  person3.showOutput();

  classe2();
}

class Person {
  String? name;
  int? age;

  Person(String name, [int age = 18]) {
    this.name = name;
    this.age = age;
  }

  /*  -->
  Person(this.name, [this.age = 18]);
  */

  // named constructor
  Person.guest() {
    name = "Guest";
    age = 18;
  }

  void showOutput() {
    print(name);
    print(age);
  }
}

class X {
  final name; // type will be defined by inferred value
  static const int age = 10; // build on class

  X(this.name);
}

void classe2() {
  var x = X('jack');
  print(x.name);
  /*
  can't do that:
  x.name = "Jill";
  print(x.age);
  */
  print(X.age);

  final name = "lucas";
  const age = 14;

  print(name);
  print(age);

  Car car = Car("peugeot", 1980, 15000.5);
  car.showOutput();
  print(car.model);
  var y = Ymath("ordonné");
  y.showOutput();

  var rect = Rectangle(18, 15, 10, 10);
  print(rect.left);
  rect.right = 12;
  print(rect.left);
}

class Vehicle {
  String model;
  int year;

  Vehicle(this.model, this.year) {
    print(this.model);
    print(this.year);
  }

  void showOutput() {
    print(model); // this.model
    print(year);
  }
}

class Car extends Vehicle {
  double price;

  Car(String model, int year, this.price) : super(model, year);

  void showOutput() {
    super.showOutput();
    print(this.price);
  }
}

class Xmath {
  String name;

  Xmath(this.name);

  void showOutput() {
    print(this.name);
  }

  dynamic square(dynamic val) {
    return val * val;
  }
}

class Ymath extends Xmath {
  Ymath(String name) : super(name);

  @override
  void showOutput() {
    print(this.name);
    print('hello');
  }
}

// Getters and Setters

class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // define two calculated propreties: right and bottom
  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

// Exception Handling

void exceptionHandling() {
  letVerifyTheValue(15);
  // letVerifyTheValue(0);
}

int mustGreaterThanZero(int val) {
  if (val <= 0) {
    throw Exception('Value must be greater tha zero');
  }
  return val;
}

void letVerifyTheValue(var val) {
  var valueVerification;

  try {
    valueVerification = mustGreaterThanZero(val);
  } catch (e) {
    print(e);
  } finally {
    if (valueVerification == null) {
      print("Value is not accepted");
    } else {
      print("value verified: $valueVerification");
    }
  }
}

// to catch a particular exception type follow this:
/*
try {
  breedMoreLlamas();
} on OutOfLlamasException {
  // a specific exception
  BuyMoreLlamas();
} on Exception catch (e) {
  // anything else that is an exeption
  print("unknow exception: $e");
} catch (e) {
  // no specified type, handles all
  print("Something really unknown: $e");
}
*/

/*
void main() {
  var p1 = Person(spece: "pokemon",
                 exist: false,
                 habitat: "espace",
                 name: "pikachu"
                 );
  p1.showOutput();
  p1.sePresenter();
  
  Person p2 = Person(spece: "humain",
                    exist: true,
                    habitat: "Terre",
                    name: "lucas",
                    age: 14,
                    taille: 1.50,
                    profession: "codeur",
                    language: "Français"
                    );
  p2.showOutput();
  p2.sePresenter();
  
  
  print(
    "espece vivante ont des cellules: ${LifeSpecies.havecels}"
  );
}

class LifeSpecies {
  String spece;
  bool exist;
  String habitat;
  
  static const havecels = true;
  
  LifeSpecies({required this.spece,
               required this.exist,
               required this.habitat});
  
  void showOutput() {
    print("espece: $spece");
    print("existe: $exist");
    print("habitat: $habitat");
  }
  
}

class Person extends LifeSpecies {
  String? name;
  int? age;
  String? profession;
  double? taille;
  String? language;
  
  Person({
  required String spece, 
  required bool exist, 
  required String habitat, 
  this.name,
  this.age,
  this.profession,
  this.taille,
  this.language
  }) : super(spece: spece, exist: exist, habitat: habitat);
  
  @override
  void showOutput() {
    super.showOutput();
    print("nom: ${name ?? 'pas de nom'}");
    print("age: ${age ?? 'pas d\'age'}");
    print("profession: ${profession ?? 'au chomage'}");
    print("taille: ${taille ?? 'inconnu'}");
    print("langue: ${language ?? 'inconnu'}");
  }
   
  void sePresenter() {
    if (name != null && age != null) {
      print("Je m'appelle $name et j'ai $age ans");
    } else if (name != null) {
      print("Je m'appelle $name");
    } else {
      print("T'apprendras à me connaitre !");
    }
  }
}

*/
