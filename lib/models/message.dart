class Message {
  const Message({
    required this.image,
    required this.name,
    required this.lastMessage,
    required this.isSeen,
    required this.time,
  });
  final String image;
  final String name;
  final String lastMessage;
  final bool isSeen;
  final String time;
}
