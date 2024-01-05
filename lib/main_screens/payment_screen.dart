import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../colors.dart';
import 'order_success_screen.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key, required this.addedPrice});

  final double addedPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leadingWidth: 64,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 24),
            child: SvgPicture.asset(
              'assets/icons/back_button.svg',
            ),
          ),
        ),
        title: Text(
          'Payment',
          textAlign: TextAlign.center,
          style: const TextStyle().copyWith(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Address',
                  style: const TextStyle().copyWith(
                    color:letterBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Edit Address',
                  style: const TextStyle().copyWith(
                    color: const Color(0xFFBBBBBB),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
              width: MediaQuery.of(context).size.width ,
            ),
            Text(
              'Jimmy Sullivan, (+1) 954-868-1190\nLong Beach, California (Jimmy’s Home), 90712',
              style: const TextStyle().copyWith(
                color: grey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              softWrap: true,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
              width: MediaQuery.of(context).size.width ,
            ),
            Text(
              'Payment',
              style: const TextStyle().copyWith(
                color: letterBlack,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
              width: MediaQuery.of(context).size.width ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 64,
                  height: 38,
                  padding: const EdgeInsets.all(5),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x14000000),
                        blurRadius: 25,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: SvgPicture.asset('assets/icons/mastercard.svg'),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Text(
                  '**** **** **** 3947',
                  style: const TextStyle().copyWith(
                    color: letterBlack,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.15,
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
              width: MediaQuery.of(context).size.width ,
            ),
            CustomRow(title: 'Order', price: addedPrice),
            const CustomRow(title: 'Deliver', price: 15.00),
            CustomRow(title: 'Total', price: addedPrice + 15.00),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width ,
            ),
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const OrderSuccessScreen();
          },),);

        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.06,
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            color: orangeMain,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3FD32525),
                blurRadius: 8,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Text(
            'Submit Order',
            textAlign: TextAlign.center,
            style: const TextStyle().copyWith(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
          ],
        ),
      ),
    );
  }
}


class CustomRow extends StatelessWidget {
  const CustomRow({super.key, required this.title, required this.price});

  final String title;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title:',
            style: const TextStyle().copyWith(
              color:  letterBlack,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            '\$$price',
            textAlign: TextAlign.right,
            style: const TextStyle().copyWith(
              color: orangeIconsText,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
