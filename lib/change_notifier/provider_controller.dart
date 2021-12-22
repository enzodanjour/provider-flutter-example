
import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier{
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
}