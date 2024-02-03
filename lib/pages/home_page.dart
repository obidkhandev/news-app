import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:news_app/compotations/category_list.dart';
import 'package:news_app/compotations/coins.dart';
import 'package:news_app/compotations/my_image.dart';
import 'package:news_app/compotations/poster_chart.dart';
import 'package:news_app/data/services/auth/auth_service.dart';
import 'package:news_app/data/services/auth/poster_service.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Poster _post = Poster();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String poster = "";
  String title = "";
  void signOut() async {
    final authService = Provider.of<AuthService>(context, listen: false);
    authService.signOut();
  }

  void saveMessage() async {
    // only save
    _post.savePost();
  }

  void getPost() async {
    final post =
        await _firestore.collection("poster").doc("IeAxbZJnnlWg57glQzR9").get();
    poster = post.data()!.values.first;
  }

  getTitle() async {
    final post =
        await _firestore.collection("poster").doc("IeAxbZJnnlWg57glQzR9").get();
    title = post.data()!.values.last;
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.ads_click), label: "Ads"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add post"),
          BottomNavigationBarItem(icon: Icon(Icons.poll), label: "Poll"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            buildAppBar(),
            const CategoryList(),
            SizedBox(
              width: double.infinity,
              height: size.height * 0.725,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                children: [
                  const MyImages(),
                  Container(
                    height: 200,
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Who is the Best Player Of India Cricket Team?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  PosterChart(title: title, poster: poster),
                  PosterChart(title: title, poster: poster),
                  PosterChart(title: title, poster: poster),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildAppBar() {
    return Row(
      children: [
        const SizedBox(width: 12),
        IconButton(
          onPressed: signOut,
          icon: const Icon(
            Icons.menu,
            color: Colors.blue,
          ),
        ),
        const SizedBox(width: 10),
        const Icon(Icons.location_on),
        const Text("G.t Road,Kolkato"),
        const Icon(Icons.arrow_drop_down),
        const Spacer(),
        const Coins(),
        const SizedBox(width: 15),
        const Icon(
          Icons.notifications,
          color: Colors.blue,
        ),
        const SizedBox(width: 12),
      ],
    );
  }
}
