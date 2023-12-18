import 'package:flutter/material.dart';

import '../../colors.dart';

final firstSelectedRow = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      width: 20,
      height: 6,
      decoration: ShapeDecoration(
        color: orangeMain,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    ),
    const SizedBox(
      width: 5,
    ),
    Container(
      width: 6,
      height: 6,
      decoration: ShapeDecoration(
        color: lightGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    ),
    const SizedBox(
      width: 2,
    ),
    Container(
      width: 6,
      height: 6,
      decoration: ShapeDecoration(
        color: lightGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    ),
  ],
);

final secondSelectedRow = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      width: 6,
      height: 6,
      decoration: ShapeDecoration(
        color: lightGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    ),
    const SizedBox(
      width: 2,
    ),
    Container(
      width: 20,
      height: 6,
      decoration: ShapeDecoration(
        color: orangeMain,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    ),

    const SizedBox(
      width: 2,
    ),
    Container(
      width: 6,
      height: 6,
      decoration: ShapeDecoration(
        color: lightGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    ),
  ],
);

final lastSelectedRow = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      width: 6,
      height: 6,
      decoration: ShapeDecoration(
        color: lightGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    ),
    const SizedBox(
      width: 2,
    ),
    Container(
      width: 6,
      height: 6,
      decoration: ShapeDecoration(
        color: lightGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    ),
    const SizedBox(
      width: 2,
    ),
    Container(
      width: 20,
      height: 6,
      decoration: ShapeDecoration(
        color: orangeMain,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    ),
  ],
);
