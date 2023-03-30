import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/controller/provider.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Tabs>(
      builder: (context, state, child) {
        return ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 12),
          itemCount: state.elemets.length,
          separatorBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(),
            );
          },
          itemBuilder: (ctx, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor:
                    state.elemets[state.elemets.length - index - 1][2] == 0
                        ? Colors.green[50]
                        : Colors.red[50],
                foregroundColor: Colors.black87,
                maxRadius: 30,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('12'),
                    Text('Dec'),
                  ],
                ),
              ),
              title: Text(
                'Rs ${state.elemets[state.elemets.length - index - 1][1]}',
              ),
              subtitle: Text(
                '${state.elemets[state.elemets.length - index - 1][0]}',
              ),
              trailing: IconButton(
                onPressed: () {
                  state.removeFromList(index);
                },
                icon: const Icon(Icons.delete),
              ),
            );
          },
        );
      },
    );
  }
}
