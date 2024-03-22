import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("buscar"),
        actions: const [
          CircleAvatar(
            child: Icon(Icons.person),
          )
        ],
      ),
      body: const Center(
        child: Text("search Works"),
      ),
    );
  }
}
