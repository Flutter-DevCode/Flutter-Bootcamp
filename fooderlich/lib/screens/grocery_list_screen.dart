import 'package:flutter/material.dart';
import '../components/grocery_tile.dart';
import '../models/models.dart';
import 'grocery_item_screen.dart';
import 'package:go_router/go_router.dart';

class GroceryListScreen extends StatelessWidget {
  final GroceryManager manager;
  const GroceryListScreen({super.key, required this.manager});

  @override
  Widget build(BuildContext context) {
    final groceryItems = manager.groceryItems;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
          itemBuilder: ((context, index) {
            final item = groceryItems[index];
            // TODO: Wrap in a Dismissable
            return Dismissible(
              key: Key(item.id),
              direction: DismissDirection.endToStart,
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                child: const Icon(
                  Icons.delete_forever,
                  color: Colors.white,
                  size: 50.0,
                ),
              ),
              onDismissed: ((direction) {
                manager.deleteItem(index);
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${item.name} dismissed')));
              }),
              child: InkWell(
                child: GroceryTile(
                  key: Key(item.id),
                  item: item,
                  onComplete: (change) {
                    if (change != null) {
                      manager.completedItem(index, change);
                    }
                  },
                ),
                onTap: () {
                  final itemId = manager.getItemId(index);
                  context.goNamed(
                    'item',
                    params: {
                      'tab': '${FooderlichTab.toBuy}',
                      'id': itemId,
                    },
                  );
                },
              ),
            );
          }),
          separatorBuilder: ((context, index) {
            return const SizedBox(
              height: 16.0,
            );
          }),
          itemCount: groceryItems.length),
    );
  }
}
