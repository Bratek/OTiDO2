import 'package:flutter/material.dart';
import 'package:otido2/app_library.dart';
import 'package:otido2/utils/provider/app_provider.dart';
import 'package:provider/provider.dart';

Widget wGosNumber(BuildContext context, {Car? carParam}) {
  Car? car;
  if (carParam == null) {
    car = Provider.of<AppProvider>(context).global.car;
  } else {
    car = carParam;
  }

  return Container(
      width: 140,
      height: 32,
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
                car.gosNumber,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),

          Container(
            color: Colors.black,
            height: 28,
            width: 2,
          ),

          Expanded(
            flex: 4,
            child: Center(
              child: Text(
                car.gosRegion,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ));
}
