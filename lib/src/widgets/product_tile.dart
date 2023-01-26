import 'package:app_design/src/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product extends StatefulWidget {
  Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Material(
          elevation: 3,
          child: Container(
            margin: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width * .45,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    width: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/chaise.png"))),
                  ),
                ),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(8),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Chaise louboutin",
                            style: GoogleFonts.habibi(
                                fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                          Text(
                            "Orca",
                            style: GoogleFonts.habibi(color: Colors.grey),
                          ),
                          Text(
                            "10 000 fcfa",
                            style: GoogleFonts.lancelot(
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: Icon(Icons.add),
                              decoration: BoxDecoration(color: Colors.blueGrey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)),
          )),
    );
  }
}
