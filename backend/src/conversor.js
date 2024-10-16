similaridade = require("./similaridade.json");
casos = require("./casos.json");


 Object.keys(similaridade).forEach((characteristc) => {
    console.log(characteristc + ":" + 'null' + ',')

   //console.log(similaridade[characteristc]["variaveis"])
    //console.log(',')
  });

for (let index = 0; index < casos.length; index++) {
  Object.keys(similaridade).forEach((characteristc) => {
    valor_string = casos[index][characteristc];
    if (valor_string == "desconhecido") return;
    valor_peso =
      similaridade[characteristc]["variaveis"][valor_string]["valor"];

    casos[index][characteristc] = valor_peso;
  });
}

//console.log(casos[0]);
