import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final int index;
  final String userId;
  final String title;

  const PostWidget(
      {super.key,
      required this.index,
      required this.userId,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12,right: 12,top: 5,bottom: 5),
      margin: EdgeInsets.only(left: 12,right: 12,top: 7,bottom: 7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blueGrey.shade400,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 9),
                blurRadius: 9,
                color: Colors.indigoAccent.shade200)
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(index.toString()),
          SizedBox(width: 12,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(userId),
                Text(title,overflow: TextOverflow.fade,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
