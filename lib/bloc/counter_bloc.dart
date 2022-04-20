import 'package:bloc/bloc.dart';

part 'counter_state.dart';

abstract class CounterEvent{}
class Increment extends CounterEvent{}
class Decrement extends CounterEvent{}

class BlocCounter extends Bloc<CounterEvent, CounterState> {
  BlocCounter() : super(CounterState(counterValue: 0)){
    on<Increment>((event, emit) => emit(CounterState(counterValue: state.counterValue + 1)));
    on<Decrement>((event, emit) => emit(CounterState(counterValue: state.counterValue - 1)));
  }

}