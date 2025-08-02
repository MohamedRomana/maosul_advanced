import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maosul_advanced/core/constants/colors.dart';
import 'widget/register_buttons.dart';
import 'widget/register_fields.dart';
import 'widget/register_logo_text.dart';

final _formKey = GlobalKey<FormState>();
final _nameController = TextEditingController();
final _emailController = TextEditingController();
final _phoneController = TextEditingController();
final locationController = TextEditingController();
final _passwordController = TextEditingController();
final _confirmPasswordController = TextEditingController();
String registerCode = '';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryMedium,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              start: 16.w,
              end: 16.w,
              top: 50.h,
              bottom: 32.h,
            ),

            child: Column(
              children: [
                const RegisterLogoText(),
                RegisterFields(
                  formKey: _formKey,
                  nameController: _nameController,
                  emailController: _emailController,
                  phoneController: _phoneController,
                  locationController: locationController,
                  passwordController: _passwordController,
                  confirmPasswordController: _confirmPasswordController,
                ),
                const RegisterButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
