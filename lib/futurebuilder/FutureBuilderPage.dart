import 'package:flutter/material.dart';

class FutureBuilderPage extends StatefulWidget {
  @override
  _FutureBuilderPageState createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FutureBuilderPage"),
        ),
        body: _Tabpage());
  }
}

class _Tabpage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<_Tabpage> {
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<TestData>(
        initialData: TestData(),
        future: mockNetworkData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          print(
              "status  ${snapshot.connectionState}   ${snapshot.runtimeType}   ${snapshot.data}   ${snapshot.toString()}    ${snapshot.hasData}");

          /// 请求已结束
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              /// 请求失败，显示错误
              return Text("Error: ${snapshot.error}");
            } else {
              /// 请求成功，显示数据
              return Text("Contents: ${snapshot.data}");
            }
          } else {
            /// 请求未结束，显示loading
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  Future<TestData> mockNetworkData() async {
    TestData data = TestData();
    data.address = "address";
    data.age = 23;
    data.name = "name";
    return Future.delayed(Duration(seconds: 2), () => data);
  }
}

class TestData {
  String name;
  String address;
  int age;

  @override
  String toString() {
    return 'TestData{name: $name, address: $address, age: $age}';
  }
}
