import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class Work',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ColorChangerScreen(),
    );
  }
}

class ColorChangerScreen extends StatefulWidget {
  @override
  _ColorChangerScreenState createState() => _ColorChangerScreenState();
}

class _ColorChangerScreenState extends State<ColorChangerScreen> {
  Color _containerColor = Colors.blue;
  Color _textColor = Colors.white;

  void _changeTextColor(Color color) {
    setState(() {
      _textColor = color;
    });
  }

  void _changeContainerColor() {
    setState(() {
      _containerColor = Colors.purple;
      _containerColor = Colors.brown;
      _containerColor = Colors.red;//
      _containerColor = Colors.black87;
      _containerColor = Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Class Work")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              color: _containerColor,
              alignment: Alignment.center,
              child: Text(
                'Hello CA211',
                style: TextStyle(fontSize: 24, color: _textColor), // Use the text color variable
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Change the Text Color',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _changeTextColor(Colors.yellow), // Change text color to yellow
                  child: Text('Yellow'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _changeTextColor(Colors.green), // Change text color to green
                  child: Text('Green'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _changeTextColor(Colors.blue), // Change text color to blue
                  child: Text('Blue'),
                ),
              ],
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://miro.medium.com/v2/resize:fit:1400/0*TNAvjE4aW2p4Ql3r',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeContainerColor, // Change the container background color
              child: Text('Change Background Color'),
            ),
          ],
        ),
      ),
    );
  }
}






