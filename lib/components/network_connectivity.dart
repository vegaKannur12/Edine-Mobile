import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class NetConnection {
  static Future<bool> networkConnection(BuildContext context) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
      // I am connected to a mobile network.
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else if (connectivityResult == ConnectivityResult.none) {
      // print("noneeeee");
      // final snackBar = SnackBar(
      //   content: const Text('No internet connection'),
      //   action: SnackBarAction(
      //     label: 'Undo',
      //     onPressed: () {
      //       // Some code to undo the change.
      //     },
      //   ),
      // );
       showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Container(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Please check internet",
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
                SpinKitCircle(
                  color: Colors.green,
                )
              ],
            ),
          ),
        );
      },
    );
      // ignore: use_build_context_synchronously
      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
      // ignore: avoid_print
      print("Select a date");
      return false;
    }
    return false;
  }
}
