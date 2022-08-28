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
                  child: GenderCard(
                    iconData: Icons.male_outlined,
                  ),
                ),
                Expanded(
                  child: GenderCard(
                    iconData: Icons.female_outlined,
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

class GenderCard extends StatelessWidget {
  final IconData? iconData;
  GenderCard({
    @required this.iconData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Card(
        color: Color(0xff1D1E33),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          iconData,
          size: 100,
        ),
      ),
    );
  }
}
