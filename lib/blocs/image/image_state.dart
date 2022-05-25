// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'image_bloc.dart';

class ImageState extends Equatable {
  final int seedNumber;
  const ImageState({
    required this.seedNumber,
  });

  @override
  List<Object> get props => [seedNumber];

  factory ImageState.initial() => const ImageState(seedNumber: 10);

  ImageState copyWith({
    int? seedNumber,
  }) {
    return ImageState(
      seedNumber: seedNumber ?? this.seedNumber,
    );
  }

  @override
  bool get stringify => true;
}
