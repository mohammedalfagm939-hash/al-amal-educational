
import 'package:flutter/material.dart';

void main() {
  runApp(const AmalApp());
}

class AmalApp extends StatelessWidget {
  const AmalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'منصة الأمل التعليمية',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('منصة الأمل التعليمية'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const SizedBox(height: 20),
            const Icon(
              Icons.school,
              size: 85,
              color: Colors.blue,
            ),
            const Text(
              'أهلاً بك في منصة الأمل',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'طريقك نحو النجاح والتفوق',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(height: 30),
            buildStage(context, 'المرحلة الابتدائية'),
            buildStage(context, 'المرحلة الإعدادية'),
            buildStage(context, 'المرحلة الثانوية'),
            buildStage(context, 'التوجيهي'),
          ],
        ),
      ),
    );
  }

  Widget buildStage(BuildContext context, String name) {
    return Card(
      child: ListTile(
        leading: const Icon(
          Icons.menu_book,
          color: Colors.blue,
          size: 32,
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('مرحباً بك في $name')),
          );
        },
      ),
    );
  }
}
