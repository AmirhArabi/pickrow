import 'BankingModel.dart';
import 'BankingColors.dart';
import 'BankingImages.dart';

List<BankingShareInfoModel> bankingInfoList() {
  List<BankingShareInfoModel> list = [];

  var list1 = BankingShareInfoModel(Banking_ic_Skype);
  list.add(list1);

  var list2 = BankingShareInfoModel(Banking_ic_Inst);
  list.add(list2);

  var list3 = BankingShareInfoModel(Banking_ic_WhatsApp);
  list.add(list3);

  var list4 = BankingShareInfoModel(Banking_ic_messenger);
  list.add(list4);

  var list5 = BankingShareInfoModel(Banking_ic_facebook);
  list.add(list5);

  return list;
}

List<BankingShareInfoModel> bankingNewsList() {
  List<BankingShareInfoModel> list = [];

  var list1 = BankingShareInfoModel(Banking_ic_walk1);
  list.add(list1);

  var list2 = BankingShareInfoModel(Banking_ic_walk2);
  list.add(list2);

  var list3 = BankingShareInfoModel(Banking_ic_walk3);
  list.add(list3);

  return list;
}

List<BankingQuesAnsModel> bankingQuestionList() {
  List<BankingQuesAnsModel> list = [];

  var list1 = BankingQuesAnsModel("Question: lorem ipsum doller sit ?");
  list.add(list1);

  var list2 = BankingQuesAnsModel(
      "Money return when you go shopping with credit card of Cy Captial Bank ?");
  list.add(list2);

  var list3 = BankingQuesAnsModel(
      "Each payment process is so simple and hassle - free ?");
  list.add(list3);

  var list4 = BankingQuesAnsModel(
      "Cy Captial Bank give a giftbox for new customers who create account ?");
  list.add(list4);

  var list5 = BankingQuesAnsModel(
      "Each payment process is so simple and hassle - free ?");
  list.add(list5);

  var list6 = BankingQuesAnsModel(
      "Money return when you go shopping with credit card of Cy Captial Bank ?");
  list.add(list6);

  return list;
}

List<BankingSavingModel> bankingSavingList() {
  List<BankingSavingModel> list = [];

  var list1 = BankingSavingModel(
      title: "پس انداز ۱",
      date: "۲۲ مهرماه ۱۴۰۲",
      rs: "۸۵۰,۰۰۰",
      interest: "سود ۸٪ - ۸ ماه");
  list.add(list1);

  var list2 = BankingSavingModel(
      title: "پس انداز ۲",
      date: "۲۲ تیرماه ۱۴۰۲",
      rs: "۲۰۰,۰۰۰",
      interest: "سود ۶٪ - ۴ ماه");
  list.add(list2);

  return list;
}

List<BankingPaymentModel> bankingPaymentList() {
  List<BankingPaymentModel> list = [];

  var list1 = BankingPaymentModel(
      title: "پرداخت برق",
      img: Banking_ic_Electricity,
      color: Banking_Primary);
  list.add(list1);

  var list2 =
      BankingPaymentModel(title: "پرداخت آب", img: Banking_ic_WaterDrop);
  list.add(list2);

  var list3 = BankingPaymentModel(
      title: "پرداخت اینترنت",
      img: Banking_ic_Website,
      color: Banking_blueColor);
  list.add(list3);

  var list4 = BankingPaymentModel(
      title: "پیش پرداخت موبایل", img: Banking_ic_Mobile, color: Banking_palColor);
  list.add(list4);

  var list5 = BankingPaymentModel(
      title: "پرداخت گوگل پلی",
      img: Banking_ic_PlayStore,
      color: Banking_greenLightColor);
  list.add(list5);

  var list6 = BankingPaymentModel(
      title: "پرداخت اپل استور", img: Banking_ic_apple, color: Banking_greyColor);
  list.add(list6);

  var list7 = BankingPaymentModel(
      title: "خرید بلیط لاتری",
      img: Banking_ic_Ticket,
      color: Banking_RedColor);
  list.add(list7);

  var list8 = BankingPaymentModel(
      title: "خرید بلیط قطار",
      img: Banking_ic_Train,
      color: Banking_blueColor);
  list.add(list8);

  var list9 = BankingPaymentModel(
      title: "خرید بلیط هواپیما", img: Banking_ic_plane, color: Banking_palColor);
  list.add(list9);

  var list10 = BankingPaymentModel(
      title: "خرید انلاین",
      img: Banking_ic_ShoppingCart,
      color: Banking_Primary);
  list.add(list10);

  var list11 = BankingPaymentModel(
      title: "رزرو هتل",
      img: Banking_ic_Hotel,
      color: Banking_greenLightColor);
  list.add(list11);

  return list;
}

