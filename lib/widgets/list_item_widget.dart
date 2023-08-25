import 'package:flutter/material.dart';
import 'package:list_task_app/models/list_item_model.dart';

class ListItemWidget extends StatelessWidget {
  final ListItemModel listItemModel;
  final void Function(int value) onAddCallback;

  const ListItemWidget({
    super.key,
    required this.listItemModel,
    required this.onAddCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            child: Text(
              '${listItemModel.index + 1}',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Count : ${listItemModel.count.toString()}',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            onPressed: () => onAddCallback(listItemModel.count),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
