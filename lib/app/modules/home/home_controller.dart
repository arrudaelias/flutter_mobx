import 'package:flutter_app/app/modules/home/shared/models/user_model.dart';
import 'package:flutter_app/app/modules/home/shared/services/user_service.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {

  final UserService service = UserService();
  
  _HomeBase() {
    _init();
  }

  _init() async {
    final allList = await service.getAll();
    list.addAll(allList);
  }


  @observable
  int value = 0;

  @observable
  ObservableList<UserModel> list = ObservableList<UserModel>();

  @action
  void increment() {
    value++;
  }


}
