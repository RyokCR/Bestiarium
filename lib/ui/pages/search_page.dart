


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(5)
          ),
          child: Center(
            child: TextField(
              controller: controller,

              onSubmitted: (String value) async {
                print(controller.text);

              },
              decoration: InputDecoration(
                  fillColor: Colors.black,
                  focusColor: Colors.black,
                  iconColor: Colors.black,
                  hoverColor: Colors.black,
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      /*
                    * Clear the search field
                    * */
                      print("hi");
                    },
                  ),
                  hintText: 'Search...',
                  border: InputBorder.none
              ),
            ),
          ),
        ),
      ),
    );
  }
}

