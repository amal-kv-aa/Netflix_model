import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netfix/domain/core/failures/main_failures.dart';
import 'package:netfix/domain/downloads/i_downloads_repo.dart';
import 'package:netfix/domain/downloads/models/downloads.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';
@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<_getDownloadsImages>((event, emit) async{
   
      emit(state.copyWith(
          isLoading: true,
           downloadsFailureOrSuccessOption: const None()
          )
          );
      final Either<Mainfailures,List<Downloads>> downloadOption =
   await _downloadsRepo.getDownloadsImages();
   emit(downloadOption.fold(
    (failure)=>
    state.copyWith(isLoading:false,
    downloadsFailureOrSuccessOption: some(left(failure))),
    (success) => 
    state.copyWith(isLoading: false,
    downloadsFailureOrSuccessOption: some(right(success)),
    downloads: success,
    )));
    });  
  }
}
