
import 'package:flutter/foundation.dart';

class ProviderController extends ChangeNotifier with DiagnosticableTreeMixin{
  String name = 'Nome';
  String imgAvatar = 'https://i.imgur.com/k0AYd9D.jpg';
  String birthDate='data';

  void alterarDados(){
    name = 'Enzo Lopes';
    birthDate='27/05/1999';
    notifyListeners();
  }

  void alterarNome(){
    name = 'Enzo Danjour';
    notifyListeners();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    // list all the properties of your class here.
    // See the documentation of debugFillProperties for more information.
    properties.add(StringProperty('name', name));
    properties.add(StringProperty('imgAvatar', imgAvatar));
    properties.add(StringProperty('birthDate', birthDate));
  }
}