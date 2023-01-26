import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(5),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                    filled: true,
                    // border: OutlineInputBorder(

                    //     borderRadius: BorderRadius.circular(5)),
                    prefixIcon: const Icon(Icons.search),
                    fillColor: Colors.grey[60]),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 45,
            width: 45,
            child: const Center(
                child: FaIcon(
              FontAwesomeIcons.filter,
              size: 20,
              color: Colors.white,
            )),
            decoration: BoxDecoration( 
                borderRadius: BorderRadius.circular(5),
                color: Colors.blueGrey[900]),
          ),
        )
      ],
    );
  }
}
