import 'package:flutter/material.dart';
import 'package:weather_app/view/bottom_tabs/category_tile/expense_tile.dart';
import 'package:weather_app/view/bottom_tabs/category_tile/income_tile.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: TabBar(
              padding: EdgeInsets.zero,
              labelPadding: EdgeInsets.zero,
              indicatorPadding: const EdgeInsets.all(6),
              overlayColor: const MaterialStatePropertyAll(
                Colors.transparent,
              ),
              indicator: BoxDecoration(
                color: Colors.pink.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              labelColor: Colors.black,
              tabs: const [
                Text('Income'),
                Text('Expense'),
              ],
            ),
          ),
          const Expanded(
              child: TabBarView(
            children: [IncomeTile(), ExpenseTile()],
          ))
        ],
      ),
    );
  }
}
