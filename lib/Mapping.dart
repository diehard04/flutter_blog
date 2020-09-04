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
  
  AuthStatus authStatus = AuthStatus.notSignedIn;
  @override
  void initState() {
    super.initState();
    widget.auth.getCurrentUser().then((firebaseUserId) {
       setState(() {
          authStatus = firebaseUserId == null ? AuthStatus.notSignedIn : AuthStatus.signedIn;
       }); 
    });
  }       

  
  void _signedIn() {
    authStatus = AuthStatus.signedIn;
  }

    void _signedOut() {
    authStatus = AuthStatus.notSignedIn;
  }

  @override
  Widget build(BuildContext context) {
    switch(authStatus) {
      case AuthStatus.notSignedIn:
      return new LoginRegisterPage(
        auth : widget.auth,
        onSignedIn: _signedIn,
      );
      
      case AuthStatus.signedIn:
      return new Homepage(
        auth : widget.auth,
        onSignedOut: _signedOut,
      );

    }
    return null;
    }

}