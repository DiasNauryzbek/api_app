import 'package:flutter/material.dart';
import 'model.dart';
import 'api_final.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  late List<UserModel>? _userModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await ApiService().getUsers())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: _userModel == null || _userModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(children: [
              const SizedBox(
                height: 40.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Пользователи",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _userModel!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 0, left: 20),
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.account_circle_sharp,
                              size: 40,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _userModel![index].name,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(_userModel![index].email),
                                Text("Surf"),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ]),
    );
  }
}
