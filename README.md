# quizz

A new Flutter project.

# To use the provider package

- Setup the **ChangeNotifier** class by extending **ChangeNotifier**, this holds the state data and methods to modify the state.
- To use setState inside a **ChangeNotifier**, define it within the class as <br/>
  <code>
  void setState(VoidCallback callback) {
  callback(); <br>
  notifyListeners(); <br>
  }
  </code>
- Setup the **ChangeNofitierProvider** to enable state for the screen needed.
- It is possible to Consume the state data in the **ChangeNotifierProvider** using **Consumer**
- Consume it like so:
  <code> <br>
  Consumer<StartPageProvider>( <br>
  &nbsp; builder: (context, provider, child) { <br>
  &nbsp; return gameTitle(
  deviceHeight, deviceWidth, provider.difficulty);
  <br> },)
  </code>
