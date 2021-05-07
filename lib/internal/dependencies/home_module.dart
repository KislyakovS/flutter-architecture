import 'package:flutter_architecture/domain/state/home_state.dart';
import 'package:flutter_architecture/internal/dependencies/repository_module.dart';

class HomeModule {
  static HomeState homeState() {
    return HomeState(
      RepositoryModule.dayRepository(),
    );
  }
}
