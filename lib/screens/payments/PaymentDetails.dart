import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../utils/BankingModel.dart';
import 'PayInvoice.dart';
import 'PaymentHistory.dart';
import '../../utils/BankingColors.dart';
import '../../utils/BankingContants.dart';
import '../../utils/BankingDataGenerator.dart';

// ignore: must_be_immutable
class BankingPaymentDetails extends StatefulWidget {
  static var tag = "/BankingPaymentDetails";
  String? headerText;

  BankingPaymentDetails({super.key, this.headerText});

  @override
  _BankingPaymentDetailsState createState() => _BankingPaymentDetailsState();
}

class _BankingPaymentDetailsState extends State<BankingPaymentDetails> {
  late List<BankingPaymentModel> mList;

  @override
  void initState() {
    super.initState();
    mList = bankingPaymentDetailList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Banking_app_Background,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              30.height,
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  const Icon(Icons.chevron_right, size: 25, color: Banking_blackColor)
                      .onTap(
                        () {
                      finish(context);
                    },
                  ),
                  20.height,
                  Text(widget.headerText!,
                      style: boldTextStyle(
                          size: 30, color: Banking_TextColorPrimary, fontFamily: fontRegular2)),
                ],
              ),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: mList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(top: 8, bottom: 8),
                      decoration: boxDecorationWithShadow(
                          borderRadius: BorderRadius.circular(10),
                          backgroundColor: Banking_whitePureColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(mList[index].title!,
                              style: primaryTextStyle(
                                  color: Banking_TextColorPrimary,
                                  size: 18,
                                  fontFamily: fontRegular)),
                          Container(
                            height: 60,
                            width: 60,
                            padding: const EdgeInsets.all(16),
                            decoration: boxDecorationWithRoundedCorners(
                                borderRadius: BorderRadius.circular(30),
                                backgroundColor: Banking_Primary),
                            child: Image.asset(mList[index].img!,
                                height: 20,
                                width: 20,
                                color: Banking_whitePureColor),
                          ).paddingAll(spacing_standard),

                        ],
                      ),
                    ).onTap(() {
                      if (index == 0) {
                        BankingPayInvoice().launch(context);
                      } else {
                        BankingPaymentHistory().launch(context);
                      }
                      setState(() {});
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
