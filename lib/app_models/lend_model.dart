class Lend {
  final String title;
  final String description;
  final int amount;
  final String date;
  final String time;
  final bool isMultiple;
  final List<SingleLend> receives;

  Lend({
    required this.title,
    required this.description,
    required this.amount,
    required this.date,
    required this.time,
    required this.isMultiple,
    required this.receives});

  factory Lend.fromJson(Map<String, dynamic> data) {
    final List<SingleLend> receives = (data['receives'] as List<Map<String, dynamic>>).map((receive) => SingleLend.fromJson(receive)).toList();
    return Lend(
        title: data['title'],
        description: data['description'],
        amount: data['amount'],
        date: data['date'],
        time: data['time'],
        isMultiple: data['is_multiple'],
        receives: receives
    );
  }
}

class SingleLend {
  final String id;
  final String receiverId;
  final String description;
  final int amount;

  SingleLend({
    required this.id,
    required this.receiverId,
    required this.description,
    required this.amount
  });

  factory SingleLend.fromJson(Map<String, dynamic> data) {
    return SingleLend(
        id: data['_id'],
        receiverId: data['receiver_id'],
        description: data['description'],
        amount: data['amount']
    );
  }
}