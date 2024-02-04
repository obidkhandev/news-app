import 'package:flutter/material.dart';
import 'package:news_app/compotations/compotations.dart';
import 'package:news_app/compotations/my_big_divider.dart';
import 'package:news_app/compotations/my_button.dart';
import 'package:news_app/compotations/my_circle.dart';
import 'package:news_app/compotations/my_social_media.dart';
import 'package:news_app/compotations/my_text_field.dart';
import 'package:news_app/data/services/auth/auth_service.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  final Function() onTap;
  const SignUpPage({super.key, required this.onTap});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool iconCheck = false;
  void singUp() async {
    // get auth service
    final authService = Provider.of<AuthService>(context, listen: false);
    try {
      await authService.singUpWithEmailandPassword(
        userNameController.text,
        emailController.text,
        phoneNumberController.text,
        passwordController.text,
      );
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(right: 40, left: 40, top: 50),
        children: [
          const AppLogo(),
          // const SizedBox(height: 20),
          MyTextField(
            controller: userNameController,
            hintText: "Username",
          ),
          MyTextField(
            controller: emailController,
            hintText: "Email",
          ),
          MyTextField(
            controller: phoneNumberController,
            hintText: "Phone number",
          ),
          MyTextField(
            controller: passwordController,
            hintText: "Password",
          ),
          const Text(
            "I am a",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    if (!iconCheck) {
                      iconCheck = true;
                    } else {
                      iconCheck = false;
                    }
                  });
                },
                icon: iconCheck
                    ? const Icon(
                        Icons.check_circle_outline_rounded,
                        color: Colors.blue,
                      )
                    : const MyCircle(),
              ),
              const Text(
                "Media Reporter",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(width: 15),
              IconButton(
                onPressed: () {},
                icon: const MyCircle(),
              ),
              const Text(
                "Visitor",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              )
            ],
          ),
          const SizedBox(height: 20),
          MyButton(
            text: "Sign Up",
            press: singUp,
          ),
          const SizedBox(height: 15),
          const MyBigDivider(),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MySocialMedia(
                child: Icon(Icons.email_outlined, size: 30),
              ),
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
          const SizedBox(height: 20),
          GestureDetector(
            onTap: widget.onTap,
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "By signing up to News24 you are accepting our\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  TextSpan(
                    text: "Terms & Conditions",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
