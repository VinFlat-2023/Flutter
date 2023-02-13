
import 'package:capstone_2023_mo/asset.dart';
import 'package:capstone_2023_mo/pages/otp/otpScreen.dart';
import 'package:flutter/material.dart';

import '../../../core/component/app_text_field.dart';
import '../../../core/theme/app_color.dart';

class RegisterScreen extends StatefulWidget {
  static const route = "/register";
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    print("Register----------------");
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColor.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: MediaQuery.of(context).padding.bottom,
          left: 24,
          right: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              width: MediaQuery.of(context).size.width,
              height: 250,
              fit: BoxFit.contain,
              image: const AssetImage(registerImg),
            ),
            Text(
              "Đăng kí",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                AppTextField(
                  prefix: Icon(Icons.person_outline),
                  hint: "Tên đăng nhập",
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 24),
                AppTextField(
                  obscureText: true,
                  prefix: Icon(Icons.lock_outline_rounded),
                  suffix: Icon(Icons.remove_red_eye_outlined),
                  hint: "Mật khẩu",
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 24),
                AppTextField(
                  prefix: Icon(Icons.email_outlined),
                  hint: "Email",
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 24),
                AppTextField(
                  prefix: Icon(Icons.phone_iphone_outlined),
                  hint: "Số điện thoại",
                  textInputAction: TextInputAction.done,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Bằng cách đăng kí này, bạn đã đồng ý ",
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: "Điều khoản & Điều kiện",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(color: AppColor.primaryColor),
                      ),
                      TextSpan(
                        text: " và ",
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: "Chính sách bảo mật của chúng tôi",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(color: AppColor.primaryColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 64,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        OTPScreen.route,
                      );
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    child: const Text("Đăng kí"),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
      resizeToAvoidBottomInset: false,
    );
  }
}
