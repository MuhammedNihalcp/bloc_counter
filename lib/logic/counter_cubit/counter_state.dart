part of 'counter_cubit.dart';

class CounterState {
  int counterValue;
  CounterState({
    required this.counterValue,
  });
}

class CounterInitial extends CounterState {
  CounterInitial() : super(counterValue: 0);
}
