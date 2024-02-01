import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/compotations/compotations.dart';
import 'package:news_app/compotations/my_circle.dart';
import 'package:news_app/compotations/my_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool iconCheck = false;

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
                icon: MyCircle(),
              ),
              const Text(
                "Visitor",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(height: 20),
          MyButton(
            text: "Sign Up",
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              MyDivider(),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text("or sign in with",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
              ),
              MyDivider(),
            ],
          )
        ],
      ),
    );
  }
}

class MyDivider extends StatelessWidget {
  
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 2,
      width: size.width / 3 - 32,
      color: Colors.black,
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  const MyButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width / 6),
      height: 56,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Text(
       text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
    );
  }
}
