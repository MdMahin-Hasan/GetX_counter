import 'package:counter_getx/counterstate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterstate c = Get.put(counterstate());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App with Getx"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                "Total time you pressed : ${c.count}",
                style: const TextStyle(fontSize: 20),
              )),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  c.Clear();// ✅ reset when pressed
                Get.snackbar("Count is reset", "You are successful ",
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Colors.lightBlue);
                },
                child: const Text("Reset the Count"), // no need for Obx here
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          c.increment();
        },
        child: const Icon(Icons.add_circle_outline, color: Colors.blue),
      ),
    );
  }
}
