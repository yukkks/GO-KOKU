// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends FFFirebaseStruct {
  UserStruct({
    String? email,
    String? password,
    String? phoneNumber,
    String? postalCode,
    String? prefecture,
    String? city,
    String? streetAddress,
    String? apartmentNameNumber,
    String? displayName,
    String? photoUrl,
    String? uid,
    DateTime? createdTime,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _email = email,
        _password = password,
        _phoneNumber = phoneNumber,
        _postalCode = postalCode,
        _prefecture = prefecture,
        _city = city,
        _streetAddress = streetAddress,
        _apartmentNameNumber = apartmentNameNumber,
        _displayName = displayName,
        _photoUrl = photoUrl,
        _uid = uid,
        _createdTime = createdTime,
        super(firestoreUtilData);

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;
  bool hasPassword() => _password != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "postal_code" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  set postalCode(String? val) => _postalCode = val;
  bool hasPostalCode() => _postalCode != null;

  // "prefecture" field.
  String? _prefecture;
  String get prefecture => _prefecture ?? '';
  set prefecture(String? val) => _prefecture = val;
  bool hasPrefecture() => _prefecture != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "street_address" field.
  String? _streetAddress;
  String get streetAddress => _streetAddress ?? '';
  set streetAddress(String? val) => _streetAddress = val;
  bool hasStreetAddress() => _streetAddress != null;

  // "apartment_name_number" field.
  String? _apartmentNameNumber;
  String get apartmentNameNumber => _apartmentNameNumber ?? '';
  set apartmentNameNumber(String? val) => _apartmentNameNumber = val;
  bool hasApartmentNameNumber() => _apartmentNameNumber != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  set photoUrl(String? val) => _photoUrl = val;
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  set createdTime(DateTime? val) => _createdTime = val;
  bool hasCreatedTime() => _createdTime != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        email: data['email'] as String?,
        password: data['password'] as String?,
        phoneNumber: data['phone_number'] as String?,
        postalCode: data['postal_code'] as String?,
        prefecture: data['prefecture'] as String?,
        city: data['city'] as String?,
        streetAddress: data['street_address'] as String?,
        apartmentNameNumber: data['apartment_name_number'] as String?,
        displayName: data['display_name'] as String?,
        photoUrl: data['photo_url'] as String?,
        uid: data['uid'] as String?,
        createdTime: data['created_time'] as DateTime?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'password': _password,
        'phone_number': _phoneNumber,
        'postal_code': _postalCode,
        'prefecture': _prefecture,
        'city': _city,
        'street_address': _streetAddress,
        'apartment_name_number': _apartmentNameNumber,
        'display_name': _displayName,
        'photo_url': _photoUrl,
        'uid': _uid,
        'created_time': _createdTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'phone_number': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'postal_code': serializeParam(
          _postalCode,
          ParamType.String,
        ),
        'prefecture': serializeParam(
          _prefecture,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'street_address': serializeParam(
          _streetAddress,
          ParamType.String,
        ),
        'apartment_name_number': serializeParam(
          _apartmentNameNumber,
          ParamType.String,
        ),
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'photo_url': serializeParam(
          _photoUrl,
          ParamType.String,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'created_time': serializeParam(
          _createdTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phone_number'],
          ParamType.String,
          false,
        ),
        postalCode: deserializeParam(
          data['postal_code'],
          ParamType.String,
          false,
        ),
        prefecture: deserializeParam(
          data['prefecture'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        streetAddress: deserializeParam(
          data['street_address'],
          ParamType.String,
          false,
        ),
        apartmentNameNumber: deserializeParam(
          data['apartment_name_number'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        photoUrl: deserializeParam(
          data['photo_url'],
          ParamType.String,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        createdTime: deserializeParam(
          data['created_time'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        email == other.email &&
        password == other.password &&
        phoneNumber == other.phoneNumber &&
        postalCode == other.postalCode &&
        prefecture == other.prefecture &&
        city == other.city &&
        streetAddress == other.streetAddress &&
        apartmentNameNumber == other.apartmentNameNumber &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        email,
        password,
        phoneNumber,
        postalCode,
        prefecture,
        city,
        streetAddress,
        apartmentNameNumber,
        displayName,
        photoUrl,
        uid,
        createdTime
      ]);
}

UserStruct createUserStruct({
  String? email,
  String? password,
  String? phoneNumber,
  String? postalCode,
  String? prefecture,
  String? city,
  String? streetAddress,
  String? apartmentNameNumber,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserStruct(
      email: email,
      password: password,
      phoneNumber: phoneNumber,
      postalCode: postalCode,
      prefecture: prefecture,
      city: city,
      streetAddress: streetAddress,
      apartmentNameNumber: apartmentNameNumber,
      displayName: displayName,
      photoUrl: photoUrl,
      uid: uid,
      createdTime: createdTime,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserStruct? updateUserStruct(
  UserStruct? user, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    user
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserStructData(
  Map<String, dynamic> firestoreData,
  UserStruct? user,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (user == null) {
    return;
  }
  if (user.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && user.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userData = getUserFirestoreData(user, forFieldValue);
  final nestedData = userData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = user.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserFirestoreData(
  UserStruct? user, [
  bool forFieldValue = false,
]) {
  if (user == null) {
    return {};
  }
  final firestoreData = mapToFirestore(user.toMap());

  // Add any Firestore field values
  user.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserListFirestoreData(
  List<UserStruct>? users,
) =>
    users?.map((e) => getUserFirestoreData(e, true)).toList() ?? [];
