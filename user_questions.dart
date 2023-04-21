// class UserQuestions extends StatefulWidget {
//   const UserQuestions({Key? key}) : super(key: key);

//   @override
//   _UserQuestionsState createState() => _UserQuestionsState();
// }

// class _UserQuestionsState extends State<UserQuestions> {
//   bool _isAustralianOrNewZealandCitizen = false;
//   bool _hasUnrestrictedWorkRightsInAustralia = false;

//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//   CollectionReference questionsCollection =
//       FirebaseFirestore.instance.collection('question');

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Text('Additional Application Questions',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
//           ],
//         ),
//         const SizedBox(height: 15),
//         // question with answer as checkbox
//         Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text('Are you an Australian or New Zealand Citizen?'),
//                 Checkbox(
//                     value: _isAustralianOrNewZealandCitizen,
//                     onChanged: (value) {
//                       setState(() {
//                         _isAustralianOrNewZealandCitizen = value!;
//                       });
//                     }),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                     'Do you have unrestricted work rights in Australia?'),
//                 Checkbox(
//                     value: _hasUnrestrictedWorkRightsInAustralia,
//                     onChanged: (value) {
//                       setState(() {
//                         _hasUnrestrictedWorkRightsInAustralia = value!;
//                       });
//                     }),
//               ],
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 questionsCollection
//                     .doc('user_id_here')
//                     .set({
//                       'is_australian_new_zealand_citizen':
//                           _isAustralianOrNewZealandCitizen,
//                       'has_unrestricted_work_rights_in_australia':
//                           _hasUnrestrictedWorkRightsInAustralia,
//                       'timestamp': FieldValue.serverTimestamp(),
//                     })
//                     .then((value) => print('Answers saved successfully'))
//                     .catchError(
//                         (error) => print('Failed to save answers: $error'));
//               },
//               child: const Text('Submit'),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }