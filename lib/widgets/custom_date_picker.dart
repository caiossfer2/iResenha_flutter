import 'package:flutter/material.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker(
      {super.key, required this.selectedDate, required this.setDate});
  final DateTime selectedDate;
  final Function setDate;

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101)
    );
    if (picked != null && picked != widget.selectedDate) {
      widget.setDate(picked);
      setState(() => displayedText = "${picked.day}/${picked.month}/${picked.year}");
    }
  }

  String displayedText = "Data Planejada";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 50,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          const Icon(
            Icons.chevron_right,
            size: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () => _selectDate(context),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 40,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  if(displayedText == 'Data Planejada')...[
                    const Text(
                      'Data Planejada',
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 112, 112, 112)),
                      ),
                  ]else...[
                    Text(
                      displayedText,
                      style: const TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ]
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
