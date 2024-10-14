similaridade = require("./similaridade.json");
casos = require("./casos.json");

for (let index = 0; index < casos.length; index++) {
  Object.keys(similaridade).forEach((characteristc) => {
    valor_string = casos[index][characteristc];
    console.log(
      similaridade[characteristc]["Variaveis"][valor_string]
      //casos[0][characteristc]
    );
  });
}

//console.log(casos[0]);
