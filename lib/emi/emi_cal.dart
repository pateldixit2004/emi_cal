import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class emi extends StatefulWidget {
  const emi({Key? key}) : super(key: key);

  @override
  State<emi> createState() => _emiState();
}

class _emiState extends State<emi> {
  double amount=0;
  double rate=0;
  double year=0;
  double? i;
  double a=1;
  double b=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 20,
                width: 200,
                alignment: Alignment.topLeft,
                color: Colors.cyan,
                child: Text("Amount"),
            ),
            Text("\$ ${amount.toInt()}",style: TextStyle(fontSize: 20)),
            Slider(
              value: amount,
              divisions: 20,
              max: 10000,
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  amount=value;
                });
              },
            ),
            Container(
              height: 20,
              width: 200,
              alignment: Alignment.topLeft,
              color: Colors.red,
              child: Text("Rate"),
            ),
            Text("\$ ${rate.toInt()}",style: TextStyle(fontSize: 20)),
            Slider(
              value: rate,
              divisions: 30,
              max: 30,
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  rate=value;
                });
              },
            ),
            Container(
              height: 20,
              width: 200,
              alignment: Alignment.topLeft,
              color: Colors.cyan,
              child: Text("year"),
            ),
            Text("\$ ${year.toInt()}",style: TextStyle(fontSize: 20)),
            Slider(
              value: year,
              divisions: 30,
              max: 30,
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  year=value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed:() {
              a=(amount*rate*year)/100;
              setState(() {
                b=a;
                i=b+amount;
              });
            },  child: Text("Calulater")),
            Text("Interst=$b"),
            Text("Final amount=$i"),
          ],
        ),
      ),
    );
  }
}
