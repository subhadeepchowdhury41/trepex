class Borrow {
  final String id;
  final String senderUid;
  final String date;
  final int amount;
  final String description;
  final String title;

  Borrow({
    required this.id,
    required this.senderUid,
    required this.date,
    required this.amount,
    required this.description,
    required this.title
  });

  factory Borrow.fromJson(Map<String, dynamic> data) {
    return Borrow(
        id: data['_id'],
        senderUid: data['sender_id'],
        date: data['date'],
        amount: data['amount'],
        description: data['description'],
        title: data['title']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'senderUid': senderUid,
      'date': date,
      'amount': amount,
      'description': description,
      'title': title
    };
  }
}