library auth;

import 'dart:convert';

import 'package:cash_flow/constant/string_constant.dart';
import 'package:cash_flow/routes.dart';
import 'package:cash_flow/service/secure_stroage_service.dart';
import 'package:cash_flow/widget/custom_appbar.dart';
import 'package:cash_flow/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

//view
part 'package:cash_flow/module/auth/view/login_page.dart';
part 'package:cash_flow/module/auth/view/register_page.dart';

//controller
part 'package:cash_flow/module/auth/controller/login_page_controller.dart';

//binding
part 'package:cash_flow/module/auth/binding/login_page_binding.dart';

//model
part 'package:cash_flow/module/auth/model/user.dart';
