import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_bloc_event.dart';
part 'counter_bloc_state.dart';

class CounterBlocBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  CounterBlocBloc() : super(CounterBlocInitial()) {
    on<CounterBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
