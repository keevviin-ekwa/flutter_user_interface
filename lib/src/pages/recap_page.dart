import 'package:app_design/src/widgets/recap_item.dart';
import 'package:flutter/material.dart';

class RecapPage extends StatefulWidget {
  RecapPage({Key? key}) : super(key: key);

  @override
  State<RecapPage> createState() => _RecapPageState();
}

class _RecapPageState extends State<RecapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: BackButton(
            color: Colors.blueGrey[700],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.blueGrey[700],
                ))
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 350,
              child: ListView.builder(
                  itemCount: 5, itemBuilder: (context, index) => RecapItem()),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Meubles choisis",
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      )),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text("25000 fcfa", style: TextStyle(fontSize: 17))
                        ],
                      ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Frais de livraison",
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      )),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text("5000 fcfa", style: TextStyle(fontSize: 17))
                        ],
                      ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "TVA 5%",
                            style: TextStyle(fontSize: 17),
                          )
                        ],
                      )),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text("1250 fcfa", style: TextStyle(fontSize: 17))
                        ],
                      ))
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Divider(
                    height: 25,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            "TOTAL :",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(" 31250 fcfa",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold))
                        ],
                      ))
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Payer",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.navigate_next_rounded,
                            size: 25,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  color: Colors.blueGrey[700],
                )
              ],
            ))
          ],
        ));
  }
}
