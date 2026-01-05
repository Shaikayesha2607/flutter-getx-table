import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_controller.dart';

class LoginScreen extends GetView<LoginController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              //email
              TextFormField(
                controller: controller.emailcontroller,
                decoration:InputDecoration(labelText: 'Email'),
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

              SizedBox(height: 60,),

              TextFormField(
                controller: controller.passwordcontroller,
                decoration: InputDecoration(labelText: "Password"),
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

              SizedBox(height: 20,),

              ElevatedButton(onPressed: (){
                controller.submit();
              }, child: Text('LOGIN'))
            ],
          ),
        ),
      ) ,
    );

  }
}