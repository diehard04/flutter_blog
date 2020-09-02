import 'package:flutter/material.dart';
import 'LoginRegisterPage.dart';
import 'Homepage.dart';
import 'Authentication.dart';

class MappingPage extends StatefulWidget {
  
  final AuthImplementation auth;

  MappingPage({
      this.auth,
  });

  State<StatefulWidget> createState() {
    return _MappingPageState();
  }
}

enum AuthStatus {
  notSignedIn,
  signedIn,
}

class _MappingPageState extends State<MappingPage>{
  
  AuthStatus _authStatus = AuthStatus.notSignedIn;
  @override
  void initState() {

    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    
    return null;
    }

}