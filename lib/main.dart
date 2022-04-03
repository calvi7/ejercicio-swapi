import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:intento_ejercicio1/src/cubit/theme_cubit.dart';
import 'package:intento_ejercicio1/src/data/models/character_model.dart';
import 'package:intento_ejercicio1/src/data/network_service.dart';
import 'package:intento_ejercicio1/src/data/repository.dart';
import 'package:intento_ejercicio1/src/presentation/home_page/cubit/characters_cubit.dart';
import 'package:intento_ejercicio1/src/resources/themes.dart';
import 'package:intento_ejercicio1/src/resources/strings.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final NetworkService networkService = NetworkService();
  final Repository repository = Repository(networkService: networkService);

  // esperamos que inicie hive y luego registramos nuestro adaptador
  await Hive.initFlutter();
  Hive.registerAdapter<Character>(CharacterAdapter());

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider<CharactersCubit>(
          create: ((context) => CharactersCubit(repository: repository)),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
