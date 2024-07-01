part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class IncrementCounterEvent extends CounterEvent {}

class ResetCounterEvent extends CounterEvent {}

class DecrementCounterEvent extends CounterEvent {}
