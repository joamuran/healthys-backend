# Casos d'ús

Els casos d'ús representen la lògica de negoci; què és el que pot fer l'aplicació.

Pràcticament, podria tractar-se de la implementació directa dels casos d'ús definits a un diagrama UML.

Tenim una explicació dels casos d'ús en Dart a: https://medium.com/@ahmedhosni803/why-and-when-to-use-use-cases-in-flutter-clean-architecture-438e796be1d6

En aquest cas, els casos d'ús seran:

* Obtenir la llista d'entrants: get_entrants_use_case.dart
* Obtenir la llista de plats principals: get_principals_use_case.dart
* Obtenir la llista de begudes: get_begudes_use_case.dart

# Bundles per feature

## Bundles de casos d'ús

A mesura que el projecte creix, una mateixa *feature* (per exemple, entrants) acostuma a necessitar més casos d'ús: llistar, obtindre per id, crear, editar, eliminar, etc. Si injectem cada cas d'ús per separat, els constructors dels controladors es fan cada vegada més llargs.

Per això utilitzem bundles (paquets o agrupadors de casos d'ús).

Un bundle és una classe que:

* agrupa tots els casos d'ús d'una mateixa feature,
* no conté lògica de negoci (només referències a casos d'ús),
* facilita la injecció de dependències perquè els controladors reben un únic objecte estable.

En aquest projecte tenim els bundles següents:

* *EntrantsUseCases* (carpeta `usecases/entrants/`)
* *PrincipalsUseCases* (carpeta `usecases/principals/`)
* *BegudesUseCases* (carpeta `usecases/begudes/`)

Els controladors reben el bundle corresponent i utilitzen els casos d'ús que necessiten, per exemple:

* `useCases.getEntrants`
* `useCases.getPrincipals`
* `useCases.getBegudes`

Això permet que, en el futur, afegir operacions CRUD (com `addEntrant`,` deletePrincipal`, etc.) implique afegir nous casos d'ús al bundle, sense haver de redissenyar els routers ni reescriure constructors constantment.

