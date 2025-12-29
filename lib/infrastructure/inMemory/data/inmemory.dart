final Map<
  String,
  List<Map<String, dynamic>>
>
entrants = {
  "amanides": [
    {
      "name": "Amanida mediterrània",
      "description":
          "Enciam, tomàquet, cogombre, olives, formatge feta i vinagreta.",
      "allergens": ["Llet"],
      "price": 9.00,
      "calories": 220,
      "dietType": [
        "Sense gluten",
        "Vegetarià",
      ],
      "additionalInfo":
          "Fresca i lleugera.",
      "img": "",
    },
    {
      "name":
          "Amanida de quinoa i verdures",
      "description":
          "Quinoa, espinacs, pebrot, ceba morada i alvocat.",
      "allergens": [],
      "price": 8.50,
      "calories": 300,
      "dietType": [
        "Vegà",
        "Sense gluten",
      ],
      "additionalInfo":
          "Una opció nutritiva i lleugera.",
    },
    {
      "name": "Amanida caprese",
      "description":
          "Tomàquet, mozzarella fresca, alfàbrega i oli d'oliva extra verge.",
      "allergens": ["Llet"],
      "price": 6.50,
      "calories": 200,
      "dietType": [
        "Sense gluten",
        "Vegetarià",
      ],
      "additionalInfo":
          "Fresca i lleugera.",
    },
  ],
  "tartars": [
    {
      "name": "Tartar de tonyina",
      "description":
          "Tartar fresc de tonyina amb alvocat, llavors de sèsam i salsa de soja.",
      "allergens": ["Peix", "Sèsam"],
      "price": 7.50,
      "calories": 200,
      "dietType": [
        "Sense gluten",
        "Baja en carbohidrats",
      ],
      "additionalInfo":
          "Rica en omega 3.",
    },
    {
      "name": "Tartar de salmó",
      "description":
          "Salmó fresc amb alvocat, llavors de sèsam i salsa teriyaki.",
      "allergens": ["Peix", "Sèsam"],
      "price": 8.00,
      "calories": 180,
      "dietType": ["Sense gluten"],
      "additionalInfo":
          "Proteïna saludable per començar.",
    },
    {
      "name": "Tartar de verdures",
      "description":
          "Tartar fresc de cogombre, alvocat, tomàquet i ceba morada.",
      "allergens": [],
      "price": 5.50,
      "calories": 180,
      "dietType": [
        "Vegà",
        "Sense gluten",
      ],

      "additionalInfo":
          "Lleuger i fresc.",
    },
  ],
  "rollitos": [
    {
      "name": "Rollitos vietnamites",
      "description":
          "Rollitos d'arròs farcits de verdures fresques i salsa de cacauet.",
      "allergens": [
        "Cacauet",
        "Gluten",
      ],
      "price": 7.00,
      "calories": 230,
      "dietType": ["Vegà"],
      "additionalInfo":
          "Edat de l'orient més saludable.",
    },
    {
      "name": "Rollitos de primavera",
      "description":
          "Rollitos d'arròs farcits amb verdures i salsa de soja.",
      "allergens": ["Sèsam"],
      "price": 6.00,
      "calories": 200,
      "dietType": [
        "Vegà",
        "Sense gluten",
      ],
      "additionalInfo":
          "Frescos i lleugers.",
    },
  ],
  "altres": [
    {
      "name": "Hummus clàssic",
      "description":
          "Hummus casolà amb pa de pita i verdures fresques.",
      "allergens": ["Gluten", "Llet"],
      "price": 5.00,
      "calories": 250,
      "dietType": [
        "Vegà",
        "Sense gluten",
      ],

      "additionalInfo":
          "Ideal per a picoteig saludable.",
    },
    {
      "name": "Guacamole amb nachos",
      "description":
          "Guacamole fresc fet amb alvocat madur i servit amb nachos cruixents.",
      "allergens": ["Gluten"],
      "price": 6.00,
      "calories": 300,
      "dietType": ["Vegà"],

      "additionalInfo":
          "Un clàssic mexicà amb un toc saludable.",
    },
    {
      "name": "Pà de pita amb hummus",
      "description":
          "Pita calenta acompanyada de hummus casolà.",
      "allergens": ["Gluten"],
      "price": 4.50,
      "calories": 220,
      "dietType": ["Vegà"],

      "additionalInfo":
          "Ideal per a vegans.",
    },
    {
      "name": "Bruschetta de tomàquet",
      "description":
          "Pa torrat amb tomàquet fresc, all i oli d'oliva.",
      "allergens": ["Gluten"],
      "price": 4.00,
      "calories": 150,
      "dietType": ["Vegà"],

      "additionalInfo":
          "Fresca i deliciosa.",
    },
    {
      "name": "Carpaccio de vedella",
      "description":
          "Carpaccio de vedella acompanyat de rúcula, parmesà i oli d'oliva.",
      "allergens": ["Llet"],
      "price": 9.50,
      "calories": 250,
      "dietType": ["Sense gluten"],
      "additionalInfo":
          "Una opció sofisticada per a carnívors.",
    },
  ],
};

