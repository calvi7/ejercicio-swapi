import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intento_ejercicio1/src/cubit/theme_cubit.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ListTile(
            title: Text('Cambiar el tema'),
            leading: Icon(Icons.lightbulb_outline),
            trailing: _Switch(),
          )
        ],
      ),
    );
  }
}

class _Switch extends StatelessWidget {
  const _Switch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeCubit = BlocProvider.of<ThemeCubit>(context);

    return Switch(
      value: themeCubit.state.value,
      onChanged: (passedValue) {
        themeCubit.switchTheme();
      },
    );
  }
}
