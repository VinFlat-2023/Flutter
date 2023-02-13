import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  static const route = "/report";
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Report Page"),
      ),
    );
  }
}
