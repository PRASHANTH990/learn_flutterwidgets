import 'package:flutter/material.dart';
import 'package:try_widgets_1/UIs/pages/AlertDialog_try.dart';
import 'package:try_widgets_1/UIs/pages/HeroAnimation_try.dart';
import 'package:try_widgets_1/UIs/pages/Homepage.dart';
import 'package:try_widgets_1/UIs/pages/ListTile_try.dart';
import 'package:try_widgets_1/UIs/pages/allbutton_try.dart';
import 'package:try_widgets_1/UIs/pages/async/Futurebuilder_try.dart';
import 'package:try_widgets_1/UIs/pages/async/SteamBuilder_try.dart';
import 'package:try_widgets_1/UIs/pages/bloc/Bloc_try.dart';
import 'package:try_widgets_1/UIs/pages/cubit/Cubit_try.dart';
import 'package:try_widgets_1/UIs/pages/bottomNavigationBar_try.dart';
import 'package:try_widgets_1/UIs/pages/demo_pages/pagefour.dart';
import 'package:try_widgets_1/UIs/pages/demo_pages/pageone.dart';
import 'package:try_widgets_1/UIs/pages/demo_pages/pagethree.dart';
import 'package:try_widgets_1/UIs/pages/demo_pages/pagetwo.dart';
import 'package:try_widgets_1/UIs/pages/card_try.dart';
import 'package:try_widgets_1/UIs/pages/https/http_try.dart';
import 'package:try_widgets_1/UIs/pages/layoutBuilder_try.dart';
import 'package:try_widgets_1/UIs/pages/layoutwidgets_pages/Layouts_try.dart';
import 'package:try_widgets_1/UIs/pages/listView_builder_try.dart';
import 'package:try_widgets_1/UIs/pages/mediaquery_try.dart';
import 'package:try_widgets_1/UIs/pages/navigations_try.dart';
import 'package:try_widgets_1/UIs/pages/positional_widgets_try.dart';
import 'package:try_widgets_1/UIs/pages/scrollItems_try.dart';
import 'package:try_widgets_1/UIs/pages/showmodalbottomsheeet_try.dart';
import 'package:try_widgets_1/UIs/pages/sliverWidgets_try.dart';
import 'package:try_widgets_1/UIs/pages/snackbar_try.dart';
import 'package:try_widgets_1/UIs/pages/stepper_try.dart';
import 'package:try_widgets_1/UIs/pages/tabs_try.dart';
import 'package:try_widgets_1/myTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      //   useMaterial3: true,
      // ),
      // theme: AppTheme.lightThemeM2,
      theme: AppTheme.lightThemeM3,
      darkTheme: AppTheme.darkThemeM3,
      home: const MyHomePage(title: 'Flutter Widgets'),
      locale: const Locale('en'),
      routes: {
        // test pages--------------------------------------------------
        '/pageone': (context) => const PageOne(),
        '/pagetwo': (context) => const PageTwo(),
        '/pagethree': (context) => const PageThree(),
        '/pagefour': (context) => const PageFour(),
        // common widgets--------------------------------------------------
        '/allbuttons': (context) => const ElevatedButtonTry(),
        '/ListTiles': (context) => const ListTileTry(),
        '/Cards': (context) => const CardTry(),
        '/positionalwidgets': (context) => const PositionalWidgetsTry(),
        '/singlescrollview': (context) => const ScrollItemsTry(),
        // builders--------------------------------------------------
        '/layoutbuilder': (context) => const LayoutBuilderTry(),
        '/listviewbuilder': (context) => const ListViewBuilderTry(),
        // navigations--------------------------------------------------
        '/bottomnavigationbar': (context) => const BottomNavigationBarTry(),
        '/navigations': (context) => const NavigationsTry(),
        '/tabs': (context) => const TabsTry(),
        // Popup Modals--------------------------------------------------
        '/showmodalbottomsheet': (context) => const ShowModalBottomSheetTry(),
        '/alertdialog': (context) => const AlertDialogTry(),
        '/snackbar': (context) => const SnackBarTry(),
        // MediaQuery--------------------------------------------------
        '/mediaquery': (context) => const MediaqueryTry(),
        // Animation--------------------------------------------------
        '/heroanimation': (context) => const HeroAnimationTry(),
        // slivers--------------------------------------------------
        '/slivers': (context) => const SliverWidgets(),
        // layouts--------------------------------------------------
        '/layouts': (context) => const LayoutTry(),
        // stepper--------------------------------------------------
        '/stepper': (context) => const StepperTry(),
        // async--------------------------------------------------
        '/streamBuilder': (context) => const StreamBuilderTry(),
        '/futureBuilder': (context) => const FutureBuilderTry(),
        // http--------------------------------------------------
        '/http': (context) => const HttpTry(),
        // BLoC--------------------------------------------------
        '/bloctry': (context) => const BlocTry(),
        // Cubit--------------------------------------------------
        '/cubittry': (context) => const CubitTry(),
      },
    );
  }
}
