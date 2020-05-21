import 'package:flutter/material.dart';
import 'package:login_page_ui_challenge/input_field.dart';
import 'package:login_page_ui_challenge/main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Image.asset(
                'assets/login.png',
                height: 250,
                fit: BoxFit.cover,
              )),
              SizedBox(
                height: 40,
              ),
              Text(
                'Login into app',
                style: TextStyle(fontSize: 18, fontFamily: 'Ubuntu'),
              ),
              SizedBox(
                height: 15,
              ),
              Opacity(
                opacity: 0.7,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tincidunt ante lacus, eu pretium purus vulputate sit amet.',
                    style: TextStyle(
                      height: 1.2,
                      fontSize: 14,
                      fontFamily: 'Ubuntu',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InputField(
                hint: 'username',
                obscure: false,
              ),
              SizedBox(
                height: 20,
              ),
              InputField(
                hint: 'password',
                obscure: true,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        padding: const EdgeInsets.symmetric(vertical: 9),
                        color: Colors.white,
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(color: primaryColour, fontFamily: 'Roboto', fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        shape: StadiumBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('or'),
              FlatButton(
                shape: StadiumBorder(),
                onPressed: () => Navigator.pushNamed(context, 'register'),
                child: Text('Register', style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
