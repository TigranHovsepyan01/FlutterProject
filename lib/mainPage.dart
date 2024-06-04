import 'package:flutter/material.dart';
import 'package:test_t/app_localizations.dart';
import 'package:test_t/requestes/models/Data_List.dart';
import 'package:test_t/requestes/models/data.dart';
import 'card/cart_ui.dart';
import 'main.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final appLocal = AppLocalizations();
  bool switcherValue = false;
  List<Data> dataList = [];

  Future<void> updateLocal({bool isArmenian = true}) async {
    dataList = await appLocal.loadData(isArmenian: isArmenian);
    print("LKLKLK::::  ${dataList.length}");
    setState(() {});
  }
  @override
  void initState() {
    updateLocal();
    print(dataList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 16, 112, 255),
        toolbarHeight: 156,
        title: const Padding(
            padding: EdgeInsets.only(bottom: 30), child: Text('Հարցումներ',
        style: TextStyle(color: Colors.white),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Switch(
                value: switcherValue,
                onChanged: (value) {
                  print("SSSSSSSS $value");
                  switcherValue = value;
                  updateLocal(isArmenian:value);
                }),
          )
        ],
        flexibleSpace: const Padding(
            padding: EdgeInsets.only(top: 100, left: 16, right: 16, bottom: 4),
            child: PreferredSize(
              preferredSize: Size.fromHeight(30),
              child: SearchBar(
                backgroundColor:
                    WidgetStatePropertyAll(Color.fromARGB(255, 45, 129, 255)),
                leading: Icon(Icons.search),
                hintText: "Որոնել",
              ),
            )),
        centerTitle: true,
      ),
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return CardUi(data: dataList[index]);
        },
        itemCount: dataList.length,
      )),
    );
  }
}
