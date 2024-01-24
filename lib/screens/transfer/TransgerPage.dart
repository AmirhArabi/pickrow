import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../utils/BankingColors.dart';
import '../../utils/BankingContants.dart';
import '../../utils/BankingImages.dart';
import '../../utils/BankingSlider.dart';
import '../../utils/BankingStrings.dart';
import '../../utils/BankingWidget.dart';

class BankingTransfer extends StatefulWidget {
  static var tag = "/BankingTransfer";

  @override
  _BankingTransferState createState() => _BankingTransferState();
}

class _BankingTransferState extends State<BankingTransfer> {
  bool isSwitch = false;
  bool isGetOtp = false;
  var tapCount = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Banking_app_Background,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              10.height,
              Text(
                isSwitch == true
                    ? Banking_lbl_Confirm_Transfer
                    : Banking_lbl_Transfer,
                style: primaryTextStyle(
                    color: Banking_TextColorPrimary,
                    size: 26,
                    fontFamily: fontBold),
              ),
              10.height,
              Text("انتخاب حساب برای انتقال",
                  style: primaryTextStyle(
                      color: Banking_TextColorSecondary,
                      size: 14,
                      fontFamily: fontBold)),
              16.height,
              const BankingSliderWidget().visible(isSwitch == false),
              Container(
                margin: const EdgeInsets.only(
                    left: spacing_standard_new, right: spacing_standard_new),
                child: Stack(
                  children: [
                    Image.asset(Banking_ic_CardImage,
                        fit: BoxFit.cover, height: 200),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("مانی دیبا",
                                style: boldTextStyle(
                                    color: Banking_whitePureColor,
                                    size: 18,
                                    fontFamily: fontMedium))
                                .paddingOnly(
                                top: spacing_large,
                                left: spacing_standard_new),
                            Text(Banking_lbl_app_Name,
                                style: boldTextStyle(
                                    color: Banking_whitePureColor,
                                    size: 16,
                                    fontFamily: fontMedium))
                                .paddingOnly(
                                top: spacing_large,
                                right: spacing_standard_new)
                          ],
                        ),
                        Text("به همین بانک",
                            style: boldTextStyle(
                                color: Banking_whitePureColor,
                                size: 18,
                                fontFamily: fontRegular))
                            .paddingOnly(
                            top: spacing_large, left: spacing_standard_new),
                        Text('1121 *** ** *** 5555',
                            style: boldTextStyle(
                                color: Banking_whitePureColor,
                                size: 18,
                                fontFamily: fontRegular))
                            .paddingOnly(
                            left: spacing_standard_new,
                            top: spacing_control),
                        Text("\$" + "12,500",
                            style: boldTextStyle(
                                color: Banking_whitePureColor,
                                size: 18,
                                fontFamily: fontRegular))
                            .paddingOnly(
                            top: spacing_standard,
                            left: spacing_standard_new),
                      ],
                    ),
                    10.height,
                  ],
                ),
              ).visible(isSwitch == true),
              16.height,
              const Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  20.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.keyboard_arrow_left,
                              size: 30, color: Banking_greyColor),
                          Text("به همین بانک",
                              style: primaryTextStyle(
                                  color: Banking_TextColorPrimary,
                                  size: 16,
                                  fontFamily: fontRegular)),

                        ],
                      ).onTap(
                            () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => CustomDialog(),
                          );
                        },
                      ),
                      Text("انتخاب بانک",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),
                    ],
                  ),
                  20.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.keyboard_arrow_left,
                              size: 30, color: Banking_greyColor),
                          Text("محمد یعقوبی",
                              style: primaryTextStyle(
                                  color: Banking_TextColorPrimary,
                                  size: 16,
                                  fontFamily: fontRegular)),
                        ],
                      ),
                      Text("انتخاب ذینفع",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),
                    ],
                  ),
                  20.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("123 456 789",
                          style: primaryTextStyle(
                              color: Banking_TextColorPrimary,
                              size: 16,
                              fontFamily: fontRegular)),
                      Text("شماره حساب",
                          textDirection: TextDirection.rtl,
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),

                    ],
                  ),
                  const Divider(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(Banking_lbl_app_Name,
                          style: primaryTextStyle(
                              color: Banking_TextColorPrimary,
                              size: 16,
                              fontFamily: fontRegular)),
                      Text("بانک",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),
                    ],
                  ),
                  const Divider(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("خیام",
                          style: primaryTextStyle(
                              color: Banking_TextColorPrimary,
                              size: 16,
                              fontFamily: fontRegular)),
                      Text("شعبه",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),
                    ],
                  ),
                  const Divider(height: 24),
                  Text("اطلاعات انتقال",
                      style: primaryTextStyle(
                          color: Banking_TextColorSecondary,
                          size: 14,
                          fontFamily: fontRegular)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("150,000",
                          style: primaryTextStyle(
                              color: Banking_TextColorPrimary,
                              size: 16,
                              fontFamily: fontRegular)),
                      Text("مبلغ",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),

                    ],
                  ),
                  const Divider(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("بابت اجاره ماشین",
                          style: primaryTextStyle(
                              color: Banking_TextColorPrimary,
                              size: 16,
                              fontFamily: fontRegular)),
                      Text("توضیحات",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),
                    ],
                  ),
                  const Divider(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("5,000",
                          style: primaryTextStyle(
                              color: Banking_TextColorPrimary,
                              size: 16,
                              fontFamily: fontRegular)),
                      Text("کارمزد انتقال",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),

                    ],
                  ),
                  const Divider(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Switch(
                        value: isSwitch,
                        onChanged: (value) {
                          setState(() {
                            isSwitch = value;
                            print(isSwitch);
                          });
                        },
                        activeTrackColor: Banking_Primary.withOpacity(0.5),
                        activeColor: Banking_Primary,
                      ),
                      Text("ذخیره اطلاعات هویتی",
                          style: primaryTextStyle(
                              color: Banking_TextColorSecondary,
                              size: 16,
                              fontFamily: fontRegular)),
                    ],
                  ).visible(isGetOtp == false),
                  const Divider(height: 24),
                  16.height,
                  24.height,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}

dialogContent(BuildContext context) {
  return Container(
    padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
    decoration: boxDecorationWithRoundedCorners(
        borderRadius: BorderRadius.circular(10),
        backgroundColor: Banking_whitePureColor),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        8.height,
        Text(Banking_lbl_Same_Bank,
            style: primaryTextStyle(
                color: Banking_TextColorSecondary,
                size: 16,
                fontFamily: fontRegular))
            .onTap(() {
          finish(context);
        }),
        8.height,
        Divider(thickness: 1.0, color: Banking_greyColor.withOpacity(0.5)),
        8.height,
        Text(Banking_lbl_Other_Bank,
            style: primaryTextStyle(
                color: Banking_TextColorSecondary,
                size: 16,
                fontFamily: fontRegular))
            .onTap(() {
          finish(context);
        }),
        8.height,
        Divider(thickness: 1.0, color: Banking_greyColor.withOpacity(0.5)),
        8.height,
        Text(Banking_lbl_Credit_Card,
            style: primaryTextStyle(
                color: Banking_TextColorSecondary,
                size: 16,
                fontFamily: fontRegular))
            .onTap(() {
          finish(context);
        }),
        8.height,
      ],
    ),
  );
}
