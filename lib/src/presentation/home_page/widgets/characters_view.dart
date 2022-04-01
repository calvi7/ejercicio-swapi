import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/characters_cubit.dart';
import 'character_card.dart';

import 'package:intento_ejercicio1/src/resources/resources.dart';

class CharactersView extends StatelessWidget {
  CharactersView({Key? key}) : super(key: key);

  final Strings strings = Strings();

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CharactersCubit>(context).fetchList();
    return BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
      // Is it waiting initial Api Fetch?
      return (state is CharactersLoading)
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : (state is CharactersLoaded)
              ? Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: EdgeInsets.zero,
                  color: Colors.indigoAccent,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemCount: state.characters.length,
                    itemBuilder: (context, index) {
                      return CharacterCard(
                        character: state.characters[index],
                      );
                    },
                  ),
                )
              : (state is CharactersError)
                  ? Column(
                      children: const [Text(Strings.error)],
                    )
                  : Container();
    });
  }
}
