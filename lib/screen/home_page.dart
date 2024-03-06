import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';
import 'package:kotnew/components/custom_snackbar.dart';
import 'package:kotnew/controller/controller.dart';
import 'package:kotnew/model/customer_model.dart';

import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    print(size.width);
    print(size.height);
    return const Placeholder();
  }
}