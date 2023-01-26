import 'package:flutter/material.dart';

class RecapItem extends StatelessWidget {
  const RecapItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white70,
        elevation: 3,
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/chaise.png"))),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Chaise louboutin",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text("Orca", style: TextStyle(color: Colors.grey)),
                Text("1 pcs/ 10000 fcfa",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12))
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Checkbox(value: true, onChanged: (bool) {}),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Icon(
                              Icons.remove,
                              color: Colors.blueGrey[700],
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(6))),
                      ),
                      const Text(
                        "2",
                        style: TextStyle(fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[700],
                                border: Border.all(style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(6))),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
