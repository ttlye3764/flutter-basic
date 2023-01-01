import 'package:flutter/material.dart';
import 'package:untitled1/button/MyElevatedButton.dart';
import 'package:untitled1/cupertino_page.dart';

void main() => runApp(const MyApp());

// StatelessWidget : 변경되지 않는 위젯.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HelloPage('tesaaat')
      //   home: const CupertinoPage()
    );
  }
}

// StatefulWidget : 변경가능한 위젯
class HelloPage extends StatefulWidget {
  final String title;

  const HelloPage(this.title, {Key? key}) : super(key: key);

  @override
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {

  String _meesage = "Hello World";
  int _counter = 10;
  MyElevatedButton myElevatedButton = MyElevatedButton();
  // ElevatedButton movePageElevatedButton = MyElevatedButton().getMyEleavatedButton(
  //     onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoPage())),
  //     text: '테스트입니다'
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: _chageMessage),
      appBar: AppBar(
        title : Text(widget.title)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(_meesage, style: const TextStyle(fontSize: 30)),
            Text('$_counter', style: const TextStyle(fontSize: 30)),
            myElevatedButton.getMyEleavatedButton(onPressed: ()=>print('a'), text: '테스트입니다'),
            myElevatedButton.getMyEleavatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> CupertinoPage())),
                text: '페이지 이동'
            )
          ],
        )
      ),
    );
  }

  void _chageMessage() {
    setState(() {
      _meesage = '헬로월aa드';
      _counter++;
    });
  }
}

