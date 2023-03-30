import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/controller/provider.dart';

// ignore: must_be_immutable
class AddPage extends StatelessWidget {
  AddPage({super.key});
  final TextEditingController _titlecontroller = TextEditingController();
  final TextEditingController _amountcontroller = TextEditingController();
  int id = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Money Manager'),
        centerTitle: true,
      ),
      body: Consumer<Tabs>(
        builder: (context, state, child) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _titlecontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Title'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _amountcontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Rs'),
                  keyboardType: TextInputType.number,
                ),
              ),
              ToggleButtons(
                isSelected: state.toggle,
                onPressed: (index) {
                  id = index;
                  context.read<Tabs>().addToggle(index);
                },
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                selectedBorderColor: Colors.pink[200],
                selectedColor: Colors.black,
                fillColor: Colors.pink[100],
                color: Colors.black54,
                constraints: const BoxConstraints(
                  minHeight: 30.0,
                  minWidth: 100.0,
                ),
                children: const [
                  Text('Income'),
                  Text('Expense'),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: null,
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text('Cancel'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<Tabs>().addToList(
                              _titlecontroller.text,
                              _amountcontroller.text,
                              id,
                            );

                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 40),
                        elevation: 0,
                        backgroundColor: Colors.pink.shade200,
                        foregroundColor: Colors.black87,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text('Save'),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
