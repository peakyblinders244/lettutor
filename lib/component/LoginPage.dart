import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/BorderCustom.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int sizeIcon = 30;

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: Image(
        image: AssetImage('assets/images/login.png'),
      ),
    );
    final textLogin = Text(
      'Đăng nhập',
      style: TextStyle(
        fontSize: 28.0,
        color: Colors.blue,
      ),
      textAlign: TextAlign.center,
    );
    final textDecription = Text(
      'Phát triển kỹ năng tiếng Anh nhanh nhất bằng cách học 1 kèm 1 trực tuyến theo mục tiêu và lộ trình dành cho riêng bạn.',
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.black,
      ),
      textAlign: TextAlign.center,
    );

    final emailTextFieldArea =
        TextFieldArea("ĐỊA CHỈ EMAIL", "mail@example.com");
    final passwordTextFieldArea = TextFieldArea("MẬT KHẨU", "");
    final forgotPasswordTextButton = TextButton(
        onPressed: () => {},
        child: Text(
          "Quên mật khẩu",
          textAlign: TextAlign.left,
        ));

    final loginButton = OutlinedButton(
        child: Text("ĐĂNG NHẬP", style: TextStyle(color: Colors.white)),
        onPressed: () => {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)))));
    final orContinueText =
        Text("Hoặc tiếp tục với", textAlign: TextAlign.center);

    final noAccountText = Text(
      "Chưa có tài khoản",
      textAlign: TextAlign.center,
    );
    final registerTextButton = TextButton(
        onPressed: () => {},
        child: Text(
          "Đăng kí",
          textAlign: TextAlign.left,
        ));

    final rowIcons = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset(
          'assets/icons/facebook-logo.svg',
          width: 30,
        ),
        SvgPicture.asset('assets/icons/google-logo.svg', width: 30),
        SvgPicture.asset('assets/icons/mobile-logo.svg', width: 30),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: SvgPicture.asset('assets/icons/lettutor_logo.svg',
            fit: BoxFit.fitWidth),
        leadingWidth: 200,
        actions: <Widget>[
          IconButton(
            icon: CircleAvatar(
              radius: 56,
              backgroundColor: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/icons/vietnam.svg',
                    fit: BoxFit.fitWidth),
              ),
            ),
            onPressed: () => {},
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            textLogin,
            textDecription,
            SizedBox(height: 48.0),
            emailTextFieldArea,
            passwordTextFieldArea,
            forgotPasswordTextButton,
            loginButton,
            orContinueText,
            rowIcons,
            noAccountText,
            registerTextButton
          ],
        ),
      ),
    );
  }
}

class TextFieldArea extends StatelessWidget {
  String text;
  String textHint;

  TextFieldArea(this.text, this.textHint);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(this.text),
        TextFormField(
          decoration: new InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
              hintText: this.textHint),
        )
      ],
    );
  }
}
