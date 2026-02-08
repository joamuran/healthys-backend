final Map<String, List<Map<String, dynamic>>> entrants = {
  "amanides": [
    {
      "id": "ENT01",
      "name": "Amanida mediterrània",
      "description":
          "Enciam, tomàquet, cogombre, olives, formatge feta i vinagreta.",
      "allergens": ["Llet"],
      "price": 9.00,
      "calories": 220,
      "dietType": ["Sense gluten", "Vegetarià"],
      "additionalInfo": "Fresca i lleugera.",
      "img": "img/amanida_mediterrania.png",
    },
    {
      "id": "ENT02",
      "name": "Amanida de quinoa i verdures",
      "description": "Quinoa, espinacs, pebrot, ceba morada i alvocat.",
      "allergens": [],
      "price": 8.50,
      "calories": 300,
      "dietType": ["Vegà", "Sense gluten"],
      "additionalInfo": "Una opció nutritiva i lleugera.",
      "img": "img/amanida_quinoa_verdures.png",
    },
    {
      "id": "ENT03",
      "name": "Amanida caprese",
      "description":
          "Tomàquet, mozzarella fresca, alfàbrega i oli d'oliva extra verge.",
      "allergens": ["Llet"],
      "price": 6.50,
      "calories": 200,
      "dietType": ["Sense gluten", "Vegetarià"],
      "additionalInfo": "Fresca i lleugera.",
      "img": "img/amanida_caprese.png",
    },
  ],
  "tartars": [
    {
      "id": "ENT04",
      "name": "Tartar de tonyina",
      "description":
          "Tartar fresc de tonyina amb alvocat, llavors de sèsam i salsa de soja.",
      "allergens": ["Peix", "Sèsam"],
      "price": 7.50,
      "calories": 200,
      "dietType": ["Sense gluten", "Baja en carbohidrats"],
      "additionalInfo": "Rica en omega 3.",
      "img": "img/tartar_tonyina.png",
    },
    {
      "id": "ENT05",
      "name": "Tartar de salmó",
      "description":
          "Salmó fresc amb alvocat, llavors de sèsam i salsa teriyaki.",
      "allergens": ["Peix", "Sèsam"],
      "price": 8.00,
      "calories": 180,
      "dietType": ["Sense gluten"],
      "additionalInfo": "Proteïna saludable per començar.",
      "img": "img/tartar_salmo.png",
    },
    {
      "id": "ENT06",
      "name": "Tartar de verdures",
      "description":
          "Tartar fresc de cogombre, alvocat, tomàquet i ceba morada.",
      "allergens": [],
      "price": 5.50,
      "calories": 180,
      "dietType": ["Vegà", "Sense gluten"],

      "additionalInfo": "Lleuger i fresc.",
      "img": "img/tartar_verdures.png",
    },
  ],
  "rotllets": [
    {
      "id": "ENT07",
      "name": "Rotllets vietnamites",
      "description":
          "Rollitos d'arròs farcits de verdures fresques i salsa de cacauet.",
      "allergens": ["Cacauet", "Gluten"],
      "price": 7.00,
      "calories": 230,
      "dietType": ["Vegà"],
      "additionalInfo": "Edat de l'orient més saludable.",
      "img": "img/rollets_vietnamites.png",
    },
    {
      "id": "ENT08",
      "name": "Rotllets de primavera",
      "description": "Rotllets d'arròs farcits amb verdures i salsa de soja.",
      "allergens": ["Sèsam"],
      "price": 6.00,
      "calories": 200,
      "dietType": ["Vegà", "Sense gluten"],
      "additionalInfo": "Frescos i lleugers.",
      "img": "img/rollitos_primavera.png",
    },
  ],
  "altres": [
    {
      "id": "ENT09",
      "name": "Hummus clàssic",
      "description": "Hummus casolà amb pa de pita i verdures fresques.",
      "allergens": ["Gluten", "Llet"],
      "price": 5.00,
      "calories": 250,
      "dietType": ["Vegà"],

      "additionalInfo": "Ideal per a picoteig saludable.",
      "img": "img/hummus_classic.png",
    },
    {
      "id": "ENT10",
      "name": "Guacamole amb nachos",
      "description":
          "Guacamole fresc fet amb alvocat madur i servit amb nachos cruixents.",
      "allergens": ["Gluten"],
      "price": 6.00,
      "calories": 300,
      "dietType": ["Vegà"],

      "additionalInfo": "Un clàssic mexicà amb un toc saludable.",
      "img": "img/guacamole_nachos.png",
    },
    {
      "id": "ENT11",
      "name": "Pà de pita amb hummus",
      "description": "Pita calenta acompanyada de hummus casolà.",
      "allergens": ["Gluten"],
      "price": 4.50,
      "calories": 220,
      "dietType": ["Vegà"],

      "additionalInfo": "Ideal per a vegans.",
      "img": "img/pa_pita_hummus.png",
    },
    {
      "id": "ENT12",
      "name": "Bruschetta de tomàquet",
      "description": "Pa torrat amb tomàquet fresc, all i oli d'oliva.",
      "allergens": ["Gluten"],
      "price": 4.00,
      "calories": 150,
      "dietType": ["Vegà"],

      "additionalInfo": "Fresca i deliciosa.",
      "img": "img/bruschetta_tomaquet.png",
    },
    {
      "id": "ENT13",
      "name": "Carpaccio de vedella",
      "description":
          "Carpaccio de vedella acompanyat de rúcula, parmesà i oli d'oliva.",
      "allergens": ["Llet"],
      "price": 9.50,
      "calories": 250,
      "dietType": ["Sense gluten"],
      "additionalInfo": "Una opció sofisticada per a carnívors.",
      "img": "img/carpaccio_vedella.png",
    },
  ],
};

