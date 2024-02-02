// ignore_for_file: camel_case_types, unnecessary_string_interpolations

import 'package:flutter/material.dart';



class search_opshin extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(Icons.close),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back_ios),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text("");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> filternames =
        names.where((element) => element.startsWith(query)).toList();

    return ListView.builder(
      itemCount: query == "" ? names.length : filternames.length,
      itemBuilder: ((context, i) {
        return Container(
          padding: const EdgeInsets.all(10),
          child: query == "" ? Text("${names[i]}") : Text("${filternames[i]}"),
        );
      }),
    );
  }
}

List<String> names = [
  "ahmed",
  "adel",
  "maohammed",
  "rawan",
  "mahmoud",
  "noor",
  "wael",
  "wahip",
  "sara",
  "soror",
  "samy",
  "uara",
  "lamer",
  "gharam",
  "buta",
  "amera",
  "brtwnh",

];
