import 'package:flutter/material.dart';

Widget wGosNumber(BuildContext context, String number, String region) {
  return Container(
      width: 140,
      //padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        children: [
          //
          Expanded(
            flex: 8,
            child: Center(
              child: Text(
                number,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
          Container(
            color: Colors.black,
            height: 28,
            width: 2,
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 8.0),
          Expanded(
            flex: 4,
            child: Center(
              child: Text(
                region,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
        ],
      ));
}
