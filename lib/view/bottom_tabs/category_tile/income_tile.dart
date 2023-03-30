import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/controller/provider.dart';

class IncomeTile extends StatelessWidget {
  const IncomeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Tabs>(
      builder: (context, state, child) {
        return ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: state.elemets.length,
          itemBuilder: (ctx, index) {
            return Visibility(
              visible: state.elemets[state.elemets.length - index - 1][2] == 0,
              child: ListTile(
                title: Text(
                  state.elemets[state.elemets.length - index - 1][0],
                  textScaleFactor: 1.2,
                ),
                trailing: Text(
                  '+${state.elemets[state.elemets.length - index - 1][1]}',
                  textScaleFactor: 1.2,
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
