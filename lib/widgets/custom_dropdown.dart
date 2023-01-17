import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown(
      {Key? key,
      required this.dropdownValue,
      required this.selectDropdownValue,
      required this.dropdownItemsList})
      : super(key: key);

  final String dropdownValue;
  final List<String> dropdownItemsList;
  final Function selectDropdownValue;

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
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
          DropdownButton<String>(
            value: widget.dropdownValue,
            elevation: 16,
            icon: const SizedBox.shrink(),
            underline: const SizedBox.shrink(),
            style: const TextStyle(color: Colors.black, fontSize: 17),
            onChanged: (String? value) {
              widget.selectDropdownValue(value);
            },
            items: widget.dropdownItemsList
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
