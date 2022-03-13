


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../component/atom/fresh_flow_textfield.dart';
import '../component/atom/freshflow_button.dart';
import '../view_models/login_screen_view_model.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginScreenViewModel>.reactive(
        viewModelBuilder: ()=>LoginScreenViewModel(),
        onModelReady: (mdl)=> mdl.init(),
        builder: (builder,viewModel,_)=>Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Form(
          key: viewModel.formState,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Text(
                'Login',
                style: Theme.of(context).textTheme.headline3,
              ),

              const SizedBox(height: 23,),
              FreshFlowTextField(
                hintText: 'Email Address',
                flowController: viewModel.email,
                flowValidator: (val)=> viewModel.isEmail(val),

              ),

              const SizedBox(height: 10,),

              FreshFlowTextField(
                hintText: 'password',
                obscureText: true,
                flowController: viewModel.password,
                flowValidator: (val)=> val.length >3 ? null :'password length is too low',
              ),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: 250,
                height: 40,
                child: FreshFlowButton(isLoading:viewModel.isLoading,
                    text: "Login",
                    onButtonPressed:()=> viewModel.onLoginPressed()
                ),
              )

            ],
          ),
        )
      ),

    ));
  }
}
