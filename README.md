# Image Bloc Tutorial

![screenshot](docs/assets/screenshot.gif)

[video tutorial](https://youtu.be/-vD_kZLiRuA)

## Previous Tutorials

[Flutter BLoC Simple Introduction - Event, State, BLoC](https://youtu.be/drkvsBh2ru8)

## Drill

For repitition.

### Create new project for Bloc

1. New Project: create new project, add flutter_bloc, equatable
1. delete all code below runApp, create new StatefulWidget with MaterialApp
1. put Column in MaterialApp. 
    1. Top of Column is random image from https://picsum.photos/
    1. bottom of column is a row with previous and next buttons
1. create template bloc files:  event, state, bloc files using extension in blocs/image/
1. BlocProvider: wrap MaterialApp 
1. BlocBuilder: wrap Column

### Configure  State 

1. delete code in `image_state.dart` file. 
1. create new ImageState class that extends Equatable.  
1. Create final int seedNumber. 
1. contructor - change to required
1. equatable
1. toString
1. copyWith
1. factory constructor - ImageState.initial return 10

### Configure Event and Bloc

1. event: add ChangeColorEvent
1. bloc: 
    1. ColorState.initial()
    1. ChangeColorEvent - emit ColorState amber