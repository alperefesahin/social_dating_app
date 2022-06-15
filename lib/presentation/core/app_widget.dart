import 'dart:io';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:social_dating_app/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();
    final botToastBuilder = BotToastInit();
    final BotToastNavigatorObserver botToastNavigatorObserver = BotToastNavigatorObserver();

    return Listener(
      onPointerUp: (_) {
        if (Platform.isIOS) {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus!.unfocus();
          }
        }
      },
      child: MaterialApp.router(
        title: 'Social Dating App',
        debugShowCheckedModeBanner: false,
        routeInformationParser: appRouter.defaultRouteParser(),
        routerDelegate: appRouter.delegate(
          navigatorObservers: () => [
            botToastNavigatorObserver,
          ],
        ),
        builder: (context, child) {
          return botToastBuilder(context, child);
        },
      ),
    );
  }
}
