import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../utils/BankingColors.dart';
import '../../utils/BankingContants.dart';
import '../../utils/BankingSlider.dart';
import '../../utils/BankingStrings.dart';
import '../../utils/BankingWidget.dart';

class BankingInvoiceDetail extends StatefulWidget {
  static var tag = "/BankingInvoiceDetail";

  @override
  _BankingInvoiceDetailState createState() => _BankingInvoiceDetailState();
}

class _BankingInvoiceDetailState extends State<BankingInvoiceDetail> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Banking_app_Background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            const SizedBox(height: spacing_standard_new),
            // headerView(Banking_lbl_Pay_Voice, width * 0.34, context),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.chevron_left, size: 36,).onTap(() {
                  finish(context);
                }),
              ],
            ),
            const Text(Banking_lbl_Pay_Voice,
            style: TextStyle(
              fontSize: 32,
              fontFamily: fontRegular2
            )).paddingOnly(
                right: spacing_standard_new, top: spacing_standard_new),
            Text("انتخاب حساب برای انتقال",
                style: secondaryTextStyle(
                    color: Banking_TextColorSecondary,
                    size: 14,
                    fontFamily: fontRegular))
                .paddingOnly(
                right: spacing_standard_new, top: spacing_standard_new),
            16.height,
            const BankingSliderWidget(),
            Text("صورتحساب مرداد 1403",
                style: secondaryTextStyle(
                    color: Banking_TextColorSecondary,
                    size: 14,
                    fontFamily: fontRegular))
                .paddingOnly(
                right: spacing_standard_new, top: spacing_standard_new),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("رضا مهدوی",
                        style: primaryTextStyle(
                            color: Banking_TextColorPrimary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(
                        left: spacing_standard_new,
                        top: spacing_standard_new),
                    Text("نام",
                        style: primaryTextStyle(
                            color: Banking_TextColorSecondary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(
                        right: spacing_standard_new,
                        top: spacing_standard_new),
                  ],
                ),
                Divider().paddingOnly(
                    left: spacing_standard, right: spacing_standard)
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("نیشابور,بلوار پژوهش,دانشگاه آزاد",
                        style: primaryTextStyle(
                            color: Banking_TextColorPrimary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(
                        left: spacing_standard_new,
                        top: spacing_standard_new),
                    Text("ادرس",
                        style: primaryTextStyle(
                            color: Banking_TextColorSecondary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(
                        right: spacing_standard_new,
                        top: spacing_standard_new),

                  ],
                ),
                Divider().paddingOnly(
                    left: spacing_standard, right: spacing_standard)
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("#7783",
                        style: primaryTextStyle(
                            color: Banking_TextColorPrimary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(
                        left: spacing_standard_new,
                        top: spacing_standard_new),
                    Text("کد",
                        style: primaryTextStyle(
                            color: Banking_TextColorSecondary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(
                        right: spacing_standard_new,
                        top: spacing_standard_new),

                  ],
                ),
                Divider().paddingOnly(
                    left: spacing_standard, right: spacing_standard)
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Text("25تیرماه تا 25 مردادماه",
                        style: primaryTextStyle(
                            color: Banking_TextColorPrimary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(
                        left: spacing_standard_new,
                        top: spacing_standard_new),
                    Text("زمان صورتحساب",
                        style: primaryTextStyle(
                            color: Banking_TextColorSecondary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(
                        right: spacing_standard_new,
                        top: spacing_standard_new),
                  ],
                ),
                Divider().paddingOnly(
                    left: spacing_standard, right: spacing_standard)
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Text("200,000",
                        style: primaryTextStyle(
                            color: Banking_TextColorPrimary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(
                        left: spacing_standard_new,
                        top: spacing_standard_new),
                    Text("مقدار انتقال",
                        style: primaryTextStyle(
                            color: Banking_TextColorSecondary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(
                        right: spacing_standard_new,
                        top: spacing_standard_new),
                  ],
                ),
                Divider().paddingOnly(
                    left: spacing_standard, right: spacing_standard)
              ],
            ),
            16.height,
            BankingButton(textContent: Banking_lbl_Pay, onPressed: () {})
                .paddingOnly(
                top: spacing_standard_new,
                left: spacing_standard_new,
                right: spacing_standard_new,
                bottom: spacing_standard_new),
          ],
        ),
      ),
    );
  }
}
