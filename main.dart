import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Al-Azhar University',
      home: MyHomePage(),
    );
  }
}

class MyHomePage  extends StatefulWidget {
  const MyHomePage ({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int selectedButtonIndex = 0;
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawer: Drawer(
        elevation: 25,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.teal,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: Text(
                      "R",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                  const Text(
                    "20201105",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Rahaf Wael Alghussain",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Inbox"),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Contact Us"),
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text("Offers"),
            ),
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Row(
          children: [
            Text(
              'Al-Azhar',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
              textDirection: TextDirection.rtl,
            ),
            Text(
              'University',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 14,
              ),
              textDirection: TextDirection.rtl,
            ),
            Text(
              'in Gaza',
              style: TextStyle(
                letterSpacing: 4,
                fontSize: 12,
                color: Colors.amber,
              ),
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
      body: Center(
        child: Table(
          //border: TableBorder.all(),
          columnWidths: const {
            0: FixedColumnWidth(150),
            1: FixedColumnWidth(150),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,

          children: [
            TableRow(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.all(4.0),
                  color: Colors.amber,
                  child: Text('Subject'),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.all(4.0),
                  color: Colors.amber,
                  child: Text('Subject hours'),
                ),
              ],
            ),

            TableRow(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.all(4.0),
                  color: Colors.grey,
                  child: Text('Subject 1'),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.all(4.0),
                  color: Colors.grey,
                  child: Text('2 hours'),
                ),
              ],
            ),
            TableRow(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.all(4.0),
                  color: Colors.grey,
                  child: Text('Subject 2'),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.all(4.0),
                  color: Colors.grey,
                  child: Text('3 hours'),
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 4,
        color: Colors.grey,
        child: Container(
        height: 50,
        child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        IconButton(
        icon: Icon(Icons.home),
        color: selectedButtonIndex == 0
        ? Colors.white
            : const Color.fromARGB(255, 66, 64, 64),
        onPressed: () {
        setState(() {
        selectedButtonIndex = 0;
        });
        },
        ),
        IconButton(
        icon: Icon(Icons.settings),
        color: selectedButtonIndex == 1
        ? Colors.white
            : const Color.fromARGB(255, 66, 64, 64),
        onPressed: () {
          setState(() {
            selectedButtonIndex = 1;
          });
        },
        ),
        ],
        ),
        ),
      ),

      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),
    );
  }

}
