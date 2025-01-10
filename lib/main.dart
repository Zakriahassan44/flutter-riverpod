import 'package:flutter/material.dart';
import 'package:flutter_practice/counterexp/counter.dart';
import 'package:flutter_practice/providerexp/providerexp.dart';
import 'package:flutter_practice/searchProvider/home_screenserch_provider.dart';
import 'package:flutter_practice/stateproviderexp/slider_screen.dart';
import 'package:flutter_practice/todoapp/todoapp_home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'favourite app/provider/favourite_homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  // ProviderScope is a widget that allows Riverpod to work and act as a container for all the providers.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

// rverpord in flutter is a statemanagment library
//help to manage the state of the application
// it is a reactive framework
//cache ka kam bhi karta hai hub karta hai ap ko hud dependency injection karnai k zarorat nahi parti.
//flutter ka state managment ka 4 tareeqai hain
//reverpord is built on top of provider
// provider mai jo problem tai wo reverpord mai fixed kai hai 
// comple time cheak karta hai kai koi error to nahi hai
//dependecy injecton hud manage karta hai 
//reverpord mai  provider itself aik dark class hai 
//provider itself ai dart class hai 
// ye widgets nahi hai
// simple provider read only contate vale 
// state provider read and write both
//future provider 
//errror handling hud karta hai 
//stream provider widely use help stream manage karta hai
//state notifier provider complex crud operation kai liye use hota hai
//auto dispose provider 
// provider scope 

