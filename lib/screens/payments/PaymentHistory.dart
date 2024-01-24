import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../utils/BankingModel.dart';
import '../../utils/BankingColors.dart';
import '../../utils/BankingContants.dart';
import '../../utils/BankingDataGenerator.dart';
import '../../utils/BankingStrings.dart';
import '../../utils/BankingWidget.dart';

class BankingPaymentHistory extends StatefulWidget {
  static var tag = "/BankingPaymentHistory";

  @override
  _BankingPaymentHistoryState createState() => _BankingPaymentHistoryState();
}

class _BankingPaymentHistoryState extends State<BankingPaymentHistory> {
  late List<BankingPaymentHistoryModel> mList1;

  @override
  void initState() {
    super.initState();
    mList1 = bankingHistoryList1();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Banking_app_Background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            const SizedBox(
              height: spacing_standard_new,
            ),
            // headerView(Banking_lbl_Payment_History, width * 0.4, context),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.chevron_left, size: 36,).onTap(() {
                  finish(context);
                }),
              ],
            ),
            const Text(Banking_lbl_Payment_History,
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: fontRegular2
                )).paddingOnly(
                right: spacing_standard_new, top: spacing_standard_new),
            Text("22 تیره ماه 1403",
                textDirection: TextDirection.rtl,
                style: secondaryTextStyle(
                    color: Banking_TextColorSecondary,
                    size: 14,
                    fontFamily: fontRegular))
                .paddingOnly(
                right: spacing_standard_new, top: spacing_standard_new),
            const Divider().paddingOnly(
                left: spacing_standard_new, right: spacing_standard_new),
            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: mList1.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(mList1[index].rs!,
                          style: primaryTextStyle(
                              color: Banking_TextColorOrange, size: 16))
                          .paddingOnly(
                          left: spacing_standard, right: spacing_standard),
                    ),
                    Row(
                      children: [
                        Text(mList1[index].title!,
                            style: primaryTextStyle(size: 16,fontFamily: fontRegular))
                            .paddingOnly(
                          left: spacing_standard, right: spacing_standard),
                        const Icon(Icons.account_balance_wallet,
                            size: 30, color: Banking_Primary)
                      ],
                    ),
                  ],
                ).paddingAll(spacing_standard),
              ),
            ).paddingOnly(bottom: 8),
            Text("22 مرداد 1403",
                textDirection: TextDirection.rtl,
                style: secondaryTextStyle(
                    color: Banking_TextColorSecondary,
                    size: 14,
                    fontFamily: fontRegular))
                .paddingOnly(
                right: spacing_standard_new, top: spacing_standard_new),
            const Divider().paddingOnly(
                left: spacing_standard_new, right: spacing_standard_new),
            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: mList1.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(mList1[index].rs!,
                          style: primaryTextStyle(
                              color: Banking_TextColorOrange, size: 16,fontFamily: fontRegular))
                          .paddingOnly(
                          left: spacing_standard, right: spacing_standard),
                    ),
                    Row(
                      children: [
                        Text(mList1[index].title!,
                            style: primaryTextStyle(size: 16,fontFamily: fontRegular))
                            .paddingOnly(
                            left: spacing_standard, right: spacing_standard),
                        const Icon(Icons.account_balance_wallet,
                            size: 30, color: Banking_Primary)
                      ],
                    ),

                  ],
                ).paddingAll(spacing_standard),
              ),
            ).paddingOnly(bottom: 8),
            Text("22 شهریور 1403",
                textDirection: TextDirection.rtl,
                style: secondaryTextStyle(
                    color: Banking_TextColorSecondary,
                    size: 14,
                    fontFamily: fontRegular))
                .paddingOnly(
                right: spacing_standard_new, top: spacing_standard_new),
            const Divider().paddingOnly(
                left: spacing_standard_new, right: spacing_standard_new),
            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: mList1.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(mList1[index].rs!,
                              style: primaryTextStyle(
                                  color: Banking_TextColorOrange, size: 16,fontFamily: fontRegular))
                              .paddingOnly(
                              left: spacing_standard, right: spacing_standard),
                        ),
                        Row(

                          children: [
                            Text(mList1[index].title!,
                                style: primaryTextStyle(size: 16, fontFamily: fontRegular))
                                .paddingOnly(
                                left: spacing_standard, right: spacing_standard),
                            const Icon(Icons.account_balance_wallet,
                                size: 30, color: Banking_Primary)
                          ],
                        ),

                      ],
                    ).paddingAll(spacing_standard)),
              ),
            ).paddingOnly(bottom: 8)
          ],
        ),
      ),
    );
  }
}
