import 'package:flutter/cupertino.dart';
import 'package:lpsvn_general/screens/exhibition/list_item_exhibition.dart';

class ListExhibition extends StatelessWidget {
  final List<String> exhibitions;

  const ListExhibition({super.key, required this.exhibitions});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: exhibitions.map((val) {
          return ListItemExhibition(img: "https://picsum.photos/id/689/400/200", status: val);
        }).toList(),
      ),
    );
  }

}