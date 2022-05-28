import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kids_education/data/exceptions.dart';
import 'package:kids_education/data/model/animals.dart';
import 'package:kids_education/data/repositories/animal_repo.dart';

part 'animal_state.dart';
part 'animal_cubit.freezed.dart';

class AnimalCubit extends Cubit<AnimalState> {
  AnimalRepo animalRepo;
  AnimalCubit({required this.animalRepo}) : super(const InitialState());
 

 Future<void> getAnimalInfo() async {
    emit(const LoadingState());
    try {
      final List<Animals> animal = await animalRepo.getAnimalInfo();

      emit(LoadedState(animal: animal));
    } on ErrorException catch (_) {
      emit(ErrorState(message: _.message));
    }
  }
}
