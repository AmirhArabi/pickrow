import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../utils/BankingModel.dart';
import '../../utils/BankingColors.dart';
import '../../utils/BankingContants.dart';
import '../../utils/BankingDataGenerator.dart';
import '../../utils/BankingImages.dart';
import '../../utils/BankingWidget.dart';

class HomePage extends StatefulWidget {
  static String tag = '/HomePage';

  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int currentIndexPage = 0;
  int? pageLength;

  late List<BankingHomeModel> mList1;
  late List<BankingHomeModel2> mList2;

  @override
  void initState() {
    super.initState();
    currentIndexPage = 0;
    pageLength = 3;
    mList1 = bankingHomeList1();
    mList2 = bankingHomeList2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 330,
              floating: false,
              pinned: true,
              titleSpacing: 0,
              automaticallyImplyLeading: false,
              backgroundColor:
              innerBoxIsScrolled ? Banking_Primary : Banking_app_Background,
              actionsIconTheme: const IconThemeData(opacity: 0.0),
              title: Container(
                padding: const EdgeInsets.fromLTRB(16, 42, 16, 32),
                margin: const EdgeInsets.only(bottom: 8, top: 8),
                child: Row(

                  children: [
                    const CircleAvatar(
                        backgroundImage: AssetImage(Banking_ic_user1),
                        radius: 24),
                    10.width,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("سلام مانی",
                            style: primaryTextStyle(
                                color: Banking_TextColorSecondary,
                                size: 16,
                                fontFamily: fontRegular)),
                        Text("امروز حالت چطوره ؟",
                            style: primaryTextStyle(
                                color: Banking_TextColorSecondary,
                                size: 16,
                                fontFamily: fontRegular)),
                      ],
                    ).expand(),
                    const Icon(Icons.notifications,
                        size: 30, color: Banking_TextColorSecondary)
                  ],
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Container(
                      height: 2,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topLeft,
                            colors: <Color>[Banking_Primary, Banking_palColor]),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(16, 80, 16, 8),
                      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                      decoration: boxDecorationWithRoundedCorners(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: defaultBoxShadow()),
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            child: PageView(
                              children: [
                                TopCard(
                                    name: "اکانت اصلی",
                                    acno: "1234567899",
                                    bal: "\$12,500"),
                                TopCard(
                                    name: "علی مرادی",
                                    acno: "9874563210",
                                    bal: "\$18,000"),
                                TopCard(
                                    name: "محسن همتی",
                                    acno: "5821479630",
                                    bal: "\$12,500"),
                              ],
                              onPageChanged: (value) {
                                setState(() => currentIndexPage = value);
                              },
                            ),
                          ),
                          8.height,
                          Align(
                            alignment: Alignment.center,
                            child: DotsIndicator(
                              dotsCount: 3,
                              position: currentIndexPage.toDouble().toInt(),
                              decorator: const DotsDecorator(
                                size: Size.square(8.0),
                                activeSize: Size.square(8.0),
                                color: Banking_view_color,
                                activeColor: Banking_TextColorPrimary,
                              ),
                            ),
                          ),
                          10.height,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(top: 8, bottom: 8),
                                decoration: boxDecorationWithRoundedCorners(
                                    backgroundColor: Banking_Primary,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.payment,
                                        color: Banking_TextColorWhite,
                                        size: 24),
                                    10.width,
                                    Text('پرداخت',
                                        style: primaryTextStyle(
                                          fontFamily: fontRegular2,
                                            size: 16,
                                            color: Banking_TextColorWhite)),
                                  ],
                                ),
                              ).expand(),
                              10.width,
                              Container(
                                padding: const EdgeInsets.only(top: 8, bottom: 8),
                                decoration: boxDecorationWithRoundedCorners(
                                    backgroundColor: Banking_Primary,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(Banking_ic_Transfer,
                                        color: Banking_TextColorWhite),
                                    10.width,
                                    Text('انتقال',
                                        style: primaryTextStyle(
                                            fontFamily: fontRegular2,
                                            size: 16,
                                            color: Banking_TextColorWhite)),
                                  ],
                                ),
                              ).expand(),
                            ],
                          ).paddingAll(16)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            color: Banking_app_Background,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("تراکنش های اخیر",
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        style: primaryTextStyle(
                            size: 16,
                            color: Banking_TextColorPrimary,
                            fontFamily: fontRegular2)),
                    Text("20 مهر 1402",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: primaryTextStyle(
                            size: 16,
                            color: Banking_TextColorSecondary,
                            fontFamily: fontRegular)),
                  ],
                ),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: mList1.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(top: 8, bottom: 8),
                      decoration: boxDecorationRoundedWithShadow(8,
                          backgroundColor: Banking_whitePureColor,
                          spreadRadius: 0,
                          blurRadius: 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.account_balance_wallet,
                              size: 30, color: mList1[index].color),
                          10.width,
                          Text('${mList1[index].title}',
                              style: primaryTextStyle(
                                  size: 16,
                                  color: mList1[index].color,
                                  fontFamily: fontMedium))
                              .expand(),
                          Text(mList1[index].bal!,
                              style: primaryTextStyle(
                                  color: mList1[index].color, size: 16)),
                        ],
                      ),
                    );
                  },
                ),
                16.height,
                Text("18 مهر 1402",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    style: primaryTextStyle(
                        size: 16,
                        color: Banking_TextColorSecondary,
                        fontFamily: fontRegular)),
                const Divider(),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 15,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    BankingHomeModel2 data = mList2[index % mList2.length];
                    return Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(top: 8, bottom: 8),
                      decoration: boxDecorationRoundedWithShadow(8,
                          backgroundColor: Banking_whitePureColor,
                          spreadRadius: 0,
                          blurRadius: 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // textDirection: TextDirection.rtl,

                        children: [

                          Image.asset(data.icon!,
                              height: 30,
                              width: 30,
                              color: index == 2
                                  ? Banking_Primary
                                  : Banking_Primary),
                          Text(data.title!,
                              style: primaryTextStyle(
                                  size: 16,
                                  color: Banking_TextColorPrimary,
                                  fontFamily: fontRegular))
                              .expand(),
                          // 10.width,

                          Align(
                              alignment: Alignment.centerRight,
                              child: Text(data.charge!,
                                  style: primaryTextStyle(
                                      color: data.color, size: 16))
                          ),
                          20.width,

                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
