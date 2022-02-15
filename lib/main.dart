import 'package:flutter/material.dart';
import 'CafeMenu.dart';
import 'MoneyBox.dart';

void main() {
  runApp(MyApp());
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<CafeMenu> menu = [
    CafeMenu('Americano', 50, 'assets/images/menu1.jpg'),
    CafeMenu('Cappuccino', 60, 'assets/images/menu2.jpg'),
    CafeMenu('Latte', 65, 'assets/images/menu3.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chaiwat Sirawattananon'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MoneyBox('ยอดคงเหลือ', 5000.55, Colors.lightBlue, 150),
              SizedBox(
                height: 5,
              ),
              MoneyBox('รายรับ', 7000.44, Colors.green, 150),
              SizedBox(
                height: 5,
              ),
              MoneyBox('รายจ่าย', 2000.2374, Colors.red, 150),
            ],
          ),
        )

        // child: ListView.builder(
        //     itemCount: menu.length,
        //     itemBuilder: (BuildContext context, int index) {
        //       CafeMenu drink = menu[index];
        //       return ListTile(
        //           leading: Image.asset(drink.img),
        //           title: Text(drink.name, style: TextStyle(fontSize: 30)),
        //           subtitle: Text('ราคา ' + drink.price.toString() + ' บาท',
        //               style: TextStyle(fontSize: 24)));
        //     }),

        //     ListView(
        //   children: getData(10),
        // )
        );
  }
}

List<Widget> getData(int count) {
  List<Widget> data = [];
  for (var i = 0; i < count; i++) {
    var menu = ListTile(
        title: Text('เมนูที่ ${i + 1}', style: TextStyle(fontSize: 25)),
        subtitle: Text('หัวข้อย่อยที่ ${i + 1}'));
    data.add(menu);
  }
  return data;
}
