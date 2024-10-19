// import 'package:flutter/material.dart';
// import 'api_service.dart';

// class AssessmentScreen extends StatelessWidget {
//   final ApiService apiService = ApiService();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User Assessments'),
//       ),
//       body: FutureBuilder(
//         future: apiService.fetchAssessments(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else {
//             final assessments = snapshot.data as List<dynamic>;
//             return ListView.builder(
//               itemCount: assessments.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text('Assessment ${assessments[index]['id']}'),
//                   subtitle: Text('Details: ${assessments[index]['details']}'),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
