import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<String> testList = [
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World'
  ];
  void addToTestList(String item) => testList.add(item);
  void removeFromTestList(String item) => testList.remove(item);
  void removeAtIndexFromTestList(int index) => testList.removeAt(index);
  void insertAtIndexInTestList(int index, String item) =>
      testList.insert(index, item);
  void updateTestListAtIndex(int index, Function(String) updateFn) =>
      testList[index] = updateFn(testList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
