import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../utils/BankingModel.dart';
import '../../utils/BankingColors.dart';
import '../../utils/BankingContants.dart';
import '../../utils/BankingDataGenerator.dart';
import '../../utils/BankingImages.dart';
import '../../utils/BankingStrings.dart';

class BankingShareInformation extends StatefulWidget {
  static var tag = "/BankingShareInformation";

  @override
  _BankingShareInformationState createState() =>
      _BankingShareInformationState();
}

class _BankingShareInformationState extends State<BankingShareInformation> {
  late List<BankingShareInfoModel> mList1;

  @override
  void initState() {
    super.initState();
    mList1 = bankingInfoList();
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.chevron_left,
                          size: 32, color: Banking_blackColor)
                          .onTap(
                            () {
                          finish(context);
                        },
                      ),
                    ],
                  ),
                  30.height,
                  Text("به اشتراک گذاری اطلاعات",
                      style: boldTextStyle(
                        fontFamily: fontRegular2,
                          size: 30, color: Banking_TextColorPrimary)).paddingOnly(right: spacing_standard_new),
                ],
              ),
              30.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("مانی درویش",
                      style: boldTextStyle(
                        fontFamily: fontRegular,
                          color: Banking_TextColorPrimary, size: 28))
                      .center(),
                  15.width,
                  const CircleAvatar(
                      backgroundImage: AssetImage(Banking_ic_user2),
                      radius: 25),
                ],
              ),
              20.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("123 456 789",
                      style:
                      primaryTextStyle(size: 18, fontFamily: fontRegular)),
                  Text(Banking_lbl_Account_Number,
                      style: primaryTextStyle(
                          color: Banking_TextColorPrimary,
                          size: 18,
                          fontFamily: fontRegular)),
                ],
              ),
              const Divider(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(Banking_lbl_app_Name,
                      style:
                      primaryTextStyle(size: 18, fontFamily: fontRegular)),
                  Text(Banking_lbl_Bank,
                      style: primaryTextStyle(
                          color: Banking_TextColorPrimary,
                          size: 18,
                          fontFamily: fontRegular)),
                ],
              ).paddingOnly(bottom: spacing_middle),
              const Divider(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Text("احمدآباد",
                      style:
                      primaryTextStyle(size: 18, fontFamily: fontRegular)),
                  Text(Banking_lbl_Branch,
                      style: primaryTextStyle(
                          color: Banking_TextColorPrimary,
                          size: 18,
                          fontFamily: fontRegular)),
                ],
              ),
              const Divider(height: 24),
              Text(Banking_lbl_QR_Code,
                  style: primaryTextStyle(
                      color: Banking_TextColorPrimary,
                      size: 18,
                      fontFamily: fontSemiBold)),
              20.height,
              Image.asset(Banking_ic_QR,
                  height: 150, width: 150, fit: BoxFit.fill)
                  .center(),
              20.height,
              Text(Banking_lbl_Share_Info,
                  style: primaryTextStyle(
                      color: Banking_TextColorPrimary,
                      size: 20,
                      fontFamily: fontRegular)),
              40.height,
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: mList1.length,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(right: spacing_standard_new),
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 20,
                      width: 50,
                      margin: const EdgeInsets.only(right: 16),
                      padding: const EdgeInsets.all(8),
                      decoration: boxDecorationWithShadow(
                          borderRadius: BorderRadius.circular(10),
                          backgroundColor: Banking_whitePureColor,
                          boxShadow: defaultBoxShadow()),
                      child:
                      Image.asset(mList1[index].icon, height: 30, width: 30)
                          .center(),
                    );
                  },
                ),
              ).center(),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
