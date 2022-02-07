import 'package:flutter/material.dart';

class BottomSheetView extends StatefulWidget {

  @override
  _BottomSheetViewState createState() =>
      _BottomSheetViewState();

  BottomSheetView();
}

class _BottomSheetViewState extends State<BottomSheetView> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        ],
      ),
    );
  }
}
