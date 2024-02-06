// ignore_for_file: public_member_api_docs, sort_constructors_first
// import "dart:math";
import 'dart:convert';

import "package:flutter/material.dart";
import "package:flutter/services.dart";
// import 'package:flutter/src/services/asset_bundle.dart';
import 'package:velocity_x/velocity_x.dart';

import "package:flutter_application_1/widgets/themes.dart";

import "../models/catalog.dart";
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';
// import "../widgets/drawer.dart";
// import "../widgets/item_widget.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 25;

  final String name = "flutterSujan";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");

    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //* dummy list
    //* final dummyList = List.generate(10, (index) => CatalogModel.items[0]);

    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().py16().expand()
              else
                CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
