import 'package:flutter/material.dart';

class MobileDevelopmentPage extends StatefulWidget {
  const MobileDevelopmentPage({super.key});

  @override
  State<MobileDevelopmentPage> createState() => _MobileDevelopmentPageState();
}

class _MobileDevelopmentPageState extends State<MobileDevelopmentPage> {
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
          margin: const EdgeInsets.only(left: 15, bottom: 15),
          child: CircleAvatar(
              radius: 190,
              backgroundColor: Colors.grey[300],
              child: Image.asset(
                'assets/md.png',
              )),
        ),
        title: const Text(
          'Mobile Development',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter',
              color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About Mobile Development',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(59, 102, 168, 1.0),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'ini Mobile Development',
              style: TextStyle(
                fontFamily: 'Sans Serif',
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
