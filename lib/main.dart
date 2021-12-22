import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter_example/change_notifier/change_notifier_page.dart';
import 'package:provider_flutter_example/change_notifier/provider_controller.dart';
import 'package:provider_flutter_example/provider/provider_page.dart';
import 'package:provider_flutter_example/provider/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        /// simple object
        Provider(
          create: (_) {
            return UserModel(
              name: 'Enzo Lopes',
              imgAvatar: 'https://i.imgur.com/k0AYd9D.jpg',
              birthDate: '27/05/1999',
            );
          },
        ),
        ChangeNotifierProvider(
          create: (_) => ProviderController(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/provider': (_) => ProviderPage(),
          '/change_notifier': (_) => ChangeNotifierPage()
        },
        home: Builder(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/provider');
                      },
                      child: Text(
                        'Provider',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/change_notifier');
                      },
                      child: Text(
                        'Change Notifier',
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
