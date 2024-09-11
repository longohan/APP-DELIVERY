import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});
  @override
  Widget build(BuildContext context) {
    var myFistTextStyle = TextStyle(color: Theme.of(context).colorScheme.inversePrimary,fontWeight: FontWeight.bold);
    var mySecondaryTextStyle = TextStyle(color: Theme.of(context).colorScheme.primary,fontWeight: FontWeight.bold);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
      ),
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Column(
              children: [
                Text("\$0.99",style: myFistTextStyle,),
                Text("Delivery fee",style: mySecondaryTextStyle,),
              ],
            ),
            Column(
              children: [
                Text("15-30 min",style: myFistTextStyle),
                Text("Delivery time", style: mySecondaryTextStyle,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
