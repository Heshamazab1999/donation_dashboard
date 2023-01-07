import 'package:donation_dashboard/constants.dart';
import 'package:donation_dashboard/controller/base_controller.dart';
import 'package:donation_dashboard/enum/view_state.dart';
import 'package:donation_dashboard/helper/cache_helper.dart';
import 'package:donation_dashboard/model/valid_model.dart';
import 'package:donation_dashboard/screens/auth/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends BaseController {
  final services = AuthService();
  final _email = Valid().obs;
  final _password = Valid().obs;
  final _obSecure = true.obs;
  final _checkbox = false.obs;
  TextEditingController editingControllerUserName = TextEditingController();
  TextEditingController editingControllerPassword = TextEditingController();
  final _loading = false.obs;

  bool get obSecure => _obSecure.value;

  bool get checkbox => _checkbox.value;

  bool get loading => _loading.value;

  Valid get email => _email.value;

  Valid get password => _password.value;

  @override
  onInit() {
    super.onInit();
    setState(ViewState.busy);
    loadUserEmailPassword();
    setState(ViewState.idle);
  }

  toggleObSecure() {
    _obSecure.value = !_obSecure.value;
    print(_obSecure);
  }

  toggleCheckBox(bool value) {
    _checkbox.value = value;
  }

  handleRemember(bool value) {
    if (value == true) {
      CacheHelper.saveData(key: K.remember, value: value);
      CacheHelper.saveData(key: K.userName, value: _email.value.value);
      CacheHelper.saveData(key: K.userPassword, value: _password.value.value);
    } else {
      CacheHelper.saveData(key: K.remember, value: value);
      _checkbox.value = value;
      _email.value.value = "";
      _email.value.value = "";
      editingControllerPassword.clear();
      editingControllerUserName.clear();
    }
  }

  loadUserEmailPassword() async {
    _checkbox.value = CacheHelper.getData(key: K.remember) ?? false;
    if (_checkbox.value == true) {
      _email.value.value = CacheHelper.getData(key: K.userName) ?? "";
      _password.value.value = CacheHelper.getData(key: K.userPassword) ?? "";
      editingControllerPassword.text =
          CacheHelper.getData(key: K.userPassword) ?? "";
      editingControllerUserName.text =
          CacheHelper.getData(key: K.userName) ?? "";
      print(_checkbox.value);
      print(_email.value.value);
      print(_password.value.value);
    } else {
      _email.value.value = "";
      _password.value.value = "";
      editingControllerPassword.text = "";
      editingControllerUserName.text = "";
    }
  }

  login() async {
    try {
      _loading.value = true;
      await services.getUserByEmail(
          _password.value.value!, _email.value.value!);
      _loading.value = false;
    } catch (e) {
      _loading.value = false;
    }
  }
}
