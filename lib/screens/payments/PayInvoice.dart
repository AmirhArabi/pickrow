import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'PaymentInvoice.dart';

import '../../utils/BankingColors.dart';
import '../../utils/BankingContants.dart';
import '../../utils/BankingStrings.dart';
import '../../utils/BankingWidget.dart';

class BankingPayInvoice extends StatefulWidget {
  @override
  _BankingPayInvoiceState createState() => _BankingPayInvoiceState();
}

class _BankingPayInvoiceState extends State<BankingPayInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Banking_app_Background,
      body: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  30.height,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      const Icon(Icons.chevron_right,
                          size: 30, color: Banking_blackColor)
                          .onTap(
                            () {
                          finish(context);
                        },
                      ),
                      20.height,
                      Text(Banking_lbl_Pay_Voice,
                          style: boldTextStyle(
                              size: 30, color: Banking_TextColorPrimary, fontFamily: fontRegular2)),
                    ],
                  ),
                  10.height,
                  20.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      const Icon(Icons.keyboard_arrow_left,
                          size: 30, color: Banking_greyColor),
                      Text('انتقال با',
                          style: primaryTextStyle(
                              color: Banking_TextColorPrimary,
                              size: 18,
                              fontFamily: fontRegular))
                          ,
                    ],
                  ),
                  const Divider(height: 24),
                  EditText(
                      text: Banking_lbl_Invitation_code, isPassword: false),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BankingButton(
              textContent: Banking_lbl_Next,

              onPressed: () {
                BankingPaymentInvoice().launch(context);
              },
            ),
          ).paddingOnly(bottom: 20, right: 10, left: 10),
        ],
      ),
    );
  }
}
