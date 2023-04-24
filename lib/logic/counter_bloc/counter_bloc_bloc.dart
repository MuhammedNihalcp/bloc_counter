import 'package:bloc/bloc.dart';
import 'package:bloc_counter/logic/counter_cubit/counter_cubit.dart';
import 'package:meta/meta.dart';

part 'counter_bloc_event.dart';
part 'counter_bloc_state.dart';

class CounterBlocBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  CounterBlocBloc() : super(CounterBlocInitial()) {
    // on<CounterBlocEvent>((event, emit) {
    //   if (event is Increment) {
    //     emit(CounterBlocState(counterValue: state.counterValue + 1));
    //   }
    //   if (event is Decrement) {
    //     emit(CounterBlocState(counterValue: state.counterValue - 1));
    //   }
    // });
    on<Increment>(
      (event, emit) => emit(
        CounterBlocState(counterValue: state.counterValue + 1),
      ),
    );
    on<Decrement>(
      (event, emit) => emit(
        CounterBlocState(counterValue: state.counterValue - 1),
      ),
    );
  }
}
