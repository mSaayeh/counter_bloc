import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      if (event is IncrementCounterEvent) {
        emit(CounterValueChanged(counter: ++counter));
      } else if (event is DecrementCounterEvent) {
        emit(CounterValueChanged(counter: --counter));
      } else if (event is ResetCounterEvent) {
        counter = 0;
        emit(CounterInitial());
      }
    });
  }
}
