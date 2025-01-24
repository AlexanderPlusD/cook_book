import 'package:flutter/material.dart';
import 'package:namer_app/screens/animation/AnimationScreen.dart';
import 'package:namer_app/screens/effects/EffecScreen.dart';
import 'package:namer_app/screens/networking/NetworkingScreen.dart';
import 'package:namer_app/screens/persistence/persistence_screen.dart';
import '../Design/DesignScreen.dart';
import '../form/formScreen.dart';
import '../images/ImagesScreen.dart';
import '../list/ListScreen.dart';
import '../Navigation/NavigationScreen.dart';
import '../App/FirstAppScreen.dart'; // Importa la nueva actividad

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            // Fondo con diseño dinámico
            Positioned(
              top: -50,
              right: -50,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              bottom: -100,
              left: -50,
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  shape: BoxShape.circle,
                ),
              ),
            ),

            // Contenido principal
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Flutter Cookbook',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Your guide to building amazing apps.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),

                // Secciones
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                      ),
                      itemCount: _sections.length,
                      itemBuilder: (context, index) {
                        final section = _sections[index];
                        return GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => section.screen),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius: BorderRadius.circular(16.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  blurRadius: 10.0,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(section.icon, size: 48, color: Colors.white),
                                const SizedBox(height: 12),
                                Text(
                                  section.title,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Section {
  final String title;
  final IconData icon;
  final Widget screen;

  Section({
    required this.title,
    required this.icon,
    required this.screen,
  });
}

final List<Section> _sections = [
  Section(
    title: 'Design',
    icon: Icons.design_services,
    screen: const DesignScreen(),
  ),
  Section(
    title: 'Forms',
    icon: Icons.text_fields,
    screen: const FormsScreen(),
  ),
  Section(
    title: 'Images',
    icon: Icons.image,
    screen: const ImagesScreen(),
  ),
  Section(
    title: 'Lists',
    icon: Icons.list,
    screen: const ListsScreen(),
  ),
  Section(
    title: 'Navigation',
    icon: Icons.navigation,
    screen: const NavigationScreen(),
  ),
  Section(
    title: 'First App',
    icon: Icons.create,
    screen: const MyApp(),
  ),
  Section(
    title: 'Persistence',
    icon: Icons.storage,
    screen: const PersistenceScreen(),
  ),
  Section(
    title: 'Networking',
    icon: Icons.network_check,
    screen: const NetworkingScreen(),
  ),
  Section(
    title: 'Effects',
    icon: Icons.accessible_forward_sharp,
    screen: const EffectsScreen(),
  ),
  Section(
    title: 'Animations',
    icon: Icons.countertops_outlined,
    screen: const AnimationScreen(),
  ),
];
