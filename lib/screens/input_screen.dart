import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: MyCard(
                    color: Color(0xff1D1E33),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    color: Color(0xff1D1E33),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({@required this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