final Map<String, List<Map<String, dynamic>>> principals = {
  "pokes": [
    {
      "id": "PRI01",
      "name": "Poke de tonyina",
      "description":
          "Poke de tonyina fresca amb alvocat, ceba, alga nori, i salsa de soja.",
      "allergens": ["Peix", "Sèsam"],
      "price": 12.00,
      "calories": 350,
      "dietType": ["Sense gluten", "Alta en proteïnes"],
      "additionalInfo":
          "Ric en omega 3 i perfecte per a una dieta alta en proteïnes.",
      "img": "img/poke_tonyina.png",
    },
    {
      "id": "PRI02",
      "name": "Poke vegà",
      "description":
          "Poke vegà amb quinoa, alvocat, tomàquet, cogombre, edamame i salsa de sèsam.",
      "allergens": ["Sèsam"],
      "price": 11.00,
      "calories": 300,
      "dietType": ["Vegà", "Sense gluten"],
      "additionalInfo": "Una opció vegana, nutritiva i deliciosa.",
      "img": "img/poke_vega.png",
    },
  ],
  "wraps": [
    {
      "id": "PRI03",
      "name": "Wrap de pollastre i verdures",
      "description":
          "Wrap amb pollastre, cogombre, alvocat, i salsa de mostassa.",
      "allergens": ["Gluten"],
      "price": 8.50,
      "calories": 350,
      "dietType": ["Alta en proteïnes"],
      "additionalInfo": "Una opció ràpida i saludable.",
      "img": "img/wrap_pollastre.png",
    },
    {
      "id": "PRI04",
      "name": "Wrap vegà",
      "description": "Wrap de verdures fresques, alvocat, i salsa de tahini.",
      "allergens": ["Gluten"],
      "price": 7.00,
      "calories": 280,
      "dietType": ["Vegà"],
      "additionalInfo": "Lleuger i ple de nutrients.",
      "img": "img/wrap_vega.png",
    },
  ],
  "amanides": [
    {
      "id": "PRI05",
      "name": "Amanida de quinoa i pollastre",
      "description":
          "Quinoa, pollastre a la planxa, espinacs, tomàquet i alvocat.",
      "allergens": [],
      "price": 10.50,
      "calories": 400,
      "dietType": ["Sense gluten", "Alta en proteïnes"],
      "additionalInfo": "Perfecte per a una dieta equilibrada.",
      "img": "img/amanida_quina_pollastre.png",
    },
    {
      "id": "PRI06",
      "name": "Amanida  de salmó i alvocat",
      "description":
          "Salmó a la planxa, alvocat, enciam, cogombre i vinagreta de llimona.",
      "allergens": ["Peix"],
      "price": 11.00,
      "calories": 350,
      "dietType": ["Sense gluten", "Alta en proteïnes"],
      "additionalInfo": "Una opció fresca i saludable.",
      "img": "img/amanida_salmo.png",
    },
    {
      "id": "PRI07",
      "name": "Amanida mediterrània",
      "description":
          "Amanida amb enciam, tomàquet, cogombre, olives, formatge feta i vinagreta.",
      "allergens": ["Llet"],
      "price": 9.00,
      "calories": 220,
      "dietType": ["Vegetarià", "Sense gluten"],

      "additionalInfo": "Una opció lleugera i fresca.",
      "img": "img/amandia_mediterrania.png",
    },
    {
      "id": "PRI08",
      "name": "Amanida César",
      "description":
          "Amanida amb enciam, pollastre, crostons, formatge parmesà i salsa César.",
      "allergens": ["Gluten", "Llet"],
      "price": 10.00,
      "calories": 450,
      "dietType": [],

      "additionalInfo": "Una opció clàssica amb un toc saludable.",
      "img": "img/amanida_cesar.png",
    },
    {
      "id": "PRI09",
      "name": "Amanida de fruites tropicals",
      "description":
          "Barreja de fruites tropicals amb mango, pinya, kiwi i llavors de chia.",
      "allergens": [],
      "price": 7.00,
      "calories": 150,
      "dietType": ["Vegà", "Sense gluten"],

      "additionalInfo": "Una opció fresca i lleugera.",
      "img": "img/amanida_fruites_tropicals.png",
    },
  ],
  "altres": [
    {
      "id": "PRI10",
      "name": "Bowl de salmó",
      "description":
          "Bowl de salmó amb quinoa, alvocat, alga nori, edamame i salsa de soja.",
      "allergens": ["Peix", "Sèsam"],
      "price": 12.50,
      "calories": 400,
      "dietType": ["Sense gluten", "Alta en proteïnes"],

      "additionalInfo": "Ideal per als amants del peix cru.",
      "img": "img/bowl_salmo.png",
    },
    {
      "id": "PRI11",
      "name": "Sushi vegà",
      "description": "Sushi amb arròs, alvocat, cogombre, pebrot i algues.",
      "allergens": ["Sèsam"],
      "price": 13.00,
      "calories": 350,
      "dietType": ["Vegà", "Sense gluten"],

      "additionalInfo": "Deliciós i perfecte per a vegans.",
      "img": "img/sushi_vega.png",
    },
    {
      "id": "PRI12",
      "name": "Tàrtar de vedella",
      "description":
          "Tàrtar de vedella amb ceba morada, mostassa, ou, i oli d'oliva.",
      "allergens": ["Ous", "Sèsam"],
      "price": 14.00,
      "calories": 400,
      "dietType": ["Sense gluten"],

      "additionalInfo": "Rica en proteïnes i ideal per als amants de la carn.",
      "img": "img/tartar_vedella.png",
    },
  ],
};

