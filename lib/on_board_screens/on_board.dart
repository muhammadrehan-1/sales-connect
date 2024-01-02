import 'package:connect_sales/authentication_screens/sign_in_screen.dart';
import 'package:connect_sales/provider/buyer_or_seller_provider.dart';
import 'package:connect_sales/utils/helping_widgets/confirm_button.dart';
import 'package:connect_sales/utils/helping_widgets/onBoard.dart';
import 'package:flutter/material.dart';
import '../colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class OnBoard extends ConsumerStatefulWidget {
  const OnBoard({super.key});

  @override
  ConsumerState<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends ConsumerState<OnBoard> {
  var index = 0;
  List<String> belowText = [
    'Your one-stop solution for convenient and secure medicine shopping. Find the medications you need with just a few taps.',
    'Explore a vast range of medicines, healthcare products, and wellness essentials. Fast, reliable, and secure – your health journey begins here.',
    'Empowering Health, your go-to destination for seamless medicine buying and selling. Connect with trusted sellers, explore a wide range of quality medications, and experience . Your well-being, our priority!"'
  ];
  final List<Widget> setting = [
    firstSelectedRow,
    secondSelectedRow,
    lastSelectedRow
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width,
          ),
          Text(
            'LOGO',
            textAlign: TextAlign.center,
            style: const TextStyle().copyWith(
              color: orangeMain,
              fontSize: 36,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          Text(
            'Welcome to Sale Connect',
            textAlign: TextAlign.center,
            style: const TextStyle().copyWith(
              color: grey,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width,
          ),
          Image(
            height: MediaQuery.of(context).size.height * 0.3,
            image: AssetImage('assets/gif/onBoard$index.png'),
          ),
          const SizedBox(
            height: 13,
          ),
          setting[index],
          const SizedBox(
            height: 28,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            height: 59,
            child: Text(
              belowText[index],
              textAlign: TextAlign.center,
              style: const TextStyle().copyWith(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          index == 2
              ? SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                )
              : SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
          index == 2
              ? Expanded(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          ref.read(buyerOrSellerProvider.notifier).isBuyer(true);
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const SignInScreen(title: 'Buyer',);
                          },),);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 56,
                          decoration: ShapeDecoration(
                            color: orangeMain,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                          child: Text(
                            'Become Buyer',
                            textAlign: TextAlign.center,
                            style: const TextStyle().copyWith(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      InkWell(
                        onTap: () {
                          ref.read(buyerOrSellerProvider.notifier).isBuyer(false);
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const SignInScreen(title: 'Seller');
                          },),);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 56,
                          decoration: ShapeDecoration(
                            color: orangeMain,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                          child: Text(
                            'Become Seller',
                            textAlign: TextAlign.center,
                            style: const TextStyle().copyWith(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Expanded(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            index = index + 1;
                          });
                        },
                        child: const ConfirmButton(howMuchRoundedCorners: 20.0, text: 'Continue',),
                      )
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
