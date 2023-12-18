import 'package:connect_sales/utils/helping_variables/onBoard.dart';
import 'package:flutter/material.dart';
import '../colors.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  var index = 0;
  List<String> belowText = [
    'Browse through our user-friendly app, where every swipe brings you closer to fashion perfection.',
    'Shopping made easy – because you deserve to look fabulous without the hassle!',
    'Connect with buyers worldwide while keeping that local touch. Our platform ensures your unique products reach the right audience, wherever they may be.'
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
                        onTap: () {},
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
                        onTap: () {},
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
                            'Become Member',
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
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 56,
                          decoration: ShapeDecoration(
                            color: orangeMain,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            'Continue',
                            textAlign: TextAlign.center,
                            style: const TextStyle().copyWith(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
