import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:fitness_client_project/utils/utils.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectPaymentMethodsBottomSheet extends StatefulWidget {
  SelectPaymentMethodsBottomSheet({super.key});

  @override
  State<SelectPaymentMethodsBottomSheet> createState() =>
      _SelectPaymentMethodsBottomSheetState();
}

class _SelectPaymentMethodsBottomSheetState
    extends State<SelectPaymentMethodsBottomSheet> {
  @override
  Widget build(BuildContext context) {
    context.watch<AppColors>();
    return Scaffold(
      backgroundColor: usedAppColor.Color9EA0A5,
      body: SafeArea(child: _buildCascadedBottomsheet(context)),
    );
  }

  int? selectedPaymentProvider = 0;

  Column _buildCascadedBottomsheet(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FancyContainer(
          height: MediaQuery.of(context).size.height * .70,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20.0, left: 20.0),
                child: FancyContainer(
                  height: double.infinity,
                  width: double.infinity,
                  isContinousBorder: false,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  backgroundColor: usedAppColor.white.withAlpha(50),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                child: FancyContainer(
                  height: double.infinity,
                  width: double.infinity,
                  isContinousBorder: false,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  backgroundColor: usedAppColor.white.withAlpha(200),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                ),
                child: FancyContainer(
                  isContinousBorder: false,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  backgroundColor: usedAppColor.white,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Center(
                            child: FancyContainer(
                              width: 50,
                              height: 5,
                              backgroundColor: usedAppColor.D7D8D9,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FancyText(
                                "Select Payment Methods",
                                rawTextStyle: GoogleFonts.workSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              FancyContainer(
                                backgroundColor: usedAppColor.D7D8D9,
                                radius: 20,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.question_mark_outlined,
                                    size: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Column(
                            children: paymentProviderList.map(
                              (element) {
                                bool isSelected = selectedPaymentProvider ==
                                    paymentProviderList.indexOf(element);
                                double radius = 10;
                                Widget child = FancyContainer(
                                  action: () {
                                    selectedPaymentProvider =
                                        paymentProviderList.indexOf(element);
                                    setState(() {});
                                  },
                                  isContinousBorder: false,
                                  height: 40,
                                  radius: radius,
                                  backgroundColor: usedAppColor.f3f3f4,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        FancyText(
                                          element["name"],

                                          // textColor:usedAppColor.white,
                                        ),
                                        Spacer(),
                                        SizedBox(
                                          width: 50,
                                          child: Image.asset(
                                            element["image"],
                                            //  "assets/images/calendarIcon-filled.png",
                                            // element["image"],
                                            // color:usedAppColor.white,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        FancyContainer(
                                          height: 15,
                                          width: 15,
                                          radius: 10,
                                          hasBorder: true,
                                          borderColor: isSelected
                                              ? usedAppColor.black
                                              : Colors.grey,
                                          child: !isSelected
                                              ? null
                                              : FancyContainer(
                                                  height: 5,
                                                  width: 5,
                                                  radius: 20,
                                                  hasBorder: true,
                                                  backgroundColor:
                                                      usedAppColor.black,
                                                  // borderColor: isSelected
                                                  //     ? usedAppColor.black
                                                  //     : Colors.grey,
                                                  child: SizedBox(),
                                                ),
                                        )
                                      ],
                                    ),
                                  ),
                                );

                                return Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: isSelected
                                        ? wrapWithselectedsBorder(
                                            child: child, radius: radius)
                                        : child);
                              },
                            ).toList(),
                          ),
                          _buildBottomButton()
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Padding _buildBottomButton() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: FancyContainer(
        radius: 15,
        width: 300,
        height: 50,
        action: () {},
        isContinousBorder: false,
        backgroundColor: getFigmaColor("000000"),
        //  usedAppColor.f3f3f4,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FancyText(
                "Select",
                rawTextStyle: GoogleFonts.urbanist(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: usedAppColor.white,
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.check_rounded,
                color: usedAppColor.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
