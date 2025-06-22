// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// final formatter = DateFormat.yMd();

// class NewExpense extends StatefulWidget {
//   const NewExpense({super.key});

//   @override
//   State<NewExpense> createState() {
//     return _NewExpense();
//   }
// }

// class _NewExpense extends State<NewExpense> {
//   final _titleController = TextEditingController();
//   final _amountController = TextEditingController();
//   DateTime? _selectedDate;
//   Category _selectedCategory = Category.food;

//   void _presentDatePicker() async {
//     final now = DateTime.now();
//     final firstDate = DateTime(now.year - 2);
//     final pickedDate = await showDatePicker(
//         context: context,
//         initialDate: now,
//         firstDate: firstDate,
//         lastDate: now);
//     setState(() {
//       _selectedDate = pickedDate;
//     });
//   }

//   void _submitExpenseData() {
//     final enteredAmount = double.tryParse(_amountController.text);
//     final amountValidation = enteredAmount == null || enteredAmount <= 0;
//     if (_titleController.text.trim().isEmpty ||
//         amountValidation ||
//         _selectedDate == null) {
//       showDialog(
//           context: context,
//           builder: (ctx) => AlertDialog(
//                 title: const Text("Invalid input"),
//                 content: const Text("Please make sure a valid data is entered"),
//                 actions: [
//                   TextButton(
//                       onPressed: () {
//                         Navigator.pop(ctx);
//                       },
//                       child: const Text("OK")),
//                 ],
//               ));
//       return;
//     }

//     widget.onAddExpense(Expense(
//         title: _titleController.text,
//         amount: enteredAmount,
//         date: _selectedDate!,
//         category: _selectedCategory));
//   }

//   @override
//   void dispose() {
//     _titleController.dispose();
//     _amountController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16),
//       child: Column(
//         children: [
//           TextField(
//             controller: _titleController,
//             maxLength: 50,
//             decoration: const InputDecoration(label: Text("Title")),
//           ),
//           const SizedBox(height: 10),
//           Row(
//             children: [
//               Expanded(
//                 child: TextField(
//                   controller: _amountController,
//                   keyboardType: TextInputType.number,
//                   decoration: const InputDecoration(
//                       prefixText: '\$', label: Text("Amount")),
//                 ),
//               ),
//               const SizedBox(
//                 width: 16,
//               ),
//               Expanded(
//                   child: Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(_selectedDate == null
//                       ? "No selected date"
//                       : formatter.format(_selectedDate!)),
//                   IconButton(
//                       onPressed: _presentDatePicker,
//                       icon: const Icon(Icons.calendar_month))
//                 ],
//               ))
//             ],
//           ),
//           Row(
//             children: [
//               ElevatedButton(
//                   onPressed: () {
//                     _submitExpenseData();
//                     Navigator.pop(context);
//                   },
//                   child: const Text("Save Expense")),
//               DropdownButton(
//                 items: Category.values
//                     .map((cat) => DropdownMenuItem(
//                         value: cat, child: Text(cat.name.toString())))
//                     .toList(),
//                 value: _selectedCategory,
//                 onChanged: (value) {
//                   if (value == null) {
//                     return;
//                   }
//                   setState(() {
//                     _selectedCategory = value;
//                   });
//                 },
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 // style: ButtonStyle(backgroundColor: Colors.red),
//                 child: const Text("Close"),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }