import 'package:flutter/material.dart';

import 'blocs/image/image_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageBloc(),
      child: MaterialApp(
        home: BlocBuilder<ImageBloc, ImageState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                    'https://picsum.photos/seed/${state.seedNumber}/300/200'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Text('Previous'),
                      onPressed: () {
                        context.read<ImageBloc>().add(PreviousImageEvent());
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        context.read<ImageBloc>().add(NextImageEvent());
                      },
                      child: const Text('Next Image'),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
