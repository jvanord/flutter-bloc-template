import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/theme/style.dart';
import 'package:flutter_bloc_template/routes.dart';
import 'package:flutter_bloc_template/bloc/bloc-prov-tree.dart';
import 'package:flutter_bloc_template/bloc/bloc-prov.dart';
import 'package:flutter_bloc_template/blocs/blocs.dart';
import 'blocs/blocs.dart';

void main() {
  runApp(ExampleApp());
}
class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
      blocProviders: <BlocProvider>[
        BlocProvider<AuthBloc>(bloc: AuthBloc()),
        BlocProvider<PrefBloc>(bloc: PrefBloc()),
      ],
      child: MaterialApp(
        title: 'ExampleApp',
        theme: appTheme(),
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}