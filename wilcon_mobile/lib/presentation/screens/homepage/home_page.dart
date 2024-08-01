import 'package:flutter/material.dart';
import 'package:wilcon_mobile/presentation/screens/checklistpage/checklist_page.dart';
import 'package:wilcon_mobile/presentation/screens/meterreadingspage/meterreadings_page.dart';
import 'package:wilcon_mobile/presentation/screens/scanqrcodepage/scanqrcode_page.dart';
import 'package:wilcon_mobile/presentation/screens/smartbuildingsolution/smartbuildingsolution_page.dart';
import 'package:wilcon_mobile/presentation/screens/workorderspage/workorders_page.dart';
import 'package:wilcon_mobile/presentation/widgets/button_widget.dart';
import 'package:wilcon_mobile/presentation/widgets/sidebar_widget.dart';
import 'package:wilcon_mobile/presentation/widgets/appbar_widget.dart';
import '../ticketlistpage/ticketlist_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  ButtonClass buttonClass = ButtonClass();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer:
            const CustomSidebar(), // Make sure this is not const if it is not a const constructor
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const CustomizedAppBar(),
                const SizedBox(height: 24),
                _headerUser(),
                const SizedBox(height: 24),
                _homePageBody(),

                //SizedBox(height: 24),
                //const SizedBox(height: 12),

                // Use Expanded to fill remaining space
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _headerUser() {
    return Container(
      // color: Colors.blue,
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
      child: SizedBox(
        //color: Colors.blue, // Set the background color to blue
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(height: 24),
            Row(
              children: [
                // _buttonBody(),
                Expanded(
                  child: SizedBox(
                    height: 104,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WorkOrdersPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Removes the rounded corners
                        ),
                        // Text color
                      ),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.work,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'My Work Orders',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Tap to like',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                    width: 10), // Adjust space between buttons if needed
                Expanded(
                  child: SizedBox(
                    height: 104,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TicketlistPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Removes the rounded corners
                        ), // Text color
                      ),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.folder,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'My PM Tickets',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Tap to like',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
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
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const SmartBuildingSolutionPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Removes the rounded corners
                        ), // Text color
                      ),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.collections_bookmark,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Smart Building Solution',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // Adjust space between buttons if needed
                Expanded(
                  child: SizedBox(
                    height: 104,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChecklistPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Removes the rounded corners
                        ), // Text color
                      ),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.check_box,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Checklist',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                        ],
                      ),
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
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WorkOrdersPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Removes the rounded corners
                        ), // Text color
                      ),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.work,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Work Orders',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                // Adjust space between buttons if needed
                Expanded(
                  child: SizedBox(
                    height: 104,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MeterReadingsPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Removes the rounded corners
                        ), // Text color
                      ),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.electric_meter_sharp,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Meter Readings',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Tap to like',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
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
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScanQRCodePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8), // Removes the rounded corners
                    ), // Text color
                  ),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.qr_code_2,
                        size: 25,
                        color: Colors.white,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Scan QR Code',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  // Widget _buttonContainer() {
  //   return SizedBox(
  //     width: double.infinity, // Set the width to match the drawer
  //     child: Padding(
  //       padding: const EdgeInsets.only(bottom: 24),
  //       child: ElevatedButton(
  //         style: ElevatedButton.styleFrom(
  //           foregroundColor: const Color.fromRGBO(22, 110, 22, 1),
  //           side: const BorderSide(
  //             color: Color.fromRGBO(22, 110, 22, 1), // Border color
  //             width: 2.0, // Border width
  //           ),
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(8.0),
  //           ),
  //           padding:
  //               const EdgeInsets.symmetric(vertical: 16.0), // Button height
  //         ),
  //         onPressed: () {
  //           // Define the action for the button here
  //           debugPrint('Button pressed');
  //         },
  //         child: const Text('Logout'),
  //       ),
  //     ),
  //   );
  // }
}
