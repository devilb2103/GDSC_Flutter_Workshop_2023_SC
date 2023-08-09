part of 'counter_cubit.dart';

abstract class CounterState {
  const CounterState();
}

class CounterUpdatingState extends CounterState {
  const CounterUpdatingState();
}

class CounterInitialState extends CounterState {
  const CounterInitialState();
}
