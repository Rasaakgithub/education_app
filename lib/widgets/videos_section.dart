import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  List videolist = [
    'introducrion of flutter',
    'installing flutter on windows',
    'setup emulator on windows',
    'creating our first app',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videolist.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: index == 0
                    ? Color(0xff674aef)
                    : Color(0xff674aef).withOpacity(0.6)),
          ),
        );
      },
    );
  }
}
