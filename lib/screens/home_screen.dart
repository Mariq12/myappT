import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 1;
  final PageController pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* AppBar
      appBar: AppBar(
        title: Text('Hola Mari $currentPage'),
        elevation: 0,
      ),

      //? Cambiar la pantalla
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          CustomScreen(color: Colors.pink),
          CustomScreen(color: Colors.orange),
          CustomScreen(color: Color.fromARGB(255, 68, 255, 93)),
        ],
      ),

      //* Tabs
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          currentPage = index;
          pageController.animateToPage(index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut);
          setState(() {});
        },
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.red.withOpacity(0.5),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

class CustomScreen extends StatelessWidget {
  final Color color;

  const CustomScreen({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: const Center(
        child: Text('Cambiar page'),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return TextButton(
    onPressed: () => throw Exception(),
    child: const Text("Throw Test Exception"),
  );
}
