import 'package:flutter/material.dart';
import '../../utils/BankingColors.dart';
import '../../utils/BankingContants.dart';
import '../../utils/BankingImages.dart';
import '../../utils/BankingStrings.dart';
import '../../utils/BankingWidget.dart';
import 'package:nb_utils/nb_utils.dart';

import 'BankingChangePasword.dart';
import 'BankingShareInformation.dart';


class BankingMenu extends StatefulWidget {
  static var tag = "/BankingMenu";

  const BankingMenu({super.key});

  @override
  _BankingMenuState createState() => _BankingMenuState();
}

class _BankingMenuState extends State<BankingMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Banking_app_Background,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(Banking_lbl_Menu,
                style:
                boldTextStyle(
                    color: Banking_TextColorPrimary,
                    fontFamily: fontRegular2,
                    size: 35)).paddingOnly(right: spacing_standard_new*2),
            16.height,
            Container(
              padding: const EdgeInsets.all(8),
              decoration: boxDecorationWithShadow(
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      5.height,
                      Text("مقداد رسولی",
                          style: boldTextStyle(
                              fontFamily: fontRegular,
                              color: Banking_TextColorPrimary, size: 18)),
                      5.height,
                      Text("123 456 789",
                          style: primaryTextStyle(

                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),
                      5.height,
                      Text(Banking_lbl_app_Name,
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 18,
                              fontFamily: fontRegular)),
                    ],
                  ),
                  const CircleAvatar(
                      backgroundImage: AssetImage(Banking_ic_user1),
                      radius: 40),
                  10.width,

                ],
              ),
            ),
            16.height,
            Container(
              padding: const EdgeInsets.all(8),
              decoration: boxDecorationWithShadow(
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: <Widget>[

                  bankingOption(Banking_ic_Setting, Banking_lbl_Setting,
                      Banking_blueColor),
                  bankingOption(Banking_ic_security,
                      Banking_lbl_Change_Password, Banking_pinkColor)
                      .onTap(() {
                    BankingChangePassword().launch(context);
                  }),
                  bankingOption(
                      Banking_ic_Share,
                      Banking_lbl_Share_Information_account,
                      Banking_greenLightColor)
                      .onTap(() {
                    BankingShareInformation().launch(context);
                  }),
                ],
              ),
            ),
            16.height,
            Container(
              padding: const EdgeInsets.all(8),
              decoration: boxDecorationWithShadow(
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: <Widget>[
                  10.height,
                  bankingOption(Banking_ic_News, Banking_lbl_News,
                      Banking_blueColor)
                      .onTap(() {
                  }),
                  bankingOption(
                      Banking_ic_Chart,
                      Banking_lbl_Rate_Information,
                      Banking_greenLightColor)
                      .onTap(() {
                  }),
                  bankingOption(Banking_ic_Pin, Banking_lbl_Location,
                      Banking_greenLightColor)
                      .onTap(() {
                  }),
                  10.height,
                ],
              ),
            ),
            16.height,
            Container(
              padding: const EdgeInsets.all(8),
              decoration: boxDecorationWithShadow(
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: spacing_middle,
                  ),
                  bankingOption(Banking_ic_TC, Banking_lbl_Term_Conditions,
                      Banking_greenLightColor)
                      .onTap(() {
                  }),
                  bankingOption(Banking_ic_Question,
                      Banking_lbl_Questions_Answers, Banking_palColor)
                      .onTap(() {
                  }),
                  bankingOption(Banking_ic_Call, Banking_lbl_Contact,
                      Banking_blueColor)
                      .onTap(() {
                  }),
                  const SizedBox(
                    height: spacing_middle,
                  ),
                ],
              ),
            ),
            16.height,
            Container(
              padding: const EdgeInsets.all(8),
              decoration: boxDecorationWithShadow(
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: <Widget>[
                  bankingOption(Banking_ic_Logout, Banking_lbl_Logout,
                      Banking_pinkColor)
                      .onTap(() {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => const CustomDialog(),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}

dialogContent(BuildContext context) {
  return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0)),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          16.height,
          Text(Banking_lbl_Confirmation_for_logout,
              style: primaryTextStyle(size: 18,fontFamily: fontRegular))
              .onTap(() {
            finish(context);
          }).paddingOnly(top: 8, bottom: 8),
          const Divider(height: 10, thickness: 1.0, color: Banking_greyColor),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("لغو", style: primaryTextStyle(size: 18,fontFamily: fontRegular)).onTap(() {
                finish(context);
              }).paddingRight(16),
              Container(width: 1.0, height: 40, color: Banking_greyColor)
                  .center(),
              Text("خروج",
                  style: primaryTextStyle(size: 18, color: Banking_Primary,fontFamily: fontRegular))
                  .onTap(() {
                finish(context);
              }).paddingLeft(16)
            ],
          ),
          16.height,
        ],
      ));
}
