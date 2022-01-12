import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/events/setting_events.dart';
import 'package:weather_app/state/setting_state.dart';


class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  //initial State
  SettingsBloc():super(SettingsState(temperatureUnit: TemperatureUnit.celsius));
  @override
  Stream<SettingsState> mapEventToState(SettingsEvent settingsEvent) async* {
    if(settingsEvent is SettingsEventToggleUnit) {
      //state = "settings state"
      final newSettingsState = SettingsState(
          temperatureUnit: state.temperatureUnit == TemperatureUnit.celsius ?
          TemperatureUnit.fahrenheit : TemperatureUnit.celsius
      );
      yield newSettingsState;
    }
  }
}