import 'dart:convert';

class Usuario {
  late String name;
  late String email;

  // constructor otra version
  Usuario({
    required this.name,
    required this.email,
  });
  // constructor
  Usuario.constructor1(this.name, this.email);
  // constructor
  Usuario.constructor3(String n,String e) {
    name=n;
    email=e;
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'email': this.email,
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      name: map['name'] as String,
      email: map['email'] as String,
    );
  }

  @override
  String toString() {
    return 'El objeto de tipo usuario {name: $name, email: $email}';
  }
}

void main(List<String> arguments) {
  // Code->reformat code
  var jsonString = '''{
      "name": "John Smith",
      "email": "john@example.com"
  }''';

  Map<String, dynamic> user = jsonDecode(jsonString);

  var us1=Usuario(email:"doe",name:"john");
  var us2=Usuario.constructor1("john", "doe");
  var us3=Usuario.fromMap(user);
  var us4=Usuario.fromMap(jsonDecode(jsonString));
  print(us1);
  print(us2);
  print(us3);
  print(us4);
}
