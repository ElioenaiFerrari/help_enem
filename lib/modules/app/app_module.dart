import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:help_enem/modules/app/app_widget.dart';
import 'package:help_enem/modules/intro/intro_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router("/intro", module: IntroModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
