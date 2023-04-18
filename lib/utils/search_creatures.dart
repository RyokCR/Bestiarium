

import 'package:flutter/cupertino.dart';

class SearchEntries extends ChangeNotifier{

  List entries;

  SearchEntries({required this.entries});

  updateEntries(newEntries){
    entries = newEntries;
    notifyListeners();
  }
}