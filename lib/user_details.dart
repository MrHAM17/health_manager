//   Way 1 ........................................................................................

// import 'package:flutter/material.dart';
//
// class UserDetailsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlue[50],
//       // appBar: AppBar(
//       //   title: Text('User Details'),
//       // ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               'Enter Your Details',
//               style: TextStyle(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20.0),
//             UserDetailsField(label: 'Weight (kg)'),
//             SizedBox(height: 20.0),
//             UserDetailsField(label: 'Height (cm)'),
//             SizedBox(height: 20.0),
//             UserDetailsField(label: 'Age'),
//             SizedBox(height: 20.0),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Handle saving user details
//                 },
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
//                   primary: Colors.blue,
//                 ),
//                 child: Text(
//                   'Save Details',
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class UserDetailsField extends StatelessWidget {
//   final String label;
//
//   UserDetailsField({required this.label});
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       decoration: InputDecoration(
//         labelText: label,
//         border: OutlineInputBorder(),
//       ),
//       keyboardType: label == 'Age' ? TextInputType.number : TextInputType.numberWithOptions(decimal: true),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: UserDetailsPage(),
//   ));
// }




//   Way 2 ........................................................................................






//
// import 'package:flutter/material.dart';
//
// class UserDetailsPage extends StatefulWidget {
//   @override
//   _UserDetailsPageState createState() => _UserDetailsPageState();
// }
//
// class _UserDetailsPageState extends State<UserDetailsPage> {
//   String? _selectedMedicalHistory;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlue[50],
//       appBar: AppBar(
//         title: Text('User Details'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               'Enter Your Details',
//               style: TextStyle(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20.0),
//             UserDetailsField(label: 'Weight (kg)'),
//             SizedBox(height: 20.0),
//             UserDetailsField(label: 'Height (cm)'),
//             SizedBox(height: 20.0),
//             UserDetailsField(label: 'Age'),
//             SizedBox(height: 20.0),
//             Text(
//               'Medical History',
//               style: TextStyle(
//                 fontSize: 18.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 10.0),
//             DropdownButtonFormField<String>(
//               value: _selectedMedicalHistory,
//               items: ['None', 'Diabetes', 'Hypertension', 'Asthma', 'Other']
//                   .map((history) {
//                 return DropdownMenuItem<String>(
//                   value: history,
//                   child: Text(history),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 setState(() {
//                   _selectedMedicalHistory = value;
//                 });
//               },
//               decoration: InputDecoration(
//                 labelText: 'Select Medical History',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 20.0),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Handle saving user details
//                 },
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
//                   primary: Colors.blue,
//                 ),
//                 child: Text(
//                   'Save Details',
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class UserDetailsField extends StatelessWidget {
//   final String label;
//
//   UserDetailsField({required this.label});
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       decoration: InputDecoration(
//         labelText: label,
//         border: OutlineInputBorder(),
//       ),
//       keyboardType: TextInputType.number,
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: UserDetailsPage(),
//   ));
// }







//   Way 3 ........................................................................................




//
// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
//
//
// class UserDetailsPage extends StatefulWidget {
//   @override
//   _UserDetailsPageState createState() => _UserDetailsPageState();
// }
//
// class _UserDetailsPageState extends State<UserDetailsPage> {
//   PageController _pageController = PageController(initialPage: 0);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         controller: _pageController,
//         children: [
//           UserDetailsScreen(),
//           MedicalHistoryScreen(),
//         ],
//       ),
//     );
//   }
// }
//
// class UserDetailsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User Details'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               'Enter Your Details',
//               style: TextStyle(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20.0),
//             UserDetailsField(label: 'Weight (kg)'),
//             SizedBox(height: 20.0),
//             UserDetailsField(label: 'Height (cm)'),
//             SizedBox(height: 20.0),
//             UserDetailsField(label: 'Age'),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to the next screen (Medical History)
//                 Navigator.of(context).push(MaterialPageRoute(builder: (_) => MedicalHistoryScreen()));
//               },
//               child: Text('Next'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class MedicalHistoryScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Medical History'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               'Medical History',
//               style: TextStyle(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20.0),
//             DropdownButtonFormField<String>(
//               items: ['None', 'Diabetes', 'Hypertension', 'Asthma', 'Other']
//                   .map((history) {
//                 return DropdownMenuItem<String>(
//                   value: history,
//                   child: Text(history),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 // Handle medical history selection
//               },
//               decoration: InputDecoration(
//                 labelText: 'Select Medical History',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: () {
//                 // Handle saving user details and navigate back to the previous screen (User Details)
//                 Navigator.of(context).pop();
//               },
//               child: Text('Save Details'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class UserDetailsField extends StatelessWidget {
//   final String label;
//
//   UserDetailsField({required this.label});
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       decoration: InputDecoration(
//         labelText: label,
//         border: OutlineInputBorder(),
//       ),
//       keyboardType: TextInputType.number,
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: UserDetailsPage(),
//   ));
// }





//   Way 4.1  ........................................................................................
//
//
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(
//       primaryColor: Colors.lightBlue, // Set primary color to light blue
//     ),
//     home: UserDetailsPage(),
//   ));
// }
//
// class UserDetailsPage extends StatefulWidget {
//   @override
//   _UserDetailsPageState createState() => _UserDetailsPageState();
// }
//
// class _UserDetailsPageState extends State<UserDetailsPage> {
//   PageController _pageController = PageController(initialPage: 0);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User Details'),
//       ),
//       body: PageView(
//         controller: _pageController,
//         children: [
//           UserDetailsScreen(),
//           MedicalHistoryScreen(),
//         ],
//       ),
//     );
//   }
// }
//
// class UserDetailsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               'Enter Your Details',
//               style: TextStyle(
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20.0),
//             UserDetailsField(label: 'Weight (kg)'),
//             SizedBox(height: 20.0),
//             UserDetailsField(label: 'Height (cm)'),
//             SizedBox(height: 20.0),
//             UserDetailsField(label: 'Age'),
//             SizedBox(height: 40.0),
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to the next screen (Medical History)
//                 Navigator.of(context).push(MaterialPageRoute(builder: (_) => MedicalHistoryScreen()));
//               },
//               style: ElevatedButton.styleFrom(
//                 padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
//               ),
//               child: Text('Next', style: TextStyle(fontSize: 18.0)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class MedicalHistoryScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Medical History'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text(
//                 'Medical History',
//                 style: TextStyle(
//                   fontSize: 24.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 20.0),
//               DropdownButtonFormField<String>(
//                 items: ['None', 'Diabetes', 'Hypertension', 'Asthma', 'Other']
//                     .map((history) {
//                   return DropdownMenuItem<String>(
//                     value: history,
//                     child: Text(history),
//                   );
//                 }).toList(),
//                 onChanged: (value) {
//                   // Handle medical history selection
//                 },
//                 decoration: InputDecoration(
//                   labelText: 'Select Medical History',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 40.0),
//               ElevatedButton(
//                 onPressed: () {
//                   // Handle saving user details and navigate back to the previous screen (User Details)
//                   Navigator.of(context).pop();
//                 },
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
//                 ),
//                 child: Text('Save Details', style: TextStyle(fontSize: 18.0)),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class UserDetailsField extends StatelessWidget {
//   final String label;
//
//   UserDetailsField({required this.label});
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       decoration: InputDecoration(
//         labelText: label,
//         border: OutlineInputBorder(),
//       ),
//       keyboardType: TextInputType.number,
//     );
//   }
// }



//   Way 4.2  ........................................................................................



import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.lightBlue, // Set primary color to light blue
    ),
    home: UserDetailsPage(),
  ));
}

class UserDetailsPage extends StatefulWidget {
  @override
  _UserDetailsPageState createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('User Details'),
      // ),
      body: PageView(
        controller: _pageController,
        children: [
          UserDetailsScreen(),
          MedicalHistoryScreen(),
        ],
      ),
    );
  }
}

class UserDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Enter Your Details',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            UserDetailsField(label: 'Weight (kg)'),
            SizedBox(height: 20.0),
            UserDetailsField(label: 'Height (cm)'),
            SizedBox(height: 20.0),
            UserDetailsField(label: 'Age'),
            SizedBox(height: 40.0),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the next screen (Medical History)
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => MedicalHistoryScreen()));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                ),
                child: Text('Next', style: TextStyle(fontSize: 18.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MedicalHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical History'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Medical History',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              DropdownButtonFormField<String>(
                items: ['Diabetes', 'Hypertension', 'Asthma', 'Other']
                    .map((history) {
                  return DropdownMenuItem<String>(
                    value: history,
                    child: Text(history),
                  );
                }).toList(),
                onChanged: (value) {
                  // Handle medical history selection
                },
                decoration: InputDecoration(
                  labelText: 'Select Medical History',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40.0),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle saving user details and navigate back to the previous screen (User Details)

                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                  ),
                  child: Text('Save Details', style: TextStyle(fontSize: 18.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserDetailsField extends StatelessWidget {
  final String label;

  UserDetailsField({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    );
  }
}
