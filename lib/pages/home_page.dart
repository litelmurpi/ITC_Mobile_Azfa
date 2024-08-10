import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widget/divisi.dart';
import 'divisi/mobile_dev.dart';

class HomePage extends StatelessWidget {
  final String username;

  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 6,
        backgroundColor: const Color.fromRGBO(59, 102, 168, 1.0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)),
        ),
        leadingWidth: MediaQuery.of(context).size.width / 4,
        leading: Container(
          margin: EdgeInsets.only(left: 15, bottom: 15),
          child: CircleAvatar(
              radius: 190,
              backgroundColor: Colors.grey[300],
              child: Image.asset(
                'assets/male.png',
              )),
        ),
        title: Text(
          'Hi, $username!',
          style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter',
              color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MobileDevelopmentPage(),
                  ),
                );
              },
              child: DivisiItem(
                title: "Mobile\nDevelopment",
                imageSource: "assets/md.png",
              ),
            ),
            DivisiItem(
              title: "Computer\nGraphic",
              imageSource: "assets/cg.png",
            ),
            DivisiItem(
              title: "Digital\nMarketing",
              imageSource: "assets/dm.png",
            ),
            DivisiItem(
              title: "Office\nAdministration",
              imageSource: "assets/oa.png",
            ),
          ],
        ),
      ),
    );
  }
}