Map<String, List<Map<String, dynamic>>> begudes = {
  "kombuches": [
    {
      "id": "BEG01",
      "name": "Kombucha de gingebre i llimona",
      "description":
          "Kombucha refrescant amb gingebre natural i un toc de llimona.",
      "allergens": [],
      "price": 3.50,
      "calories": 60,
      "isAlcoholic": false,
      "additionalInfo": "Una opció ideal per millorar la digestió.",
      "img": "img/kombucha_gingebre.png",
    },
    {
      "id": "BEG02",
      "name": "Kombucha de fruites del bosc",
      "description": "Kombucha amb fruits del bosc i un toc d'herbes fresques.",
      "allergens": [],
      "price": 3.50,
      "calories": 70,
      "isAlcoholic": false,
      "additionalInfo": "Una beguda refrescant i rica en antioxidants.",
      "img": "img/kombucha_fruits_bosc.png",
    },
  ],
  "aigues": [
    {
      "id": "BEG03",
      "name": "Aigua de coco",
      "description": "Aigua de coco natural sense sucre afegit.",
      "allergens": [],
      "price": 2.50,
      "calories": 45,
      "isAlcoholic": false,
      "additionalInfo": "Hidrata't de forma natural.",
      "img": "img/aigua_coco.png",
    },
    {
      "id": "BEG04",
      "name": "Aigua amb gas",
      "description": "Aigua mineral amb gas per a un toc refrescant.",
      "allergens": [],
      "price": 2.00,
      "calories": 0,
      "isAlcoholic": false,
      "additionalInfo": "Una opció lleugera i refrescant.",
      "img": "img/aigua_gas.png",
    },
  ],
  "te": [
    {
      "id": "BEG05",
      "name": "Té gelat de menta",
      "description": "Té fresc amb un toc de menta i llima.",
      "allergens": [],
      "price": 3.00,
      "calories": 50,
      "isAlcoholic": false,
      "additionalInfo": "Refresca't amb un te saludable.",
      "img": "img/te_gelat_menta.png",
    },
    {
      "id": "BEG06",
      "name": "Té verd",
      "description": "Té verd natural amb un toc de llimona.",
      "allergens": [],
      "price": 3.00,
      "calories": 30,
      "isAlcoholic": false,
      "additionalInfo": "Perfecte per a relaxar-se durant el sopar.",
      "img": "img/te_verd.png",
    },
  ],
  "altres": [
    {
      "id": "BEG07",
      "name": "Cervesa sense alcohol",
      "description": "Cervesa sense alcohol refrescant.",
      "allergens": ["Cervesa"],
      "price": 2.50,
      "calories": 100,
      "isAlcoholic": false,
      "additionalInfo": "Una opció refrescant per a qualsevol hora.",
      "img": "img/cervesa_sense_alcohol.png",
    },

    {
      "id": "BEG08",
      "name": "Cervesa zero zero Tostada",
      "description": "Cervesa 0.0 tostada refrescant.",
      "allergens": ["Cervesa"],
      "price": 2.50,
      "calories": 100,
      "isAlcoholic": false,
      "additionalInfo": "Una opció refrescant i de sabor intens.",
      "img": "img/cervesa_00.png",
    },
  ],
};
