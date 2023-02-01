import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../../theme/constants.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({Key? key}) : super(key: key);

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  TextEditingController numberController = TextEditingController();
  CountryCode? countryCode;
  String dialCode = "";
  final countryPicker = const FlCountryCodePicker();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxHeight = constraints.maxHeight;
      double maxWidth = constraints.maxWidth;
      double h1p = maxHeight * 0.01;
      double h10p = maxHeight * 0.1;
      double w10p = maxWidth * 0.1;
      double w1p = maxWidth * 0.01;
      return Scaffold(
        body: Center(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: w1p * 6, right: w1p * 6, top: h10p * 3.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/ssss 1.png"),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: w1p * 6, vertical: h1p * 2),
                  child: Container(
                    height: h1p * 7,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(width: w1p * .3, color: Colors.black),
                        borderRadius: BorderRadius.circular(11)),
                    child: TextFormField(
                      controller: numberController,
                      keyboardType: const TextInputType.numberWithOptions(),
                      textInputAction: TextInputAction.done,
                      maxLines: 1,
                      decoration: InputDecoration(
                          prefixIcon:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    left: w1p * 3,
                                    right: w1p * 3,
                                    top: h1p * 1,
                                    bottom: h1p * 1),
                                child: InkWell(
                                  onTap: () async {
                                    final code = await countryPicker.showPicker(
                                        context: context);
                                    setState(() {
                                      countryCode = code;
                                      if (countryCode != null) {
                                        dialCode = countryCode!.dialCode;
                                      }
                                    });
                                  },
                                  child: Container(
                                    width: w10p * 1,
                                    decoration: BoxDecoration(),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(4),
                                        child: countryCode != null
                                            ? countryCode!.flagImage
                                            : Image.asset(
                                                "assets/images/Flag_of_India.png",
                                                fit: BoxFit.fill,
                                              )),
                                  ),
                                )),
                            InkWell(
                              child: Text(
                                countryCode?.dialCode ?? "+91  ",
                                style: TextStyles.textStyle3,
                              ),
                            ),
                            SizedBox(width: w1p * 1),
                          ]),
                          hintText: "Enter Your Phone Number",
                          hintStyle: TextStyles.textStyle4,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ))
            ],
          ),
        ),
      );
    });
  }
}
