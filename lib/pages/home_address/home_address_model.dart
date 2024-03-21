import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_address_widget.dart' show HomeAddressWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class HomeAddressModel extends FlutterFlowModel<HomeAddressWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageController;
  String? Function(BuildContext, String?)? ageControllerValidator;
  String? _ageControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1zj6o1uy' /* Please enter an age for the pa... */,
      );
    }

    return null;
  }

  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode1;
  TextEditingController? dateOfBirthController1;
  final dateOfBirthMask1 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dateOfBirthController1Validator;
  String? _dateOfBirthController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'e4v5o2iu' /* Please enter the date of birth... */,
      );
    }

    return null;
  }

  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode2;
  TextEditingController? dateOfBirthController2;
  final dateOfBirthMask2 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dateOfBirthController2Validator;
  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode3;
  TextEditingController? dateOfBirthController3;
  final dateOfBirthMask3 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dateOfBirthController3Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    ageControllerValidator = _ageControllerValidator;
    dateOfBirthController1Validator = _dateOfBirthController1Validator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    ageFocusNode?.dispose();
    ageController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    dateOfBirthFocusNode1?.dispose();
    dateOfBirthController1?.dispose();

    dateOfBirthFocusNode2?.dispose();
    dateOfBirthController2?.dispose();

    dateOfBirthFocusNode3?.dispose();
    dateOfBirthController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