List<BankingPaymentModel> bankingPaymentDetailList() {
  List<BankingPaymentModel> list = [];

  var list1 = BankingPaymentModel(
      title: "پرداخت صورتحساب جدید", img: Banking_ic_Voice, color: Banking_Primary);
  list.add(list1);

  var list2 = BankingPaymentModel(
      title: "مشاهده تاریخچه صورتحساب", img: Banking_ic_History);
  list.add(list2);

  return list;
}

List<BankingCardModel> bankingCardList() {
  List<BankingCardModel> list = [];
  var list1 = BankingCardModel(
      name: "مرجان مرادی", bank: "به همین بانک", rs: "12,500");
  list.add(list1);

  var list2 =
      BankingCardModel(name: "علی صاحبی", bank: "بانک ملی", rs: "18,000");
  list.add(list2);

  var list3 = BankingCardModel(
      name: "زهرا متقی", bank: "بانک سپه", rs: "50,000");
  list.add(list3);

  return list;
}

List<BankingPaymentHistoryModel> bankingHistoryList1() {
  List<BankingPaymentHistoryModel> list = [];

  var list1 = BankingPaymentHistoryModel(
      title: "پرداخت صورتحساب # 7783", rs: "250,000");
  list.add(list1);

  var list2 = BankingPaymentHistoryModel(
      title: "پرداخت صورتحساب # S1244", rs: "190,000");
  list.add(list2);

  return list;
}

List<BankingRateInfoModel> bankingRateInformationList() {
  List<BankingRateInfoModel> list = [];

  var list1 = BankingRateInfoModel(
      currency: "Euro", flag: Banking_ic_Euro, buy: "1,123", sell: "3,799");
  list.add(list1);

  var list2 = BankingRateInfoModel(
      currency: "USD", flag: Banking_ic_USD, buy: "1,123", sell: "3.85");
  list.add(list2);

  var list3 = BankingRateInfoModel(
      currency: "Rup", flag: Banking_ic_Rup, buy: "1.13", sell: "2.87");
  list.add(list3);

  var list4 = BankingRateInfoModel(
      currency: "CNY", flag: Banking_ic_CNY, buy: "1.0", sell: "3.11");
  list.add(list4);

  var list5 = BankingRateInfoModel(
      currency: "Won", flag: Banking_ic_Rup, buy: "3.0", sell: "1.11");
  list.add(list5);

  var list6 = BankingRateInfoModel(
      currency: "Yen", flag: Banking_ic_Yen, buy: "1,123", sell: "2.0");
  list.add(list6);

  var list7 = BankingRateInfoModel(
      currency: "Euro", flag: Banking_ic_Can, buy: "3.0", sell: "1.56");
  list.add(list7);

  var list8 = BankingRateInfoModel(
      currency: "USD", flag: Banking_ic_USD, buy: "0.1", sell: "1.11");
  list.add(list8);

  return list;
}

List<BankingHomeModel> bankingHomeList1() {
  List<BankingHomeModel> list = [];
  var list1 = BankingHomeModel(
      title: "Default Account", color: Banking_BalanceColor, bal: "+\$50 USD");
  list.add(list1);

  var list2 = BankingHomeModel(
      title: "Adam Johnson", color: Banking_Primary, bal: "-\$20 USD");
  list.add(list2);

  return list;
}

List<BankingHomeModel2> bankingHomeList2() {
  List<BankingHomeModel2> list = [];

  var list1 = BankingHomeModel2(
      title: "پرداخت از شاپرک",
      icon: Banking_ic_Paypal,
      color: Banking_greenLightColor,
      charge: "+\230,000 ریال");
  list.add(list1);

  var list2 = BankingHomeModel2(
      title: "واریز از عابر",
      icon: Banking_ic_MasterCard,
      color: Banking_Primary,
      charge: "+\80,000 ریال");;
  list.add(list2);

  var list3 = BankingHomeModel2(
      title: "خرید از کوروش",
      icon: Banking_ic_Wallet,
      color: Banking_Primary,
      charge: "-\90,000 ریال");
  list.add(list3);

  return list;
}

List<BankingLocationModel> bankingLocationList() {
  List<BankingLocationModel> list = [];

  var list1 = BankingLocationModel(location: "Branch Canyon", m: "800m");
  list.add(list1);

  var list2 = BankingLocationModel(location: "Branch Kenmore", m: "600m");
  list.add(list2);

  var list3 = BankingLocationModel(location: "Branch Woodinville", m: "600m");
  list.add(list3);

  var list4 = BankingLocationModel(location: "Branch Maltly", m: "2.5km");
  list.add(list4);

  return list;
}
