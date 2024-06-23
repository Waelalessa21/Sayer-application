import 'package:flutter/material.dart';
import 'package:sayeer/common/widgets/gridenant_color/gradient_color.dart';
import 'package:sayeer/utils/constants/colors.dart';
import 'package:sayeer/utils/constants/sizes.dart';

class MahtarScreen extends StatefulWidget {
  const MahtarScreen();

  @override
  _MahtarScreenState createState() => _MahtarScreenState();
}

class _MahtarScreenState extends State<MahtarScreen> {
  List<String> userInput = ['', '', ''];

  @override
  Widget build(BuildContext context) {
    return TGradientColor(
      child: Container(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Salary',
              ),
              onChanged: (value) {
                userInput[0] = value;
              },
            ),
            CheckboxListTile(
              title: Text('Commitments (if any)'),
              value: userInput[1] != '',
              onChanged: (value) {
                setState(() {
                  userInput[1] = value != null ? 'true' : '';
                });
              },
            ),
            if (userInput[1] != '')
              TextField(
                decoration: InputDecoration(
                  labelText: 'Commitments Amount',
                ),
                onChanged: (value) {
                  userInput[2] = value;
                },
              ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Salary Transfer Entity',
              ),
              onChanged: (value) {
                userInput[3] = value;
              },
            ),
            ElevatedButton(
              onPressed: () {
                // Save userInput list
                print(userInput);
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
