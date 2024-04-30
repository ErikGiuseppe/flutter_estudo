import 'package:flutter/widgets.dart';

import '../components/bottom_button.dart';
import '../components/contador.dart';
import '../components/custom_card.dart';
import '../components/gender_content.dart';
import '../components/modal_result.dart';

import '../components/slider_altura.dart';

import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key});
 
  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  @override
 bool genero_selecionavel=false;
 int altura=120;
 int peso=120;
 int peso1=120;
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora IMC'),
        centerTitle: true,
      ),
      body:Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                     setState(() {
                      genero_selecionavel=true;
                                            
                       
                     });

                    },
                    child: CustomCard(
                      active:  genero_selecionavel== true,
                      child: GenderContent(
                        
                        icon: Icons.male,
                        label: 'Masculino',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  
                  child: GestureDetector(
                   onTap: (){
                     setState(() {
                        
                          genero_selecionavel=false;
                        
                       
                     });

                    },
                    
                    child: CustomCard(
                      active: genero_selecionavel==false,
                      child: GenderContent(
                        icon: Icons.female,
                        label: 'Feminino',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(child: SliderAltura(
              altura:altura,
              onChanged: (double novaAltura){
                setState(() {
                  altura= novaAltura.toInt();
                });
              },
            ),),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(child: Contador( title: 'errado', onChanged: (int ) {peso= peso+1; }, valueInt: peso,  ),),
                ),
                Expanded(
                  child: CustomCard(child: Contador(title: 'b', onChanged: (int ) { peso= peso+1; }, valueInt: peso, ),),
                ),
              ],
            ),
          ),
          BottomButton(buttonTitle:'Calcular IMC')
        ],
      ),
    );
  }
}
