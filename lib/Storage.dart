import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class getstorage extends StatelessWidget {
  const getstorage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getstorage"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            GetStorage().write("Name", "Mahin hasan");
          }, child: Text("data")),
          ElevatedButton(onPressed: (){
            var Name = GetStorage().read("Name");
            Get.snackbar("Name",Name);

          }, child: Text("data")),
          ElevatedButton(onPressed: (){

          }, child: Text("data")),

        ],
      ),
    );
  }
}
