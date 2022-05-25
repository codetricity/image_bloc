import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'image_event.dart';
part 'image_state.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  ImageBloc() : super(ImageState.initial()) {
    on<NextImageEvent>((event, emit) {
      emit(ImageState(seedNumber: state.seedNumber + 1));
    });
    on<PreviousImageEvent>(
      (event, emit) => emit(ImageState(seedNumber: state.seedNumber - 1)),
    );
  }
}
