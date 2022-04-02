import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/characters_cubit.dart';
import 'character_card.dart';

import 'package:intento_ejercicio1/src/resources/resources.dart';

import 'characters_error_view.dart';
import 'characters_loaded_view.dart';
import 'characters_loading_view.dart';

class CharactersStateView extends StatelessWidget {
  CharactersStateView({Key? key}) : super(key: key);

  final Strings strings = Strings();

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CharactersCubit>(context).fetchList();
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        // Is it waiting initial Api Fetch?
        return (state is CharactersLoading)
            ? const CharactersLoadingView()
            : (state is CharactersLoaded)
                ? CharactersLoadedView(
                    characters: state.characters,
                  )
                : (state is CharactersError)
                    ? const CharactersErrorView()
                    : Container();
      },
    );
  }
}
