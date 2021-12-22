import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter_example/provider/produto_model.dart';
import 'package:provider_flutter_example/provider/produto_widget.dart';
import 'package:provider_flutter_example/provider/user_model.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var user = Provider.of<UserModel>(context);
    //retorna uma instância sem escutar alterações
    // var user = context.read<UserModel>();
    //ESCUTA AS ALTERAÇÕES
    var user = context.watch<UserModel>();
    //filtra a escolha do retorno sem pegar tudo
    var imageAvatar =
        context.select<UserModel, String>((value) => value.imgAvatar);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(imageAvatar),
                radius: 60,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(user.name),
                  Text('(${user.birthDate})'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Provider(create: (_)=>Produto(
                nome: 'Desenvolvimento e consultoria'
              ),child: ProdutoWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
