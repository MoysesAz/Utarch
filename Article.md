# Article

<!--@START_MENU_TOKEN@-->Summary<!--@END_MENU_TOKEN@-->

## Overview

<!--@START_MENU_TOKEN@-->Text<!--@END_MENU_TOKEN@-->

## Topics

### <!--@START_MENU_TOKEN@-->Group<!--@END_MENU_TOKEN@-->

- <!--@START_MENU_TOKEN@-->``Symbol``<!--@END_MENU_TOKEN@-->
primeira maneira: só paragrafos
    const Paragrafos = document.getElementsByTagName("p")
    
    for(i of Paragrafos){
        console.log(i.innerText)
    }

    agora que eu tenho todos os paragrafos preciso saber todas os classes pai e seus id se existirem sem repetição de nomes

    const PaiParagrafos = []

    for(i of Paragrafos){
          PaiParagrafos.push(i.parentElement.className)
        }

    const PaiParagrafosUnique = new Set(PaiParagrafos)

    pegar lista de elementos dentro de cada classe 
    var elementosDentroDasClassesPai = []
      
    for(i of PaiParagrafosUnique){
        elementosDentroDasClassesPai.push(document.getElementsByClassName(i))
        }

    const counts = {};
    const sampleArray = PaiParagrafos;
    sampleArray.forEach(function (x) { counts[x] = (counts[x] || 0) + 1; });
    console.log(counts)

    seleciona a classe com a maior quantidade de referencias
    
    depois manda um a famosa variavel FINALMENTE = document.getElementebyClassename(resultado da passada)

    manda essa funcao aqui

    for(i of finalmente){
            for (j of i.children){
                console.log(j.innerText)
            }
    }

    e pica
    






const Paragrafos = document.getElementsByTagName("p")
const PaiParagrafos = []

    for(i of Paragrafos){
          PaiParagrafos.push(i.parentElement.className)
        }


const PaiParagrafosUnique = new Set(PaiParagrafos)
var elementosDentroDasClassesPai = []
      
for(i of PaiParagrafosUnique){
    elementosDentroDasClassesPai.push(document.getElementsByClassName(i))
}

const counts = {};
const sampleArray = PaiParagrafos;
sampleArray.forEach(function (x) { counts[x] = (counts[x] || 0) + 1; });
console.log(counts)

var finalmente = document.getElementsByClassName()    


for(i of finalmente){
    for (j of i.children){
        console.log(j.innerText)
    }
}






1. Escreve um assunto
2. Quantos links você quer




