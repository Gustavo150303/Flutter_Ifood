import 'dart:async';

import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  //objeto que define o controle das páginas
  PageController pageController = PageController();
  List<double> progresso = [0.0, 0.0, 0.0];
  int qtdPaginas = 3;
  int paginaAtual = 0;
  //método que é chamado antes da página ser construída
  @override
  void initState() {
    super.initState();
    nextPage();
    iniciarProgresso();
  }

  //método para mudar de página peridioticamente
  nextPage() {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      
      int page = pageController.page!.round() + 1;
      
      if (page >= 3) {
        pageController.animateToPage(0,
            duration: const Duration(seconds: 2), curve: Curves.linear);
      } else {
        pageController.nextPage(
            duration: const Duration(seconds: 2), curve: Curves.easeIn);
            setState(() {
        paginaAtual = page;
      });
      }
    });
  }

  //iniciar o progresso
  void iniciarProgresso(){
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        if(progresso[paginaAtual] < 1){
          progresso[paginaAtual] += 0.02;
        }else {
          timer.cancel();
          reset();
        }
      });
     });
  }
  //método para resetar a animação
  void reset(){
    for(int i = 0; i < qtdPaginas; i++){
      progresso[i] = 0.0;
    }
    iniciarProgresso();
  }

  //método para criar o indicator
  List<Widget> buildIndicator(){

    List<Widget> lista = [];

    for(int i = 0; i < qtdPaginas; i++){
      lista.add(Container(
        width: 50,
        height: 5,
        margin: const EdgeInsets.all(8),
        child: LinearProgressIndicator(
          borderRadius: BorderRadius.circular(8),
          value: progresso[i],
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation<Color>(paginaAtual == i? Colors.blue :Colors.grey),
        ),
      ));
    }
    return lista;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView(
            controller: pageController,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.red,
              ),
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.black,
              ),
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.green,
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(8), 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: buildIndicator(),
          ),)
        ],
      ),
    );
  }
}
