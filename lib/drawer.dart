import 'package:flutter/material.dart';
import 'package:focus_2/homePage.dart';
import 'package:focus_2/page/eventDetailsPage/1eventDetails.dart';
import 'package:focus_2/page/eventPage/1eventList.dart';
import 'package:focus_2/page/firstPage.dart';
import 'package:focus_2/page/ticketPage/1ticketCreate.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  Widget? content;
  String title = 'ABc';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '',
        ),
      ),
      drawer: Drawer(
          shape: const BeveledRectangleBorder(),
          child: ListView(padding: EdgeInsets.zero, children: [
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: ListTile(
                title: Center(
                  child: Text('Home',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const Center(child: Text('Home')),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    content = const HomePage();
                    title = "Home Page";
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Divider(),
            ),
            ListTile(
              title: const Center(child: Text('Events')),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  content = const EventList();
                  title = "Home Page";
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
            ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Divider(),
                        ),
            ListTile(
              title: const Center(child: Text('Tickets')),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  content = const EventDetails();
                  title = "Home Page";
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              
            ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Divider(),
                        ),
            ListTile(
              title: const Center(child: Text('Records')),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  content = const TicketsCreate();
                  title = "Home Page";
                });
              },
            ),
          ])),
          body:(content== null)?
          FirstPage():content,
    );
  }
}
