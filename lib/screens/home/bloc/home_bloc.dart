import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shik_poush/data/models/home.dart';
import 'package:shik_poush/data/services/home.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeServices _homeServices;
  HomeBloc(this._homeServices) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
      if (event is HomeInitial) {
        emit(LodingState());
        try {
          var res = await _homeServices.getGneralInfo();
          emit(SuccessState(res));
        } catch (e) {

          emit(ErrorState("خطای ناشناس"));
        }
      }

    
    });
  }
}
