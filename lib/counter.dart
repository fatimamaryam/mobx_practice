import 'package:mobx/mobx.dart';

//--------------this is all for one type action and reaction-------------

//
// class Counter {
//
//   Observable counter = Observable(0);
//
//   Action increment;
//
//   Counter() {
//     increment = Action(() {
//       counter = counter.value++;
//     });
//   }
//
//
// }

part 'counter.g.dart';

class CounterStore = Counter with _$CounterStore;

abstract class Counter with Store {
//--------if you have lots of things in Store fo action and reaction------------------

  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }
}
