import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/utiles/Styles.dart';
import 'package:mymed/utiles/colors.dart';

class UserClinicWedgit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          height: 400,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  blurRadius: 9,
                  spreadRadius: 5,
                  offset: Offset(0, 0.9),
                )
              ],
              borderRadius: BorderRadius.circular(7)),
          child: Column(children: [
            Container(
              height: 100,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/doctor.jpg'),
                    fit: BoxFit.contain),
              ),
            ),
            Text(
              'Al-Shifaa Clinic',
              style: Style.clinicname,
            ),
            Text(
              'Dr.Ahmed Ahmed',
              style: Style.doctorname,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: Icon(Icons.star_rate),
                    color: Colors.yellow[800],
                    onPressed: null),
                IconButton(
                    icon: Icon(Icons.star_rate),
                    color: Colors.yellow[800],
                    onPressed: null),
                IconButton(
                    icon: Icon(Icons.star_rate),
                    color: Colors.yellow[800],
                    onPressed: null),
                IconButton(
                    icon: Icon(Icons.star_rate),
                    color: Colors.yellow[800],
                    onPressed: null),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    // padding: EdgeInsets.all(20),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/location.jpg'),
                            fit: BoxFit.cover))),
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Our Location',
                      style: TextStyle(fontSize: 18),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 70,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      padding: EdgeInsets.all(20),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/logreg1.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      padding: EdgeInsets.all(20),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/logreg1.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      padding: EdgeInsets.all(20),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/logreg1.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      padding: EdgeInsets.all(20),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/logreg1.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      padding: EdgeInsets.all(20),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/logreg1.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      padding: EdgeInsets.all(20),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/logreg1.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      padding: EdgeInsets.all(20),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/logreg1.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      padding: EdgeInsets.all(20),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/logreg1.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
        Container(
          width: 50,
          height: 110,
          padding: EdgeInsets.all(20),
          child: RaisedButton(
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: Theme.of(context).primaryColor)),
            color: Colors.white.withOpacity(0.8),
            // shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(90)),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return;
              }));
            },
            child: Text(
              translator.translate('bookappointment'),
              style: TextStyle(
                color: Colors.black87,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
