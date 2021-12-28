class User {
  int id;
  String firstName;
  String lastName;
  String emailAddress;
  String password;

  User(
      this.id, this.firstName, this.lastName, this.password, this.emailAddress);

  User.fromJson(Map<String, dynamic> json)
      : id = int.parse(json['id'].toString()),
        firstName = json['first_name'],
        lastName = json['last_name'],
        emailAddress = json['email_address'],
        password = json['password'];

  Map<String, dynamic> toJson() => {
        'first_name': firstName,
        'id': id.toString(),
        'last_name': lastName,
        'email_address': emailAddress,
        'password': password,
      };
}
