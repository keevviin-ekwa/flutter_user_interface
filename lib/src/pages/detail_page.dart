import 'package:app_design/src/pages/recap_page.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .6,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * .5,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/chaise.png"))),
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                      )),
                ),
                Positioned(left: 10, top: 30, child: BackButton()),
                Positioned(
                    right: 10,
                    top: 30,
                    child: IconButton(
                        onPressed: () {},
                        icon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.blueGrey[700],
                            )))),
                Positioned(
                  bottom: 40,
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .9,
                      height: MediaQuery.of(context).size.height * .1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            height: MediaQuery.of(context).size.width * .14,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(style: BorderStyle.solid),
                                image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/chaise.png"),
                                    fit: BoxFit.contain)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            height: MediaQuery.of(context).size.width * .14,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(style: BorderStyle.solid),
                                image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/chaise.png"),
                                    fit: BoxFit.contain)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            height: MediaQuery.of(context).size.width * .14,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(style: BorderStyle.solid),
                                image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/chaise.png"),
                                    fit: BoxFit.contain)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            height: MediaQuery.of(context).size.width * .14,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(style: BorderStyle.solid),
                                image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/chaise.png"),
                                    fit: BoxFit.contain)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            height: MediaQuery.of(context).size.width * .14,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(style: BorderStyle.solid),
                                image: const DecorationImage(
                                    image:
                                        AssetImage("assets/images/chaise.png"),
                                    fit: BoxFit.contain)),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "CHAISE LOUBOUTIN",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Orca",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 13.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "10000 fcfa",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(13.0),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec volutpat ornare diam, a laoreet eros malesuada in. Sed et aliquet turpis, nec tristique augue. Curabitur ut lectus eu leo varius maximus lacinia sit amet odio. Suspendisse pellentesque tortor ut tellus tempus ornare. Praesent nec sodales nunc. Mauris in lacus vulputate, dapibus nulla quis, consequat nisl. Sed id semper velit. Donec auctor vel turpis sit amet egestas. Morbi quis finibus lacus.",
                        maxLines: 5,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(13),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            color: Colors.green,
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            color: Colors.red,
                          ),
                          Container(height: 30, width: 30, color: Colors.yellow)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
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
                                    border:
                                        Border.all(style: BorderStyle.solid),
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
                                    border:
                                        Border.all(style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(6))),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: MediaQuery.of(context).size.height * .10,
                  alignment: Alignment.center,
                  child: const Text(
                    "Ajouter au panier",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.blueGrey[700],
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => RecapPage()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * .10,
                  alignment: Alignment.center,
                  color: Colors.grey,
                  child: const Text("Payer"),
                ),
              ))
            ],
          ))
        ],
      ),
    );
  }
}
