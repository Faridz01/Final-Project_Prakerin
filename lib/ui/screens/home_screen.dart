import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ridzfltr/ui/network/api.dart';
import 'package:ridzfltr/ui/screens/login_screen.dart';
import 'package:ridzfltr/ui/services/album_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/album_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = '';

  void initState() {
    super.initState();
    loadUser();
  }

  loadUser() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var user = jsonDecode(localStorage.getString('user') ?? '');

    if (user != null) {
      setState(() {
        name = user['name'];
      });
    }
  }

  void logout() async {
    var res = await Network().getData('/logout');
    var body = json.decode(res.body);
    if (body['success']) {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.remove('user');
      localStorage.remove('token');
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Movie'),
        actions: [
          IconButton(onPressed: () => logout(), icon: const Icon(Icons.logout)),
        ],
      ),
      body: SafeArea(
          child: Center(
        child: Text('Welcome to Detail Movie, ${name}'),
      )),
    );
  }
}
