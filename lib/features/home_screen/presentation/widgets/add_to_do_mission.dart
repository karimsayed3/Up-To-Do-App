import 'package:flutter/material.dart';

class AddToDoMission extends StatefulWidget {
  const AddToDoMission({super.key});

  @override
  State<AddToDoMission> createState() => _AddToDoMissionState();
}

class _AddToDoMissionState extends State<AddToDoMission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold.of(context).showBottomSheet((context) {
      return Container(
        width: 150,
        height: 220,
        color: Colors.red,
      );
    }) as Widget;
  }
}
