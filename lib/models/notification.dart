class Notification {
  const Notification( {
    required this.date,
    required this.orderNum,
    required this.orderType
});

  final int orderNum;
  final OrderType orderType;
  final String date;

}
enum OrderType {
  arrived,
  success,
  confirmed,
  cancel,
}