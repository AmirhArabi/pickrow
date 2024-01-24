import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../utils/BankingColors.dart';
import '../../utils/BankingContants.dart';
import '../../utils/BankingStrings.dart';
import '../../utils/BankingWidget.dart';

class BankingChangePassword extends StatefulWidget {
  static var tag = "/BankingChangePassword";

  @override
  _BankingChangePasswordState createState() => _BankingChangePasswordState();
}

class _BankingChangePasswordState extends State<BankingChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Banking_app_Background,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  30.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.chevron_left,
                          size: 25, color: Banking_blackColor)
                          .onTap(
                            () {
                          finish(context);
                        },
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      20.height,
                      Text("تغییر رمزعبور",
                          style: boldTextStyle(
                           fontFamily: fontRegular2,
                              size: 36, color: Banking_TextColorPrimary)),
                    ],
                  ),
                  20.height,
                  EditText(
                      text: "رمزعبور فعلی", isPassword: true, isSecure: true,fontFamily: fontRegular),
                  16.height,
                  EditText(
                      text: "رمزعبور جدید", isPassword: true, isSecure: true, fontFamily: fontRegular),
                  16.height,
                  40.height,
                  BankingButton(
                      textContent: Banking_lbl_Confirm,
                      onPressed: () {
                        toasty(context, 'رمزعبور با موفقیت تغییر یافت');
                        finish(context);
                      }),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              Banking_lbl_app_Name.toUpperCase(),
              style: primaryTextStyle(
                  color: Banking_TextColorSecondary,
                  size: 26,
                  fontFamily: fontRegular),
            ),
          ).paddingBottom(16),
        ],
      ),
    );
  }
}
