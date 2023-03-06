import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 40.0),
            child: FlutterLogo(),
          ),
          _usernameField(),
          _passwordField(),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: _loginButton(context),
          ),
          _forgotPassword(),
        ]
      )
    );
  }

  Widget _usernameField(){
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10),
      child: TextFormField(
        enabled: true,
        decoration: const InputDecoration(
          hintText: 'Username',
          contentPadding: EdgeInsets.all(20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            borderSide: BorderSide(color: Colors.blue),
          )
        ),
      ),
    );
  }
  
  Widget _passwordField(){
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 20, 
          vertical: 10),
      child: TextFormField(
        enabled: true,
        obscureText: true,
        decoration: const InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.all(20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            borderSide: BorderSide(color: Colors.blue),
          )
        ),
      ),
    );
  }
  
  Widget _loginButton(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Login'),
      ),
    );
  }

  Widget _forgotPassword(){
    return Container(
      child: TextButton(
        onPressed: () {},
        child: const Text('Forgot password?', style: TextStyle(color: Colors.grey),),
      ),
    );
  }
}