final Map<
  String,
  List<Map<String, dynamic>>
>
principals = {
  "pokes": [
    {
      "name": "Poke de tonyina",
      "description":
          "Poke de tonyina fresca amb alvocat, ceba, alga nori, i salsa de soja.",
      "allergens": ["Peix", "Sèsam"],
      "price": 12.00,
      "calories": 350,
      "dietType": [
        "Sense gluten",
        "Alta en proteïnes",
      ],
      "additionalInfo":
          "Ric en omega 3 i perfecte per a una dieta alta en proteïnes.",
    },
    {
      "name": "Poke vegà",
      "description":
          "Poke vegà amb quinoa, alvocat, tomàquet, cogombre, edamame i salsa de sèsam.",
      "allergens": ["Sèsam"],
      "price": 11.00,
      "calories": 300,
      "dietType": [
        "Vegà",
        "Sense gluten",
      ],
      "additionalInfo":
          "Una opció vegana, nutritiva i deliciosa.",
    },
  ],
  "wraps": [
    {
      "name":
          "Wrap de pollastre i verdures",
      "description":
          "Wrap amb pollastre, cogombre, alvocat, i salsa de mostassa.",
      "allergens": ["Gluten"],
      "price": 8.50,
      "calories": 350,
      "dietType": [
        "Sense gluten",
        "Alta en proteïnes",
      ],
      "additionalInfo":
          "Una opció ràpida i saludable.",
    },
    {
      "name": "Wrap vegà",
      "description":
          "Wrap de verdures fresques, alvocat, i salsa de tahini.",
      "allergens": ["Gluten"],
      "price": 7.00,
      "calories": 280,
      "dietType": [
        "Vegà",
        "Sense gluten",
      ],
      "additionalInfo":
          "Lleuger i ple de nutrients.",
    },
  ],
  "amanides": [
    {
      "name":
          "Amanida de quinoa i pollastre",
      "description":
          "Quinoa, pollastre a la planxa, espinacs, tomàquet i alvocat.",
      "allergens": [],
      "price": 10.50,
      "calories": 400,
      "dietType": [
        "Sense gluten",
        "Alta en proteïnes",
      ],
      "additionalInfo":
          "Perfecte per a una dieta equilibrada.",
    },
    {
      "name":
          "Amanida  de salmó i alvocat",
      "description":
          "Salmó a la planxa, alvocat, enciam, cogombre i vinagreta de llimona.",
      "allergens": ["Peix"],
      "price": 11.00,
      "calories": 350,
      "dietType": [
        "Sense gluten",
        "Alta en proteïnes",
      ],
      "additionalInfo":
          "Una opció fresca i saludable.",
    },
    {
      "name": "Amanida mediterrània",
      "description":
          "Amanida amb enciam, tomàquet, cogombre, olives, formatge feta i vinagreta.",
      "allergens": ["Llet"],
      "price": 9.00,
      "calories": 220,
      "dietType": [
        "Vegetarià",
        "Sense gluten",
      ],

      "additionalInfo":
          "Una opció lleugera i fresca.",
    },
    {
      "name": "Amanida César",
      "description":
          "Amanida amb enciam, pollastre, crostons, formatge parmesà i salsa César.",
      "allergens": ["Gluten", "Llet"],
      "price": 10.00,
      "calories": 450,
      "dietType": ["Sense gluten"],

      "additionalInfo":
          "Una opció clàssica amb un toc saludable.",
    },
    {
      "name":
          "Amanida de fruites tropicals",
      "description":
          "Barreja de fruites tropicals amb mango, pinya, kiwi i llavors de chia.",
      "allergens": [],
      "price": 7.00,
      "calories": 150,
      "dietType": [
        "Vegà",
        "Sense gluten",
      ],

      "additionalInfo":
          "Una opció fresca i lleugera.",
    },
  ],
  "altres": [
    {
      "name": "Bowl de salmó",
      "description":
          "Bowl de salmó amb quinoa, alvocat, alga nori, edamame i salsa de soja.",
      "allergens": ["Peix", "Sèsam"],
      "price": 12.50,
      "calories": 400,
      "dietType": [
        "Sense gluten",
        "Alta en proteïnes",
      ],

      "additionalInfo":
          "Ideal per als amants del peix cru.",
    },
    {
      "name": "Sushi vegà",
      "description":
          "Sushi amb arròs, alvocat, cogombre, pebrot i algues.",
      "allergens": ["Sèsam"],
      "price": 13.00,
      "calories": 350,
      "dietType": [
        "Vegà",
        "Sense gluten",
      ],

      "additionalInfo":
          "Deliciós i perfecte per a vegans.",
    },
    {
      "name": "Tàrtar de vedella",
      "description":
          "Tàrtar de vedella amb ceba morada, mostassa, ou, i oli d'oliva.",
      "allergens": ["Ous", "Sèsam"],
      "price": 14.00,
      "calories": 400,
      "dietType": ["Sense gluten"],

      "additionalInfo":
          "Rica en proteïnes i ideal per als amants de la carn.",
    },
  ],
};

