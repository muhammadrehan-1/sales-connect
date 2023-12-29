import 'package:connect_sales/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../models/notification.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget(
      {super.key,
      required this.orderType,
      required this.orderNum,
      required this.time});

  final OrderType orderType;
  final int orderNum;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const ShapeDecoration(
              shape: CircleBorder(
                side: BorderSide(
                  color: orangeIconsText,
                ),
              ),
            ),
            child: (orderType == OrderType.success)
                ? SvgPicture.asset('assets/icons/success.svg')
                : (orderType == OrderType.cancel)
                    ? SvgPicture.asset('assets/icons/close.svg')
                    : (orderType == OrderType.arrived)
                        ? SvgPicture.asset('assets/icons/parcel.svg')
                        : SvgPicture.asset('assets/icons/cash.svg'),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                (orderType == OrderType.arrived)
                    ? Text(
                        'Order Arrived',
                        style: const TextStyle().copyWith(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    : (orderType == OrderType.success)
                        ? Text(
                            'Order Success',
                            style: const TextStyle().copyWith(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        : (orderType == OrderType.confirmed)
                            ? Text(
                                'Payment Confirmed',
                                style: const TextStyle().copyWith(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            : Text(
                                'Order Canceled',
                                style: const TextStyle().copyWith(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                const SizedBox(
                  height: 8,
                ),
                (orderType == OrderType.arrived)
                    ? MidColoredText(
                        text:
                            'Order $orderNum has been completed & arrived at the destination address ( Please rates your order ) ',
                        orderNum: orderNum)
                    : (orderType == OrderType.success)
                        ? MidColoredText(
                    text:
                    'Order $orderNum has been Success. Please wait for the product to be sent',
                    orderNum: orderNum)
                        : (orderType == OrderType.confirmed)
                            ? MidColoredText(
                    text:
                    'Order $orderNum has been confirmed. Please wait for the product to be sent',
                    orderNum: orderNum)
                            : MidColoredText(
                    text:
                    'Order $orderNum have been processed. A fund of \$120 will be returned in 15 minutes',
                    orderNum: orderNum),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  time,
                  style: const TextStyle().copyWith(
                    color: const Color(0xFFBBBBBB),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MidColoredText extends StatelessWidget {
  const MidColoredText({
    super.key,
    required this.text,
    required this.orderNum,
  });

  final String text;
  final int orderNum;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: text.substring(0, 6),
          style: const TextStyle().copyWith(
            color: veryLightGrey,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          children: [
            TextSpan(
              text: orderNum.toString(),
              style: const TextStyle().copyWith(
                color: orangeIconsText,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: text.substring(23),
              style: const TextStyle().copyWith(
                color: veryLightGrey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ]),
    );
  }
}
