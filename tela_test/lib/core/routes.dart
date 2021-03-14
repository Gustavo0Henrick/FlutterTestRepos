import 'package:tela_test/screens/cadastro.dart';
import 'package:tela_test/screens/homepage.dart';

abstract class AppRoutes {
  static get cadastro => Cadastro();
  static get login => HomePage();
}
