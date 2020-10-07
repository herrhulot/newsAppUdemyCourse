import 'package:flutter/material.dart';
import 'stories_bloc.dart';

class StoriesProvider extends InheritedWidget {
  final StoriesBlock bloc;

  StoriesProvider({Key key, Widget child})
      : bloc = StoriesBlock(),
        super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static StoriesBlock of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType(StoriesProvider)
            as StoriesProvider)
        .bloc;
  }
}
