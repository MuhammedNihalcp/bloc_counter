part of 'counter_bloc_bloc.dart';

@immutable
abstract class CounterBlocEvent {}

class Increment extends CounterBlocEvent {}

class Decrement extends CounterBlocEvent {}
