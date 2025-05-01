import 'package:fitness_client_project/utils/customs/customs.dart';
import 'package:fitness_client_project/utils/customs/fancy_container.dart';
import 'package:fitness_client_project/utils/customs/fancy_text.dart';
import 'package:fitness_client_project/utils/helperFunctions.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String? focusedTextField;
  @override
  Widget build(BuildContext context) {
    // "assets/images/appIcon-Calendar.png";
    // "assets/images/appIcon-creditCard.png";
    // "assets/images/appIcon-fatPencil.png";
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopBar(context),
              _buildCardImageSection(),
              SizedBox(height: 10),
              _buildCardHolderSection(),
              SizedBox(height: 10),
              _buildCardNumberSection(),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: _buildExpiryDateSection()),
                  SizedBox(width: 10),
                  Expanded(child: _buildCVVSection()),
                ],
              ),
              SizedBox(height: 10),
              _buildBottomButton()
            ],
          ),
        ),
      ),
    );
  }

  Column _buildCardHolderSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FancyText(
          "Card Holder Name",
          rawTextStyle: GoogleFonts.workSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Builder(builder: (context) {
          // focusedTextField = "Card Holder textField"
          bool isSelected = focusedTextField == "Card Holder textField";
          double radius = 15;

          Widget child = FancyContainer(
            height: 45,
            radius: radius,
            isContinousBorder: false,
            backgroundColor: getFigmaColor("F3F3F4"),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 15,
                    width: 15,
                    child: const Icon(
                      Icons.person_outline,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: getFigmaColor("F97316"),
                      onTap: () {
                        // Card Holder textField
                        focusedTextField = "Card Holder textField";
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Makise Kuris",
                        hintStyle: GoogleFonts.workSans(
                          color: getFigmaColor("393C43"),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                    width: 15,
                    child: Image.asset("assets/images/appIcon-fatPencil.png"),
                  ),
                  // Transform.rotate(
                  //   angle: 0,
                  //   child:
                  // )
                ],
              ),
            ),
          );

          return isSelected
              ? wrapWithselectedsBorder(child: child, radius: radius)
              : child;
        }),
      ],
    );
  }

// Card Number
  Column _buildCardNumberSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FancyText(
          "Card Number",
          rawTextStyle: GoogleFonts.workSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Builder(builder: (context) {
          // focusedTextField = "Card Number textField"
          bool isSelected = focusedTextField == "Card Number textField";
          double radius = 15;

          Widget child = FancyContainer(
            height: 45,
            radius: radius,
            isContinousBorder: false,
            backgroundColor: getFigmaColor("F3F3F4"),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 15,
                    width: 15,
                    child: const Icon(
                      Icons.question_mark_rounded,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: getFigmaColor("F97316"),
                      onTap: () {
                        // Card Holder textField
                        focusedTextField = "Card Number textField";
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "2411-4587-1125-1487",
                        hintStyle: GoogleFonts.workSans(
                          color: getFigmaColor("393C43"),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                    width: 15,
                    child: Image.asset("assets/images/appIcon-fatPencil.png"),
                  ),
                  // Transform.rotate(
                  //   angle: 0,
                  //   child:
                  // )
                ],
              ),
            ),
          );

          return isSelected
              ? wrapWithselectedsBorder(child: child, radius: radius)
              : child;
        }),
      ],
    );
  }

  Column _buildExpiryDateSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FancyText(
          "Expiry",
          rawTextStyle: GoogleFonts.workSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Builder(builder: (context) {
          // focusedTextField = "Card Number textField"
          bool isSelected = focusedTextField == "Expiry";
          double radius = 15;

          Widget child = FancyContainer(
            height: 45,
            radius: radius,
            isContinousBorder: false,
            backgroundColor: getFigmaColor("F3F3F4"),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 15,
                    width: 15,
                    child: Image.asset("assets/images/appIcon-Calendar.png"),
                  ),
                  SizedBox(
                    height: 15,
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: getFigmaColor("F97316"),
                      onTap: () {
                        // Card Holder textField
                        focusedTextField = "Expiry";
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "01-25",
                        hintStyle: GoogleFonts.workSans(
                          color: getFigmaColor("393C43"),
                        ),
                      ),
                    ),
                  ),

                  // Transform.rotate(
                  //   angle: 0,
                  //   child:
                  // )
                ],
              ),
            ),
          );

          return isSelected
              ? wrapWithselectedsBorder(child: child, radius: radius)
              : child;
        }),
      ],
    );
  }

  Column _buildCVVSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FancyText(
          "CVV",
          rawTextStyle: GoogleFonts.workSans(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Builder(builder: (context) {
          bool isSelected = focusedTextField == "CVV";
          double radius = 15;

          Widget child = FancyContainer(
            height: 45,
            radius: radius,
            isContinousBorder: false,
            backgroundColor: getFigmaColor("F3F3F4"),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 15,
                    width: 15,
                    child: Image.asset("assets/images/appIcon-creditCard.png"),
                  ),
                  SizedBox(
                    height: 15,
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: getFigmaColor("F97316"),
                      onTap: () {
                        focusedTextField = "CVV";
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "025",
                        hintStyle: GoogleFonts.workSans(
                          color: getFigmaColor("393C43"),
                        ),
                      ),
                    ),
                  ),

                  // Transform.rotate(
                  //   angle: 0,
                  //   child:
                  // )
                ],
              ),
            ),
          );

          return isSelected
              ? wrapWithselectedsBorder(child: child, radius: radius)
              : child;
        }),
      ],
    );
  }

  FancyContainer _buildCardImageSection() {
    return FancyContainer(
      height: 150,
      radius: 40,
      backgroundColor: Colors.black,
      child: Stack(
        children: [
          Image.asset("assets/images/creditCardBG.png"),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 50,
                    child: Image.asset(
                      "assets/images/paymentMethodLogo-visa.png",
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                FancyText(
                  "Makise Kurisu",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 10,
                    // fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                FancyText(
                  "2411 4587 1125 1487",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding _buildTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: FancyContainer(
        height: 50,
        // backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBackArrow(context),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FancyText(
                  "Checkout",
                  rawTextStyle: GoogleFonts.workSans(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              FancyContainer(
                height: 30,
                width: 30,
                radius: 20,
                backgroundColor: Colors.grey[300],
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.settings_outlined,
                    weight: .2,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildBottomButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FancyContainer(
        radius: 15,
        width: 300,
        height: 50,
        action: () {},
        isContinousBorder: false,
        backgroundColor: getFigmaColor("000000"),
        //  getFigmaColor("F3F3F4"),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FancyText(
                "Checkout",
                rawTextStyle: GoogleFonts.urbanist(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
              SizedBox.square(
                dimension: 15,
                child: Image.asset("assets/images/appIcon-shoppingCart.png"),
              ),
              // Icon(
              //   Icons.shop,
              //   color: Colors.white,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