Map<String, List<Map<String, dynamic>>>
begudes = {
  "kombuches": [
    {
      "name":
          "Kombucha de gingebre i llimona",
      "description":
          "Kombucha refrescant amb gingebre natural i un toc de llimona.",
      "allergens": [],
      "price": 3.50,
      "calories": 60,
      "isAlcoholic": false,
      "additionalInfo":
          "Una opció ideal per millorar la digestió.",
    },
    {
      "name":
          "Kombucha de fruites del bosc",
      "description":
          "Kombucha amb fruits del bosc i un toc d'herbes fresques.",
      "allergens": [],
      "price": 3.50,
      "calories": 70,
      "isAlcoholic": false,
      "additionalInfo":
          "Una beguda refrescant i rica en antioxidants.",
    },
  ],
  "aigues": [
    {
      "name": "Aigua de coco",
      "description":
          "Aigua de coco natural sense sucre afegit.",
      "allergens": [],
      "price": 2.50,
      "calories": 45,
      "isAlcoholic": false,
      "additionalInfo":
          "Hidrata't de forma natural.",
    },
    {
      "name": "Aigua amb gas",
      "description":
          "Aigua mineral amb gas per a un toc refrescant.",
      "allergens": [],
      "price": 2.00,
      "calories": 0,
      "isAlcoholic": false,
      "additionalInfo":
          "Una opció lleugera i refrescant.",
    },
  ],
  "te": [
    {
      "name": "Té gelat de menta",
      "description":
          "Té fresc amb un toc de menta i llima.",
      "allergens": [],
      "price": 3.00,
      "calories": 50,
      "isAlcoholic": false,
      "additionalInfo":
          "Refresca't amb un te saludable.",
    },
    {
      "name": "Té verd",
      "description":
          "Té verd natural amb un toc de llimona.",
      "allergens": [],
      "price": 3.00,
      "calories": 30,
      "isAlcoholic": false,
      "additionalInfo":
          "Perfecte per a relaxar-se durant el sopar.",
    },
  ],
  "altres": [
    {
      "name": "Cervesa sense alcohol",
      "description":
          "Cervesa sense alcohol refrescant.",
      "allergens": ["Cervesa"],
      "price": 2.50,
      "calories": 100,
      "isAlcoholic": false,
      "additionalInfo":
          "Una opció refrescant per a qualsevol hora.",
    },
    {
      "name":
          "Cervesa zero zero Toztada",
      "description":
          "Cervesa 0.0 tostada refrescant.",
      "allergens": ["Cervesa"],
      "price": 2.50,
      "calories": 100,
      "isAlcoholic": false,
      "additionalInfo":
          "Una opció refrescant i de sabor intens.",
    },
  ],
};
