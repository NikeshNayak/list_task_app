import 'package:flutter/material.dart';
import 'package:list_task_app/models/list_item_model.dart';
import 'package:list_task_app/widgets/list_item_widget.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final List<ListItemModel> _listItems = List.generate(100, (index) => ListItemModel(index, 0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Task'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: _listItems.length,
        itemBuilder: (context, index) {
          return ListItemWidget(
            key: ValueKey(index),
            listItemModel: _listItems[index],
            onAddCallback: (value) {
              setState(() {
                _listItems[index].count = value + 1;
              });
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
