// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:capstone_2023_mo/asset.dart';
import 'package:capstone_2023_mo/pages/contract.dart';
import 'package:capstone_2023_mo/pages/payment/payment_page.dart';
import 'package:capstone_2023_mo/pages/report/report_page.dart';
import 'package:capstone_2023_mo/pages/flatpage/flat_screen.dart';
import 'package:capstone_2023_mo/pages/service/service_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  ItemDash item1 = new ItemDash(
    route: FlatPage.route,
    titleDash: "Nhà trọ",
    img: houseImg,
    subTitleDash: "Đánh giá về nơi ở",
  );

  ItemDash item2 = new ItemDash(
    route: ServicePage.route,
    titleDash: "Dịch Vụ",
    img: serviceImg,
    subTitleDash: "Các dịch vụ dành cho cư dân",
  );

  ItemDash item3 = new ItemDash(
    route: PaymentPage.route,
    titleDash: "Thanh Toán",
    img: paymentImg,
    subTitleDash: "Các khoản cần thanh toán",
  );

  ItemDash item4 = new ItemDash(
    route: ContractPage.route,
    titleDash: "Hợp đồng",
    img: contractImg,
    subTitleDash: "Các khoản cần thanh toán",
  );

  ItemDash item5 = new ItemDash(
    route: ReportPage.route,
    titleDash: "Sự Cố",
    img: reportImg,
    subTitleDash: "Báo cáo về các hư hỏng",
  );

  ItemDash item6 = new ItemDash(
    route: ReportPage.route,
    titleDash: "Thông báo",
    img: reportImg,
    subTitleDash: "Thông báo chung",
  );

  @override
  Widget build(BuildContext context) {
    print("dashboard-----------------");
    List<ItemDash> myList = [item1, item2, item3, item4, item5, item6];
    var color = Color.fromRGBO(239, 239, 239, 0.25);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return Flexible(
            child: GridView.count(
              childAspectRatio: 1.0,
              padding: EdgeInsets.only(left: 24, right: 24),
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: myList.map(
                (data) {
                  return GestureDetector(
                    onTap: () {
                      print("yo-------------------------------");
                      Navigator.pushNamed(context, data.route);
                    },
                    child: Builder(
                      builder: (context) {
                        return Container(
                          decoration: BoxDecoration(color: Color(0xFF2196F3).withOpacity(0.5), borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.white.withOpacity(0.75))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                data.img,
                                width: 42,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                data.titleDash,
                                style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                )),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                data.subTitleDash,
                                style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                )),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              ).toList(),
            ),
          );
        });
  }
}

class ItemDash {
  String titleDash;
  String img;
  String subTitleDash;
  String route;

  ItemDash({
    required this.route,
    required this.titleDash,
    required this.img,
    required this.subTitleDash,
  });
}
