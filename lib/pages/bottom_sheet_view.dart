import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetView extends StatefulWidget {
  double height;

  @override
  _BottomSheetViewState createState() => _BottomSheetViewState();

  BottomSheetView(this.height);
}

class _BottomSheetViewState extends State<BottomSheetView> {
  String dropDownValueCategory = 'Design',
      dropDownValueSubCategory = 'UI/UX Design',
      dropDownValueLocation = 'Bangladesh';
  bool isFullTime = false, isPartTime = false, isRemote = false;
  RangeValues _rangeValues = RangeValues(1, 9);
  double minSalary = 10, maxSalary = 100;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    RangeLabels _rangeLabels = RangeLabels(
        _rangeValues.start.toString(), (_rangeValues.end).toString());

    return SingleChildScrollView(
      child: Container(
        height: widget.height,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () async {
                Navigator.pop(context);
              },
              child: const Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.cancel,
                  size: 32,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "Category",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black87.withOpacity(0.7)),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white.withOpacity(0.7)),
              child: DropdownButton<String>(
                value: dropDownValueCategory,
                isExpanded: true,
                icon: const Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      size: 24,
                    )),
                style: TextStyle(
                    color: Colors.black87.withOpacity(0.8), fontSize: 16),
                underline: const SizedBox(),
                onChanged: (newValue) {
                  setState(() {
                    dropDownValueCategory = newValue!;
                  });
                },
                items: <String>['Design', 'Development', 'Sales', 'Marketing']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(value)),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "Sub Category",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black87.withOpacity(0.7)),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white.withOpacity(0.7)),
              child: DropdownButton<String>(
                value: dropDownValueSubCategory,
                isExpanded: true,
                icon: const Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      size: 24,
                    )),
                style: TextStyle(
                    color: Colors.black87.withOpacity(0.8), fontSize: 16),
                underline: const SizedBox(),
                onChanged: (newValue) {
                  setState(() {
                    dropDownValueSubCategory = newValue!;
                  });
                },
                items: <String>[
                  'UI/UX Design',
                  'Development',
                  'Sales',
                  'Marketing'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(value)),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "Location",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black87.withOpacity(0.7)),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white.withOpacity(0.7)),
              child: DropdownButton<String>(
                value: dropDownValueLocation,
                isExpanded: true,
                icon: const Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.my_location_sharp,
                      color: Colors.orangeAccent,
                      size: 24,
                    )),
                style: TextStyle(
                    color: Colors.black87.withOpacity(0.8), fontSize: 16),
                underline: const SizedBox(),
                onChanged: (newValue) {
                  setState(() {
                    dropDownValueLocation = newValue!;
                  });
                },
                items: <String>[
                  'Bangladesh',
                  'Development',
                  'Sales',
                  'Marketing'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(value)),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Min Salary",
                    style: TextStyle(
                        fontSize: 16, color: Colors.black87.withOpacity(0.7)),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Max Salary",
                    style: TextStyle(
                        fontSize: 16, color: Colors.black87.withOpacity(0.7)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.orangeAccent.withOpacity(0.6),
                inactiveTrackColor: Colors.black12,
                thumbColor: Colors.white,
                thumbShape:
                const RoundSliderThumbShape(enabledThumbRadius: 6),
              ),
              child: RangeSlider(
                values: _rangeValues,
                min: minSalary,
                max: maxSalary,
                divisions: 20,
                onChanged: (newValues) {
                  setState(() {
                    _rangeValues = newValues;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "Job Type",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black87.withOpacity(0.7)),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () async {
                    setState(() {
                      isFullTime = !isFullTime;
                    });
                  },
                  child: Container(
                    height: 42,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: isFullTime
                            ? Colors.yellow.withOpacity(0.6)
                            : Colors.white.withOpacity(0.4),
                        border: isFullTime
                            ? Border.all(color: Colors.transparent)
                            : Border.all(color: Colors.black12)),
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 12, right: 12),
                    child: Text(
                      "Full Time",
                      style: TextStyle(
                        color: isFullTime ? Colors.black87 : Colors.grey,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      isPartTime = !isPartTime;
                    });
                  },
                  child: Container(
                    height: 42,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: isPartTime
                            ? Colors.yellow.withOpacity(0.6)
                            : Colors.white.withOpacity(0.4),
                        border: isPartTime
                            ? Border.all(color: Colors.transparent)
                            : Border.all(color: Colors.black12)),
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 12, right: 12),
                    child: Text(
                      "Part Time",
                      style: TextStyle(
                        color: isPartTime ? Colors.black87 : Colors.grey,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      isRemote = !isRemote;
                    });
                  },
                  child: Container(
                    height: 42,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: isRemote
                            ? Colors.yellow.withOpacity(0.6)
                            : Colors.white.withOpacity(0.4),
                        border: isRemote
                            ? Border.all(color: Colors.transparent)
                            : Border.all(color: Colors.black12)),
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 12, right: 12),
                    child: Text(
                      "Remote",
                      style: TextStyle(
                        color: isRemote ? Colors.black87 : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () async {
                Navigator.pop(context);
              },
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 56,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[500]!,
                            offset: const Offset(4, 4),
                            blurRadius: 15,
                            spreadRadius: 1),
                        const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 15,
                            spreadRadius: 1)
                      ]),
                  child: const Text(
                    "Apply Filter",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
