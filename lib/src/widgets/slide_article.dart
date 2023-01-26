import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlideItem extends StatefulWidget {
  final int child;
  SlideItem({required this.child, Key? key}) : super(key: key);

  @override
  State<SlideItem> createState() => _SlideItemState();
}

class _SlideItemState extends State<SlideItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 15,
            child: Container(
              margin: const EdgeInsets.all(8),
              // padding: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width * .95,
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                      bottom: 35,
                      right: 15,
                      child: Text("Nouvel arrivage",
                          style: GoogleFonts.luckiestGuy())),
                  Positioned(
                    child: Container(
                      width: MediaQuery.of(context).size.width * .35,
                      height: MediaQuery.of(context).size.height * .5,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomRight: Radius.circular(100))),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.grey,
                        Colors.grey.shade400,
                        Colors.white70
                      ]),
                  borderRadius: BorderRadius.circular(10)),
            )),
        Positioned(
            left: MediaQuery.of(context).size.width * .15,
            top: -40,
            child: Container(
              height: MediaQuery.of(context).size.height * .25,
              width: MediaQuery.of(context).size.height * .20,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/chaise.png"),
                      fit: BoxFit.contain)),
            ))
      ],
    );
  }
}
