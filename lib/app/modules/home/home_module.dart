import 'package:flutter_app/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_app/app/modules/home/home_controller.dart';
import 'package:flutter_app/app/modules/home/shared/services/user_service.dart';
import 'package:flutter_app/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
