import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PhotoEdit extends StatelessWidget {
  const PhotoEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight+50,
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/abyssecter.png')
                )
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){},
          icon: const Icon(Icons.camera_alt),
          label: const Text('Take a photo')
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(CupertinoIcons.globe), label: '',),
          NavigationDestination(icon: Icon(CupertinoIcons.search), label: '',),
          NavigationDestination(icon: Icon(CupertinoIcons.settings_solid), label: '',),
        ],
      
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white
        ),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Text('My albums',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  Chip(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 8),
                  label: Text('See All',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600),
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
