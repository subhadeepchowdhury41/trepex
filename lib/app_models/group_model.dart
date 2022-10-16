class Group {
  final String name;
  final String id;
  final String admin;
  final List<Map<String, dynamic>> members;

  Group({
    required this.name,
    required this.id,
    required this.admin,
    required this.members
  });

  factory Group.fromJson(Map<String, dynamic> data) {
    return Group(
        name: data['name'],
        id: data['_id'],
        admin: data['admin'],
        members: data['members'] as List<Map<String, dynamic>>
    );
  }
}