import 'package:flutter_modular/flutter_modular.dart';
import 'package:help_enem/modules/intro/intro_screen.dart';

class IntroModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router('/intro', child: (_, args) => IntroScreen()),
      ];
}
