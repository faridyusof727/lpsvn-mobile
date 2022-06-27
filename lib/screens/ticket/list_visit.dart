import 'package:flutter/material.dart';
import 'package:lpsvn_general/screens/ticket/list_item_visit.dart';

class ListVisit extends StatelessWidget {
  final List<String> tickets;

  const ListVisit({Key? key, required this.tickets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
          children: tickets.map((ticket) {
        return ListItemVisit(img: ticket);
      }).toList()),
    );
  }
}
