class User {
  final String id;
  final String name;
  final String phone;
  final String email;
  final String? upiId;
  final List<Map<String, dynamic>> groups;

  User({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.upiId,
    required this.groups
  });

  factory User.fromJson(Map<String, dynamic> data) {
    return User(
        id: data['_id'],
        name: data['name'],
        phone: data['phone'],
        email: data['email'],
        upiId: data['upiId'],
        groups: data['groups'] as List<Map<String, dynamic>>
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'upiId': upiId,
      'groups': groups
    };
  }
}