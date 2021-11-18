import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário de Usuário'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.save_rounded),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
            child: Column(
          children: <Widget>[
            TextFormField(decoration: const InputDecoration(labelText: 'Nome')),
            TextFormField(
                decoration: const InputDecoration(labelText: 'Email')),
            TextFormField(
                decoration: const InputDecoration(labelText: 'URL do Avatar')),
          ],
        )),
      ),
    );
  }
}
