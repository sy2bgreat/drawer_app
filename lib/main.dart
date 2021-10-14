import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                // ignore: avoid_print
                print("hey shopping cart!");
              },
              icon: const Icon(Icons.shopping_cart)),
          IconButton(
              onPressed: () {
                // ignore: avoid_print
                print("hey search!");
              },
              icon: const Icon(Icons.search))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('images/pikachu-3.jpg'),
              ),
              otherAccountsPictures: const [
                CircleAvatar(
                    backgroundImage: AssetImage('images/pikachu-2.jpg')),
                CircleAvatar(
                    backgroundImage: AssetImage('images/pikachu-1.jpg'))
              ],
              accountName: const Text("PIKACHU"),
              accountEmail: const Text("Pikachu@pikapika"),
              onDetailsPressed: () {
                // ignore: avoid_print
                print("PIKA ! PIKA! main is clicked");
              },
              decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35))),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: const Text("Home"),
              onTap: () {
                // ignore: avoid_print
                print("go to home");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: const Text("Settings"),
              onTap: () {
                // ignore: avoid_print
                print("go to settings");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: const Icon(
                Icons.question_answer,
                color: Colors.black,
              ),
              title: const Text("Q and A"),
              onTap: () {
                // ignore: avoid_print
                print("Q&A");
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
