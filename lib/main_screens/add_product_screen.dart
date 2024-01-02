import 'package:connect_sales/utils/helping_widgets/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../colors.dart';


class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  bool isChecked = false;
  bool isChecked2 = false;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width ,
              ),
              Text(
                'Add Images',
                style: const TextStyle().copyWith(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomPlusContainer(),
                  CustomPlusContainer(),
                  CustomPlusContainer(),
                  CustomPlusContainer(),
                  CustomPlusContainer(),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'Prepare images before uploading. \nUpload images larger than 750px x 450px.\nMax number of images is 5. Max image size is 134MB.',
                style: const TextStyle().copyWith(
                  color: iconGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'Add Details',
                style: const TextStyle().copyWith(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const CustomTextFormField(label: 'Title', hint: 'Vitamins', iconPath: null),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child:  const CustomTextFormField(label: 'Price', hint: '\$55.00', iconPath: null),),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                      child: Container(
                        width: 14,
                        height: 14,
                        decoration: ShapeDecoration(
                          color: isChecked ? orange : Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 1,
                              color: grey,
                            ),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        child: isChecked
                            ? const Icon(
                          Icons.done,
                          color: Colors.white,
                          size: 10,
                        )
                            : null,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Is price negotiable?',
                      style: const TextStyle().copyWith(
                        color: const Color(0xFF2E384D),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: ' Description ',
                  labelStyle:  const TextStyle().copyWith(
                    color: grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: const EdgeInsets.only(left: 25,right: 5 , top: 50, bottom: 50),
                  hintStyle: const TextStyle().copyWith(
                    color: grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: const BorderSide(
                      color: grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isChecked2 = !isChecked2;
                        });
                      },
                      child: Container(
                        width: 14,
                        height: 14,
                        decoration: ShapeDecoration(
                          color: isChecked2 ? orange : Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 1,
                              color: grey,
                            ),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        child: isChecked2
                            ? const Icon(
                          Icons.done,
                          color: Colors.white,
                          size: 10,
                        )
                            : null,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'I agree to terms & conditions',
                      style: const TextStyle().copyWith(
                        color: const Color(0xFF2E384D),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: ShapeDecoration(
                      color: pink,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),),
                    child: Text(
                      'Check Out',
                      style: const TextStyle().copyWith(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: ShapeDecoration(
                      color: orangeMain,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),),
                    child: Text(
                      'Submit',
                      style: const TextStyle().copyWith(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                  ),
                ],
              ),


            ],
        ),
      ),
    );
  }
}

class CustomPlusContainer extends StatelessWidget {
  const CustomPlusContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.07,
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: const Color(0x3AD2610F),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: SvgPicture.asset('assets/icons/plus_colored.svg'),
    );
  }
}
