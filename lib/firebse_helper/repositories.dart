import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mymed/models/doctor_model.dart';

void insertNewDoctor(DoctorModel doctorModel) async{
  try {
    FirebaseFirestore.instance
        .collection('info')
        .add(
      {
        'name': doctorModel.name,
        'mobile': doctorModel.mobile,
        'mobile': doctorModel.mobile,
      },
    )
        .then((value) => print('done'))
        .catchError((error) => print("Failed to add user: $error"));
  } on Exception catch (e) {
    print(e);
  }
}
