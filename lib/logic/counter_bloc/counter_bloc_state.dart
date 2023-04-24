part of 'counter_bloc_bloc.dart';

class CounterBlocState {
  int counterValue;
  CounterBlocState({required this.counterValue});
}

class CounterBlocInitial extends CounterBlocState {
  CounterBlocInitial({super.counterValue = 0});
}
