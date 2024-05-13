import 'package:flutter/material.dart';
import 'package:focus_2/drawer.dart';
import 'package:focus_2/page/eventPage/1eventList.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Widget? content;
  String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
                child: Text(
              'LOGO',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            shape:
                const BeveledRectangleBorder(side: BorderSide(color: Colors.black)),
            title: const Center(
                child: Text(
              'Events',
              style: TextStyle(fontSize: 30),
            )),
            onTap: () {
              Navigator.pop(context);
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const EventList())));
              });
              title = "Events";
            },
          ),
        ],
      ),
    ));
  }
}
