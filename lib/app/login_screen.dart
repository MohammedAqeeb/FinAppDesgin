import 'package:fin_tech_app/app/home_screen.dart';
import 'package:fin_tech_app/constants_colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late bool passwordVisibility;

  @override
  void initState() {
    super.initState();
    passwordVisibility = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ConstantsColors.appBackgroundColor,
        body: _buildBody(context));
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 32),
              child: CircleAvatar(
                radius: 84,
                backgroundColor: ConstantsColors.buttonColor,
              ),
            ),
            _buildEmailTextField(context),
            _buildPasswordTextField(context),
            _buildLoginButton(context),
            _buildSignUpandForgot(context),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailTextField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        right: 12,
        top: 18,
      ),
      child: Container(
        margin: const EdgeInsets.all(8),
        alignment: Alignment.center,
        height: 90,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
            border: Border.all(color: const Color(0xffededed), width: 1),
            color: const Color(0xfff9f9f7)),
        child: TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.email_outlined,
              color: Colors.black,
            ),
            label: Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Text('Email Address'),
            ),
            labelStyle: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 15,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              gapPadding: 28.0,
              borderSide: BorderSide(
                width: 1,
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordTextField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        right: 12,
        top: 18,
      ),
      child: Container(
        margin: const EdgeInsets.all(8),
        alignment: Alignment.center,
        height: 90,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
            border: Border.all(color: const Color(0xffededed), width: 1),
            color: const Color(0xfff9f9f7)),
        child: TextFormField(
          obscureText: passwordVisibility,
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.lock,
              color: Colors.black,
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 18),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    passwordVisibility = !passwordVisibility;
                  });
                },
                icon: Icon(
                  passwordVisibility ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
              ),
            ),
            // labelText: 'Password',
            label: const Padding(
              padding: EdgeInsets.only(top: 8, left: 10),
              child: Text('Password'),
            ),
            labelStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 15,
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              gapPadding: 28.0,
              borderSide: BorderSide(
                width: 1,
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 18,
      ),
      child: SizedBox(
        width: 350,
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: ConstantsColors.buttonColor,
            shape: const StadiumBorder(side: BorderSide.none),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext c) => const HomeScreen(),
              ),
            );
          },
          child: const Text(
            'Login',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpandForgot(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Signup',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Forgot Password?',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
