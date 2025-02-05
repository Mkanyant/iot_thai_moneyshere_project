import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoneyInputUI extends StatefulWidget {
  @override
  _MoneyInputUIState createState() => _MoneyInputUIState();
}

class _MoneyInputUIState extends State<MoneyInputUI> {
  //ตัวแปรใช้กับ Checkbox
  bool isTip = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      title: Text(
        'แชร์เงินกันเถอะ',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 45.0,
            right: 45.0,
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
               Image.asset(
                'assets/images/money.png',
                width: MediaQuery.of(context).size.width * 0.3
               ), 
               SizedBox(
                  height: 35.0,
               ),
               TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple,
                    ),
                  ),
                  prefixIcon: Icon(
                    FontAwesomeIcons.moneyBill1Wave,
                    color: Colors.purple,
                  ),
                  hintText: 'ป้อนจำนวนเงิน (บาท)',
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 229, 178, 238)
                  )
                ),
               ),
               SizedBox(
                  height: 35.0,
               ),
               TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.purple,
                  ),
                  hintText: 'ป้อนจำนวนคน (คน)',
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 229, 178, 238)
                  )
                ),
               ),
               SizedBox(
                  height: 35.0,
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    onChanged: (paramvalue) {
                      //จำไว้นะ โค้ดใดที่มีผลต่อการแสดงผล
                      // ต้องเขียนอยู่ภายใต้ setState()
                      setState(() {
                        isTip = paramvalue!;
                      });
                    },
                    value: isTip,
                    activeColor: Colors.purple,
                    checkColor: Colors.white,
                    side: BorderSide(
                      color: Colors.purple,
                    ),                   
                  ),
                  Text(
                    'ทิปให้พนักงานเสิร์ฟ',
                  ),
                ],
               ),
               SizedBox(
                  height: 35.0,
               ),
               TextField(
                enabled: isTip,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple,
                    ),
                  ),
                  prefixIcon: Icon(
                    FontAwesomeIcons.coins,
                    color: Colors.purple,
                  ),
                  hintText: 'ป้อนจำนวนเงินทิป (บาท)',
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 229, 178, 238)
                  ),
                ),
               ),
               SizedBox(
                  height: 35.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.8,
                      50.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {},
                child: Text(
                  'คำนวณ',
                  style: TextStyle(
                    color: Colors.white,                 
                ),
               ),
               ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.8,
                      50.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.cancel_outlined,
                    color: Colors.white,
                  ),
                  label: Text(
                    'ยกเลิก',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}