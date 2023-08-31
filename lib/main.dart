import 'package:finalamitproject/chat/chat_page.dart';
import 'package:finalamitproject/cubit/main_cubit.dart';
import 'package:finalamitproject/repro/dio_helper.dart';
import 'package:finalamitproject/ui/Appliedjob_typework.dart';
import 'package:finalamitproject/ui/Jobdetails_descr.dart';
import 'package:finalamitproject/ui/Messageshomescreen.dart';
import 'package:finalamitproject/ui/Uploadportfolio.dart';
import 'package:finalamitproject/ui/appliedscreen.dart';
import 'package:finalamitproject/ui/applyjob_biodata.dart';
import 'package:finalamitproject/ui/complete_profile.dart';

import 'package:finalamitproject/ui/create%20account/createacc.dart';
import 'package:finalamitproject/ui/forgot_password_ver_comp.dart';
import 'package:finalamitproject/ui/homscreen.dart';
import 'package:finalamitproject/ui/intersted_work.dart';
import 'package:finalamitproject/ui/jobdetails_Company.dart';
import 'package:finalamitproject/ui/jobdetails_people.dart';
import 'package:finalamitproject/ui/language.dart';
import 'package:finalamitproject/ui/layout.dart';
import 'package:finalamitproject/ui/login.dart';
import 'package:finalamitproject/ui/notification_setting.dart';
import 'package:finalamitproject/ui/notificationscreen.dart';
import 'package:finalamitproject/ui/onboarding1.dart';
import 'package:finalamitproject/ui/onboarding2.dart';
import 'package:finalamitproject/ui/onboarding3.dart';
import 'package:finalamitproject/ui/profile_completed.dart';
import 'package:finalamitproject/ui/savedjob.dart';
import 'package:finalamitproject/ui/search.dart';
import 'package:finalamitproject/ui/searchresult.dart';
import 'package:finalamitproject/ui/show_notfound_result.dart';
import 'package:finalamitproject/ui/two_step_vervication_settings.dart';
import 'package:finalamitproject/ui/work_location.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'ui/changepassword .dart';
import 'widgets/chat_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: true),
          home: onbording1()),
    );
  }
}
