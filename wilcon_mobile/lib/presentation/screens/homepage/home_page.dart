import 'package:flutter/material.dart';
// import 'package:wilcon_mobile/presentation/widgets/button_class.dart';
import 'package:wilcon_mobile/presentation/widgets/custom_appbar.dart';
import 'package:wilcon_mobile/presentation/widgets/custom_drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.teal,
      appBar: const CustomAppBar(),
      endDrawer: const CustomDrawer(), // Use the custom AppBar
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              _headerUser(),
              const SizedBox(height: 24),
              _homePageBody(),
              const SizedBox(height: 24),
              _buttonContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerUser() {
    return Container(
      //color: Colors.blue,
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(right: 24.0),
            child: const CircleAvatar(
              radius: 20.0, // 40px diameter / 2 = 20px radius
              backgroundImage: AssetImage(
                  'assets/images/avatar.png'), // Replace with your image asset path
            ),
          ),
          const Text(
            'Welcome, Jhemmy!',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _homePageBody() {
    return SafeArea(
      child: Container(
        //color: Colors.blue, // Set the background color to blue
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 104,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Removes the rounded corners
                        ),
                        // Text color
                      ),
                      child: const Text('Button 1'),
                    ),
                  ),
                ),
                const SizedBox(
                    width: 10), // Adjust space between buttons if needed
                Expanded(
                  child: SizedBox(
                    height: 104,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Removes the rounded corners
                        ), // Text color
                      ),
                      child: const Text('Button 2'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 104,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Removes the rounded corners
                        ), // Text color
                      ),
                      child: const Text('Button 3'),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // Adjust space between buttons if needed
                Expanded(
                  child: SizedBox(
                    height: 104,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Removes the rounded corners
                        ), // Text color
                      ),
                      child: const Text('Button 4'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 100,
              child: SizedBox(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8), // Removes the rounded corners
                    ), // Text color
                  ),
                  child: const Text('Long Button'),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buttonContainer() {
    return SizedBox(
      width: double.infinity, // Set the width to match the drawer
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: const Color.fromRGBO(22, 110, 22, 1),
            side: const BorderSide(
              color: Color.fromRGBO(22, 110, 22, 1), // Border color
              width: 2.0, // Border width
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding:
                const EdgeInsets.symmetric(vertical: 16.0), // Button height
          ),
          onPressed: () {
            // Define the action for the button here
            debugPrint('Button pressed');
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }

  Widget _buttonBody() {
    return ElevatedButton(
      onPressed: () {
        debugPrint('Button Pressed');
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.thumb_up,
            size: 40,
            color: Colors.blue,
          ),
          SizedBox(height: 8),
          Text(
            'Like',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            'Tap to like',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
