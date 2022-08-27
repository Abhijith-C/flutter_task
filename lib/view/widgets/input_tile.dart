// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class InputTile extends StatefulWidget {
  String title;
  TextEditingController controller;
  bool isPassword;
  InputTile(
      {Key? key,
      required this.title,
      required this.controller,
      this.isPassword = false})
      : super(key: key);

  @override
  State<InputTile> createState() => InputTileState();
}

class InputTileState extends State<InputTile> {
  bool showInput = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title),
        SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(10)),
          child: TextFormField(
            controller: widget.controller,
            obscureText: showInput,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(14),
                border: InputBorder.none,
                suffixIcon: widget.isPassword
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            showInput = showInput == true ? false : true;
                          });
                        },
                        child: Icon(showInput
                            ? Icons.visibility_off
                            : Icons.visibility))
                    : null),
          ),
        )
      ],
    );
  }
}
