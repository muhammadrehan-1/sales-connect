import '../models/notification.dart';

final List<Notification> dummyNotifications = [
  const Notification(
     orderType: OrderType.arrived,
      orderNum: 24089794727000824,
      date: 'August 21,2023 (08:00 pm)'),
  const Notification(

      orderType: OrderType.confirmed,

      orderNum: 24089794727000824,
      date: 'August 21,2023 (08:00 pm)'),
  const Notification(

      orderType: OrderType.cancel,
      orderNum: 24089794727000824,
      date: 'August 21,2023 (08:00 pm)'),
  const Notification(

      orderType: OrderType.success,

      orderNum: 24089794727000824,
      date: 'August 21,2023 (08:00 pm)'),

];
