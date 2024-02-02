import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/compotations/compotations.dart';
import 'package:news_app/compotations/my_big_divider.dart';
import 'package:news_app/compotations/my_button.dart';
import 'package:news_app/compotations/my_social_media.dart';
import 'package:news_app/compotations/my_text_field.dart';

class LoginPage extends StatefulWidget {
  final Function() onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool eyes = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        padding:
            EdgeInsets.symmetric(horizontal: 30, vertical: size.height * 0.04),
        children: [
          const AppLogo(),
          SizedBox(
            height: size.height * 0.07,
          ),
          MyTextField(
            controller: userNameController,
            hintText: "Username",
          ),
          MyTextField(
            controller: emailController,
            hintText: "Email",
          ),
          const SizedBox(height: 20),
          TextField(
            obscureText: eyes,
            obscuringCharacter: "*",
            decoration: InputDecoration(
              hintText: "Password",
              hintStyle: TextStyle(color: Colors.grey),
              suffixIcon: eyes
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          if (!eyes) {
                            eyes = true;
                          } else {
                            eyes = false;
                          }
                        });
                      },
                      icon: Icon(CupertinoIcons.eye_slash_fill),
                    )
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          if (!eyes) {
                            eyes = true;
                          } else {
                            eyes = false;
                          }
                        });
                      },
                      icon: const Icon(CupertinoIcons.eye_solid),
                    ),
            ),
          ),
          const SizedBox(height: 10),
          const Align(
            alignment: Alignment.topRight,
            child: Text(
              "Forgot Password?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: size.height * 0.05),
          const MyButton(text: "Sign In"),
          SizedBox(height: size.height * 0.05),
          const MyBigDivider(dividerWith: 26),
          SizedBox(height: size.height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MySocialMedia(
                child: Image.network(
                  "https://avatars.mds.yandex.net/i?id=1a213235e0dfa1fe43eecf99a527b3813a8b7f14-8294270-images-thumbs&n=13",
                  height: 20,
                ),
              ),
              MySocialMedia(
                child: Image.network(
                  "https://avatars.mds.yandex.net/i?id=4343b1ace987c26c40136d65af018172c411c0b5-8410613-images-thumbs&n=13",
                  height: 25,
                ),
              ),
              MySocialMedia(
                child: Image.network(
                  "https://avatars.mds.yandex.net/i?id=b5b7c5083c6e884c060ea4e4765aa9b55953efa3-5232594-images-thumbs&n=13",
                  height: 30,
                ),
              ),
              const MySocialMedia(
                child: Icon(Icons.apple_outlined, size: 30),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
