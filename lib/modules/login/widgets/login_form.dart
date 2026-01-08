import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysecondpr/modules/login/login_controller.dart';

class LoginForm extends GetView<LoginController> {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(

        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //with the help of this our loginbutton stretches

        children: [
          Icon(
            Icons.lock_outline,
            size: 48,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(height: 16),

          Text("Welcome Back",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
          ),

          const SizedBox(height: 24),
          TextFormField(
            controller: controller.emailcontroller,
            decoration:const InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(),
            ),
            validator: (value){
              if( value == null || value.isEmpty){
                return "Email is required";
              }
              if(!GetUtils.isEmail(value)){
                return " Invalid email";
              }
              return null;
            },
          ),

          const SizedBox(height: 16,),

          TextFormField(
            controller: controller.passwordcontroller,
            decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock_outline),
                border: OutlineInputBorder(),
            ),
            obscureText: true,
            validator: (value){
              if(value == null || value.isEmpty){
                return "password is required";
              }
              if(value.length < 6){
                return "Minimum 6 characters";
              }
              return null;
            },
          ),

          SizedBox(height: 24,),

          SizedBox(
            height: 48,
            child: ElevatedButton(onPressed: (){
              controller.submit();
            }, child: Text('LOGIN')),
          )
        ],

      ),
    );
  }
}
