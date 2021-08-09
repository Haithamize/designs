import 'package:designs/layout/cubit/layout_cubit.dart';
import 'package:designs/layout/cubit/layout_states.dart';
import 'package:designs/layout/zumra_layout_screen.dart';
import 'package:designs/modules/delivery_info/delivery_info_screen.dart';
import 'package:designs/modules/login/login_screen.dart';
import 'package:designs/modules/mobile_otp/mobile_otp_screen.dart';
import 'package:designs/modules/my_basket/my_basket_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'modules/alert_dialogs/order_confirmed.dart';
import 'modules/alert_dialogs/simple_alert_dialogs.dart';
import 'modules/categories/categories_screen.dart';
import 'modules/categories/sub_categories/sub_categories_other_screen.dart';
import 'modules/categories/sub_categories/sub_categories_screen.dart';
import 'modules/choose_payment_method/choose_payment_method_screen.dart';
import 'modules/invoice/invoice_screen.dart';
import 'modules/payment_with_credit_card/credit_card_payment_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ZumraLayoutCubit()),
      ],
      child: BlocConsumer<ZumraLayoutCubit, ZumraLayoutStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: ZumraLayout(),
          );
        },
      ),
    );
  }
}
