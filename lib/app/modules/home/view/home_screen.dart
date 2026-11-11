import 'package:demogetx/app/modules/home/controllers/home_cotroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Set the controller for the use.
    final controller = HomeController.to;
    return Scaffold(
      appBar: AppBar(title: Text('Rick and Morty')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const CircularProgressIndicator();
        }
        if (controller.errorMessage.value.isNotEmpty) {
          return Text(controller.errorMessage.value);
        }
        return ListView.builder(
          itemCount: controller.characters.length,
          itemBuilder: (_, i) {
            final c = controller.characters[i];
            return ListTile(
              leading: Image.network(c.image),
              title: Text(c.name),
              subtitle: Text('${c.status} · ${c.species}'),
            );
          },
        );
      }),
    );
  }
}
