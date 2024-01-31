import "package:flutter/material.dart";
import "package:flutter/services.dart";
import 'package:flutter/src/services/asset_bundle.dart';

import "../models/catalog.dart";
import "../widgets/drawer.dart";
import "../widgets/item_widget.dart";

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



//! continue 4:15:56 / 8:.......

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    print(catalogJson);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Catalog App")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
