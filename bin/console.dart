// Neste exercício, você irá executar uma função assíncrona que simula o login de um usuário
// e a consulta de seu saldo bancário

// 1 execute o método de login informando o e-mail e a senha
// 2 caso o email e senha sejão válidos, consulte o saldo do usuário informando o token e printando o resultado no console
// 3 caso o email ou senha sejão inválidos, printe a mensagem de erro. 




void main() {
  login('email@email.com', '123').then((token) {
    consultarSaldo(token).then((saldo) {
      print(saldo);
    });
  }).catchError((value){
    print(value);
  });

  
}


Future<String> login(String email, String senha) async {
  // Simulando um atraso de download de 2 segundos
  await Future.delayed(Duration(seconds: 2));
  
  if(email != 'email@email.com' || senha != '123') {
    throw Exception('email ou senha inválida');
  }

  // Simulando informações de token de acesso do usuário
  final token = 'bas89e8ahdkkdassd';

  return token;
}

Future<num> consultarSaldo(String token) async {
     // Simulando um atraso de download de 3 segundos
  await Future.delayed(Duration(seconds: 3));
  
  return 2000;
}




// //parte da aula
// void main(List<String> arguments) {

//    print('Consultando Informações...');

//    //then é callback de suvcesso
//   consultarUsuario().then((usuario){
//     print(usuario.nome);
//     print(usuario.email);
//     print('Informações do usuário foram consultadas com sucesso');

//   }).catchError((error) {
//     //Erro
//     print('Erro ao consultar usuário');
//   });





//   //1 parte
//   // print('Consultando Informações...');
//   // consultarUsuario();

//   // //esse é executado antes do método consultarUsuário, pois tem delay, deve-se tratar o fluxo callback
//   // print('Informações do usuário foram consultadas com sucesso');

// }

// //erro
// //retorna usuario
// Future<Usuario> consultarUsuario(){

//   //cria delay, espera o tempo determinado e executa o print depois
//    return Future.delayed(
//     Duration(seconds: 10), 
//   ()=>  throw Exception(),
//   );
// }

// class Usuario{
//   String nome;
//   String email;

//   //inicializa
//   Usuario(this.nome, this.email);

// }



// //sucesso
// // //retorna usuario
// // Future<Usuario> consultarUsuario(){

// //   //cria delay, espera o tempo determinado e executa o print depois
// //    return Future.delayed(
// //     Duration(seconds: 10), 
// //   ()=>  Usuario('Ellen', 'ellen@email.com'),
// //   );
// // }

// // class Usuario{
// //   String nome;
// //   String email;

// //   //inicializa
// //   Usuario(this.nome, this.email);

// // }



// //1parte
// //operaçao assíncrona sem retorno
// // Future<void> consultarUsuario(){

// //   //cria delay, espera o tempo determinado e executa o print depois
// //    return Future.delayed(Duration(seconds: 10), 
// //   ()=>  print('Informações do usuário'),
// //   );
// // }


// //https://www.canva.com/design/DAFrFIrk-Lc/n_v7URQguV59lPi1T-Vbhg/edit