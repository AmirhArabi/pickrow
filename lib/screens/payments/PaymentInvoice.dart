import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../utils/BankingModel.dart';
import 'InvoiceDetail.dart';

import '../../utils/BankingColors.dart';
import '../../utils/BankingContants.dart';
import '../../utils/BankingStrings.dart';
import '../../utils/BankingWidget.dart';

class BankingPaymentInvoice extends StatefulWidget {
  static var tag = "/BankingPaymentInvoice";

  @override
  _BankingPaymentInvoiceState createState() => _BankingPaymentInvoiceState();
}

class _BankingPaymentInvoiceState extends State<BankingPaymentInvoice> {
  var currentIndexPage = 0;
  List<BankingCardModel>? mList;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Banking_app_Background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            16.height,
            headerView(Banking_lbl_Payment_Invoice, width * 0.4, context),
            Text("صورتحساب 04 تیرماه",
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
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("پرداخت موفق",
                        style: primaryTextStyle(
                            color: Banking_TextColorPrimary,
                            size: 18,
                            fontFamily: fontRegular))
                        .paddingOnly(
                        left: spacing_standard_new,
                        top: spacing_standard_new),
                    Text("وضعیت",
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
            BankingButton(
                textContent: Banking_lbl_Confirm,
                onPressed: () {
                  BankingInvoiceDetail().launch(context);
                })
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
