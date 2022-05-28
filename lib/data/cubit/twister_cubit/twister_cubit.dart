import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kids_education/data/exceptions.dart';
import 'package:kids_education/data/model/twisters.dart';
import 'package:kids_education/data/repositories/twister_repo.dart';

part 'twister_state.dart';
part 'twister_cubit.freezed.dart';

class TwisterCubit extends Cubit<TwisterState> {
  TwisterRepo twisterRepo;

  TwisterCubit({required this.twisterRepo}) : super(const InitialState());

  Future<void> getTwister() async {
    emit(const LoadingState());
    try {
      final List<Twisters> twister = await twisterRepo.getTwister();

      emit(LoadedState(twisters: twister));
    } on ErrorException catch (_) {
      emit(ErrorState(message: _.message));
    }
  }
}
