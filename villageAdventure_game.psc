// Amisadai Morales Quiñones
// Illiana Laboy Nieves
// Zireily Rivera Estrella
// FECHA: Noviembre, 2023

///////// UI FUNCTIONS

Funcion titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints Por Referencia, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar Por Valor) 
	Borrar Pantalla
	// nombres de enemigos
	Si candySpider == Verdadero Entonces
		enemyName = "CANDY SPIDER"
	SiNo
		Si puddingGoblin == Verdadero Entonces
			enemyName = "WINTER WOLF"
		SiNo
			Si gummyBear == Verdadero Entonces
				enemyName = "TWO-HEADED SNAKE"
			SiNo 
				Si dragon == Verdadero Entonces
					enemyName = "IGNARIUS THE DRAGON"
				FinSi
			FinSi	
		FinSi
	FinSi
	//	
	space
	Escribir " ------------------------------------------- VILLAGE ADVENTURE GAME ----------------------------------------------"
	// Top UI 
	Si nombre == "" Entonces
		space
	SiNo
		Si healthPoints > 1 Entonces
			Escribir Sin Saltar "  (", MAYUSCULAS(nombre), ") HEALTH POINTS: ", healthPoints, "                              ||        "
		SiNo
			Escribir Sin Saltar "  (", MAYUSCULAS(nombre), ") HEALTH POINTS: 0                              ||        "
		FinSi
	FinSi
	Si (candySpider == Verdadero) o (gummyBear == Verdadero) o (puddingGoblin == Verdadero) o (dragon == Verdadero) Entonces
		Si enemyHealth <= 0			
			Escribir Sin Saltar "(", enemyName, ") HEALTH POINTS: 0"
		SiNo			
			Escribir Sin Saltar "(", enemyName, ") HEALTH POINTS: ", enemyHealth
		FinSi
	FinSi 
	linebreak
	Si raza == "" Entonces
		space
		Escribir Sin Saltar"  [ ??? ]"
	SiNo
		space
		Escribir Sin Saltar"  [ ", MAYUSCULAS(raza), " ]"
	FinSi
	Si raza <> "" Entonces
		Escribir Sin Saltar "        "
		Si (candySpider == Verdadero) o (puddingGoblin == Verdadero) o (gummyBear == Verdadero) o (dragon == Verdadero) Entonces
			Escribir Sin Saltar "	[ STRENGHT: ", strenghtPoints, " ] "
		SiNo
			Escribir "	[ STRENGHT: ", strenghtPoints, " ] "
		FinSi
	SiNo
		Escribir Sin Saltar "             "
		Escribir "  [ ??? ]"
	FinSi
	// info sobre criaturas
	Si candySpider == Verdadero Entonces
		Escribir Sin Saltar "                        "
		Escribir "� A Candy Spider is formed when three Sugar Spiders �"
	SiNo
		Escribir Sin Saltar "                        "
		Si puddingGoblin == Verdadero Entonces
			Escribir "� Winter Wolves live in beautiful snowy mountains and �"
		SiNo
			Si gummyBear == Verdadero Entonces
				Escribir "� Snakes are sometimes born with two heads, as seems �"
			SiNo 
				Si dragon == Verdadero Entonces
					Escribir "  - Ignarius search around disraught. - "
				FinSi
			FinSi
		FinSi
	FinSi
	//
	// More top UI
	Si job == "" Entonces
		space
		Escribir Sin Saltar"  [ ??? ]"
	SiNo
		space
		Escribir Sin Saltar "  [ ", MAYUSCULAS(job), " ]"
	FinSi
	Si raza <> "" Entonces
		Escribir Sin Saltar "        "
		Si (candySpider == Verdadero) o (puddingGoblin == Verdadero) o (gummyBear == Verdadero) o (dragon == Verdadero) Entonces
			Escribir Sin Saltar "  [ MAGIC: ", magicPoints, " ] "
		SiNo
			Si job == "Mage" Entonces
				Escribir "  [ MAGIC: ", magicPoints, " ] "
			SiNo
				Escribir "  [ MAGIC: ", magicPoints, " ] "
			FinSi	
		FinSi
	SiNo
		Escribir Sin Saltar "             "
		Escribir "  [ ??? ]"
	FinSi
	//info sobre criaturas
	Si candySpider == Verdadero Entonces
		Escribir Sin Saltar "                          "
		Escribir "� join conciousness and stack upon each other. �"
	SiNo
		Escribir Sin Saltar "                          "
		Si puddingGoblin == Verdadero Entonces
			Escribir "� cold bountiful plains with their family, or pack. �"
		SiNo
			Si gummyBear == Verdadero Entonces
				Escribir "� to be the case for this snake. �"
			SiNo 
				Si dragon == Verdadero Entonces
					Escribir "  - What could it be looking for ? ? - "
				FinSi
			FinSi
		FinSi
	FinSi
	//
	linebreak
	Si (candySpider == Falso) y (puddingGoblin == Falso)y (gummyBear == Falso) y (dragon == Falso) Entonces
		jugador(raza, job)
	FinSi
	// backgrounds
	Si candySpider == Verdadero Entonces
		space
		Escribir "         ooo                       oooo                oo             ooo                       oooo              "
		Escribir "    ^          __              ^             _____          ^    ^          __              ^             _____   "
		Escribir "  -/ \/\^^^----||---^^^-----/\/ \/\----^^^---|||||-------/\/ \--/ \/\^^^----||---^^^-----/\/ \/\----^^^---|||||-"
		tripleSpace
	SiNo
		Si puddingGoblin == Verdadero Entonces
			space
			Escribir "        /\oo/\           oooo /\  /\  /\oo/\ooo         oo        /\   ooo                /\oo/\ooo          oo   "
			Escribir "       /^^\/^^\              /^^\/^^\/^^\/^^\                 /\/^^^^\/\                 /^^\/^^\              "
			Escribir "  ----/    \   \---____-----/   /    \  /    \--_____--------/ /      \ \-----_____-----/   /    \------____----"
		SiNo
			Si gummyBear == Verdadero Entonces
				space
				Escribir "         {} ooo {}           {}       oo          {}                    ooo      {}            {} oo    {}       "
				Escribir "  -^-O---{}-----{}-------O---{}---^---------------{}------^--O--O----------------{}---^-----O--{}-------{}--^--- "
				Escribir "  =====^========{}===^======={}==============^===========================^======={}==================^=={}====== "
			FinSi
		FinSi
	FinSi
	space
	//jugador
FinFuncion

Funcion next  // important pause for scenes
	sec
	linebreak
	doubleSpace
	Escribir "    [...PRESS ANY KEY TO CONTINUE...]"
	Esperar Tecla
FinFuncion

Funcion incorrect // when input is incorrect
	space
	Escribir "     *INCORRECT INPUT*"
	Esperar 2.0 Segundos
FinFuncion

//SPACES
Funcion tripleSpace  
	doubleSpace
	space
FinFuncion

Funcion doubleSpace
	space
	space
FinFuncion

Funcion space
	Escribir ""
FinFuncion
//

Funcion question // to hold question choices
	doubleSpace
	Escribir '       > What will you do? <'
	Escribir '  __________________________________________________ '
	space
FinFuncion

Funcion questionEnd
Escribir '  __________________________________________________ '
space
FinFuncion

Funcion sec
	Esperar 1.0 Segundos
FinFuncion

Funcion dotbreak // divisions
	Escribir " . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . "
	space
FinFuncion

Funcion lineBreak // divisions
	space
	Escribir " -----------------------------------------------------------------------------------------------------------------"
FinFuncion

Funcion plus  // after every encounter, except if escaped
	sec
	dotbreak
	Escribir "    + 8 STRENGHT"
	Escribir "    + 8 MAGIC"
	next
FinFuncion

//////// GRAPHIC FUNCTIONS

funcion dragon_animation ///////////////////////////////////////// title screen animation	
	Esperar 3.0 Segundos
	Borrar Pantalla
	tripleSpace
	tripleSpace                                                          //3
	escribir "            {\_/}        "                                                         //4
	escribir "           ( o o )       "                                                          //5
	escribir "        __/ |^ ^|        "                                                         //6
	escribir "        /__ (vvv)        "                                                         //7
	escribir "           \\            "                                                        //8
	escribir "            )))          "                                                        //9
	tripleSpace                                                                    //12
	Escribir ""                                                                       //13
	Escribir "                                                   ______                   "                                                                       //14
	escribir "                                                  /      \          "               //15
	escribir "                                                 /________\               "         //16
	escribir "                                                 |        |       "                //17
	escribir "                                                 |    _   |  Beware of the dragon...        "            //18
	escribir "            _____________________________________|___| |__|___________________________________________"        //19
	space
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace
	escribir "                                          "                         //2
	escribir "                 {\_/}           "                         //3
	escribir "                ( o o )          "                        //4
	escribir "        ________/|^ ^|           "                         //5
	escribir "          /  /__ (vvv)           "                         //6
	escribir "         /  /  \\                "                         //7
	escribir "           |    )))              "                         //8
	escribir "           |                     "                         //9
	escribir "        __/                      "                         //10
	escribir "                                      "     //11
	tripleSpace                        //1
	Escribir "                                                   ______           "                                     //13
	escribir "                                                  /      \          "//14
	escribir "                                                 /________\               "//15
	escribir "                                                 |        |       "       //16
	escribir "                                                 |    _   |  Beware of the dragon...        "      //17
	escribir "            _____________________________________|___| |__|___________________________________________"//18
	space
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace
	Escribir "                   _____              "                            //1
	Escribir "                --**    /             "                             //2
	Escribir "              /       |               "                             //3
	Escribir "             /        |   {\_/}       "                            //4
	Escribir "            / /\  /\  \  ( o o )      "                        //5
	Escribir "        \   V   \/ _\  \/ |^ ^|       "                       //6
	Escribir "         \____--**     __ (vvv)       "                        //7
	Escribir "        \__ __       )   \\           "                         //8
	Escribir "           **  **\  /     )))         "                       //9
	Escribir "                  )))                 "                      //10
	tripleSpace                                                   //13
	Escribir "                                                   ______           "                                                       //14
	escribir "                                                  /      \          " //15
	escribir "                                                 /________\               "//16
	escribir "                                                 |        |       "        //17
	escribir "                                                 |    _   |  Beware of the dragon...       "    //18
	escribir "            _____________________________________|___| |__|___________________________________________"//19
	escribir "                                                              "//20
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace   
	tripleSpace//3
	escribir "                               {\_/}        "                         //4
	escribir "                              ( o o )       "                         //5
	escribir "            /\ ______________/ |^ ^|        "                         //6
	escribir "            \ \\___________/__ (vvv)        "                         //7
	escribir "             \__ ___      )   \\            "                         //8
	escribir "                **  **\  /     )))          "                         //9
	escribir "                       )))                  "                         //10
	tripleSpace                                                            //13
	Escribir "                                                   ______           "                                                             //14
	escribir "                                                  /      \          "     //15
	escribir "                                                 /________\               "//16
	escribir "                                                 |        |       "        //17
	escribir "                                                 |    _   |  Beware of the dragon...        "     //18
	escribir "            _____________________________________|___| |__|___________________________________________"//19
	space
	esperar 1 Segundos
	Borrar Pantalla
	doubleSpace 
	tripleSpace//2
	escribir "                                  {\_/}           "                         //3
	escribir "                                 ( o o )          "                        //4
	escribir "               /\  ^ ____________/|^ ^|           "                         //5
	escribir "               \ \/ \  /\  /  /__ (vvv)           "                         //6
	escribir "                \/   \/  \/  /  \\                "                         //7
	escribir "                /           |    )))              "                         //8
	escribir "                --          |                     "                         //9
	escribir "                  **_______/                      "                         //10
	escribir "                                              "                             //11
	doubleSpace                                                                  //13
	escribir "                                                   ______           "                                                                   //14
	escribir "                                                  /      \          "          //15
	escribir "                                                 /________\               "    //16
	escribir "                                                 |        |       "             //17
	escribir "                                                 |    _   |  Beware of the dragon...        "         //18
	escribir "            _____________________________________|___| |__|___________________________________________"    //19
	escribir "                                                              "    //20
	esperar 1 Segundos
	Borrar Pantalla	
	tripleSpace
	escribir "                           _____                       "                          //1
	escribir "                       --**    /                       "                          //2
	escribir "                      /       |                        "                          //3
	escribir "                     /        |  {\___                 "                          //4
	escribir "                    / /\  /\  \  (   o)                "                          //5
	escribir "               /\   V   \/ _\  \/  | ^\                "                          //6
	escribir "               \ \____--**     __ / ( \*\              "                          //7
	escribir "                \__ __       )   \\    \**\            "                          //8
	escribir "                  **  **\  /      )))   \***\          "                          //9
	escribir "                         )))             \****\        "                          //10
	escribir "                                           \*****\      "                          //11
	escribir "                                             \******\     "                          //12
	escribir "                                                       "                          //13
	escribir "                                                   ______           "                          //14
	escribir "                                                  /      \          "                 //15
	escribir "                                                 /________\               "           //16
	escribir "                                                 |        |       "                   //17
	escribir "                                                 |    _   |  Beware of the dragon...        "                //18
	escribir "            _____________________________________|___| |__|___________________________________________"         //19
	space
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace
	doubleSpace                           //2
	escribir "                                 {\___            "                           //3
	escribir "                                 (   o)           "                            //4
	escribir "               /\  ^ ____________/  | ^\          "                           //5
	escribir "               \ \/ \  /\  /  /__ /  ( \*\         "                           //6
	escribir "                \/   \/  \/  /  \\      \**\       "                             //7
	escribir "                /           |    )))     \***\     "                             //8
	escribir "                --          |             \****\   "                           //9
	escribir "                  **_______/               \*****\ "                          //10
	escribir "                                            \******\       "                         //11
	escribir "                                             \*******\      "                           //12
	escribir "                                              \*******\     "                         //13
	escribir "                                                \********\             "                                    //14
	escribir "                                                  /      \          "            //15
	escribir "                                                //________\               "     //16
	escribir "                                              /  |        |       "           //17
	escribir "                                                 |    _   |  Beware of the dragon...        "        //18
	escribir "            _____________________________________|___| |__|___________________________________________"   //19
	space
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace
	tripleSpace                          //3
	escribir "                                 {\___        "                        //4
	escribir "                                 (   o)       "                        //5
	escribir "               /\ ______________/  | ^\       "                       //6
	escribir "               \ \\___________/__ / ( \*\     "                       //7
	escribir "                \__ ___      )   \\    \**\      "                     //8
	escribir "                   **  **\  /     )))   \***\    "                    //9
	escribir "                          )))            \****\                 "                     //10
	Escribir "                                           \*****\               "           //11
	Escribir "                                             \******)             "             //12
	Escribir "                                               \***)*()\ )         "            //13
	escribir "                                                 \()()) )()        "           //14
	escribir "                                                 (         )        "          //15
	escribir "                                                ( ________  )       "   //16
	escribir "                                             ||  |        |         "           //17
	escribir "                                            /    |    _   |  Beware of the dragon...       "        //18
	escribir "            _____________________________________|___| |__|___________________________________________"    //19
	space
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace
	escribir "                           _____                       "                   //1
	escribir "                       --**    /                       "                  //2
	escribir "                      /       |                        "                 //3
	escribir "                     /        |  {\___                 "                 //4
	escribir "                    / /\  /\  \  (   o)                "                 //5
	escribir "               /\   V   \/ _\  \/  | ^\                "                 //6
	escribir "               \ \____--**     __ / ( \*\              "                  //7
	escribir "                \__ __       )   \\    \**\            "                 //8
	escribir "                  **  **\  /      )))   \***\          "                 //9
	escribir "                         )))             \****\        "                //10
	escribir "                                           \*****\     "               //11
	Escribir "                                             \******(             "             //12
	Escribir "                                                \***(*( ) )         "            //13
	escribir "                                                 \( )()) )()        "           //14
	escribir "                                                 (         )        "          //15
	escribir "                                                ( ________ )       "   //16
	escribir "                                         (   /   |        |         "           //17
	escribir "                                       )) ) ||   |    _   |  Beware of the dragon...      "        //18
	escribir "            __________________________(____)_____|___| |__|___________________________________________"   //19
	space
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace
	doubleSpace
	escribir "                                        {\_/}           "
	escribir "                                       ( o o )          "
	escribir "                     /\  ^ ____________/|^ ^|           "
	escribir "                     \ \/ \  /\  /  /__ (vvv)           "
	escribir "                      \/   \/  \/  /  \\                "
	escribir "                      /           |    )))              "
	escribir "                      --          |                     "
	escribir "                        **_______/                      "
	escribir ""
	Escribir "                                                      (             "             //12
	Escribir "                                                    (( ) )         "            //13
	escribir "                                                  )( )) )((        "           //14
	escribir "                                                  (       )        "          //15
	escribir "                                                ( ________ )       "   //16
	escribir "                                         (       |        |         "           //17
	escribir "                                       ))(       |    _   |  Beware of the dragon...       "        //18
	escribir "            __________________________)____)_____|___| |__|___________________________________________"   //19
	escribir "                                                              "     //20
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace
	tripleSpace
	escribir "                                               {\_/}        "
	escribir "                                              ( o o )       "
	escribir "                            /\ ______________/ |^ ^|        "
	escribir "                            \ \\___________/__ (vvv)        "
	escribir "                             \__ ___      )   \\            "
	escribir "                                **  **\  /     )))          "
	escribir "                                       )))                  "
	escribir "        "
	Escribir "                                                      )             "             //12
	Escribir "                                                   ) ( ) (         "            //13
	escribir "                                                  (( )) )()        "           //14
	escribir "                                                 (        )        "          //15
	escribir "                                                ( ________ )       "   //16
	escribir "                                         )       |        |         "           //17
	escribir "                                       (  ()     |    _   |  Beware of the dragon...       "        //18
	escribir "            __________________________(____)_____|___| |__|___________________________________________"    //19
	escribir "                                                              "     //20
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace
	Escribir "                                                   _____              "
	Escribir "                                                --**    /             "
	Escribir "                                              /       |               "
	Escribir "                                             /        |   {\_/}       "
	Escribir "                                            / /\  /\  \  ( o o )      "
	Escribir "                                       /\   V   \/ _\  \/ |^ ^|       "
	Escribir "                                       \ \____--**     __ (vvv)       "
	Escribir "                                        \__ __       )   \\           "
	Escribir "                                          **  **\  /     )))          "
	Escribir "                                                 )))                  "
	escribir ""
	Escribir "                                                      (             "             //12
	Escribir "                                                    (( ) )         "            //13
	escribir "                                                 (( () )()        "           //14
	escribir "                                                (        )        "          //15
	escribir "                                                ( ________ )       "   //16
	escribir "                                         (       |        |         "           //17
	escribir "                                        ))(      |    _   |  Beware of the dragon...       "        //18
	escribir "            ___________________________(___)_____|___| |__|___________________________________________"    //19
	escribir "                                                              "     //20
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace
	doubleSpace
	escribir "                                                                      {\_/}           "
	escribir "                                                                     ( o o )          "
	escribir "                                                   /\  ^ ____________/|^ ^|           "
	escribir "                                                   \ \/ \  /\  /  /__ (vvv)           "
	escribir "                                                    \/   \/  \/  /  \\                "
	escribir "                                                    /           |    )))              "
	escribir "                                                    --          |                     "
	escribir "                                                      **_______/                      "
	escribir""        
	Escribir "                                                      (             "             //12
	Escribir "                                                    )()  )         "            //13
	escribir "                                                  )() ) )()        "           //14
	escribir "                                                   (       )        "          //15
	escribir "                                                 (________ )       "   //16
	escribir "                                        (        |        |         "           //17
	escribir "                                      (  ))      |    _   |  Beware of the dragon...       "        //18
	escribir "            __________________________(____)_____|___| |__|___________________________________________"    //19
	escribir "                                                              "     //20
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace
	tripleSpace
	escribir "                                                                             {\        "
	escribir "                                                                            ( o        "
	escribir "                                                          /\ ______________/ |^        "
	escribir "                                                          \ \\___________/__ (v        "
	escribir "                                                           \__ ___      )              "
	escribir "                                                              **  **\  /     ))        "
	escribir "                                                                     )))               "
	escribir "        "
	Escribir "                                                      )             "             //12
	Escribir "                                                    (( ) (         "            //13
	escribir "                                                  (( )) )()        "           //14
	escribir "                                                 (        )        "          //15
	escribir "                                                ( ________ )       "   //16
	escribir "                                         (       |        |         "           //17
	escribir "                                       ) ))      |    _   |  Beware of the dragon...       "        //18
	escribir "            _________________________(____)______|___| |__|___________________________________________"   //19
	escribir "                                                              "     //20
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace
	Escribir "                                                                            _____"
	Escribir "                                                                         --**    "
	Escribir "                                                                       /       | "
	Escribir "                                                                      /        | "
	Escribir "                                                                     / /\  /\  \ "
	Escribir "                                                                /\   V   \/ _\  \ "
	Escribir "                                                                \ \____--**     _"
	Escribir "                                                                 \__ __       )  "
	Escribir "                                                                   **  **\  /    "
	Escribir "                                                                          )))    "
	escribir "        "
	Escribir "                                                      (             "             //12
	Escribir "                                                    (( ) )         "            //13
	escribir "                                                  () )) )()        "           //14
	escribir "                                                 (       )         "          //15
	escribir "                                                ( ________ )       "   //16
	escribir "                                         )       |        |         "           //17
	escribir "                                       ( )(      |    _   |  Beware of the dragon...       "        //18
	escribir "            __________________________(____)_____|___| |__|___________________________________________"    //19
	escribir "                                                              "     //20
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace
	doubleSpace
	escribir "         ADVENTURE !                                 "
	doubleSpace
	escribir "                                                                    /\ __________"
	escribir "                                                                    \ \\_________"
	escribir "                                                                     \__ ___     "
	escribir "                                                                        **  **\  "
	escribir "                                                                               ))"
	escribir "        "
	Escribir "                                                      (             "             //12
	Escribir "                                                    (( ) )         "            //13
	escribir "                                                  ( )) )))        "           //14
	escribir "                                                 (         )        "          //15
	escribir "                                                ( ________ )       "   //16
	escribir "                                         )       |        |         "           //17
	escribir "                                       ( ))      |    _   |  Beware of the dragon...       "        //18
	escribir "            __________________________(____)_____|___| |__|___________________________________________"    //19
	escribir "                                                              "     //20	
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace
	doubleSpace                                           //2
	escribir "              WELCOME TO VILLAGE ADVENTURE !                                "
	doubleSpace
	escribir "                                                                               /\ "
	escribir "                                                                               \ "
	escribir "                                                                                \ "
	escribir "                                                                                 "
	escribir "                                                                                 "
	escribir "        "
	Escribir "                                                     )             "             //12
	Escribir "                                                    (( ) (         "            //13
	escribir "                                                  ( )) )()        "           //14
	escribir "                                                 (        )        "          //15
	escribir "                                                ( ________ )       "   //16
	escribir "                                         (       |        |         "           //17
	escribir "                                       ( ()      |    _   |  Beware of the dragon...       "        //18
	escribir "            __________________________(____)_____|___| |__|___________________________________________"    //19
	escribir "                                                              "     //20
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace
	doubleSpace
	escribir "                          WELCOME TO VILLAGE ADVENTURE !                                 "
	tripleSpace
	tripleSpace
	doubleSpace
	Escribir "                                                      (             "             //12
	Escribir "                                                    (( ) )         "            //13
	escribir "                                                  ( )) )))        "           //14
	escribir "                                                 (         )        "          //15
	escribir "                                                ( ________ )       "   //16
	escribir "                                         )       |        |         "           //17
	escribir "                                       ( ))      |    _   |  Beware of the dragon...       "        //18
	escribir "            __________________________(____)_____|___| |__|___________________________________________"
	escribir "                                                              "     //20	
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace
	doubleSpace
	escribir "                                         WELCOME TO VILLAGE ADVENTURE !                                         "
	tripleSpace
	tripleSpace
	doubleSpace
	Escribir "                                                      (             "             //12
	Escribir "                                                    ( () )         "            //13
	escribir "                                                 (( )) )()        "           //14
	escribir "                                                (        )        "          //15
	escribir "                                                ( ________ )       "   //16
	escribir "                                         )       |        |         "           //17
	escribir "                                     ( ( )       |    _   |  Beware of the dragon...        "        //18
	escribir "            __________________________(____)_____|___| |__|___________________________________________"    //19
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace
	space
	escribir "                                            **                  **        "
	space
	escribir "                                     _ * WELCOME TO VILLAGE ADVENTURE ! * _                "
	escribir "                                      *  WELCOME TO VILLAGE ADVENTURE !  *                                       "
	escribir "                                       --------------------------------- "
	tripleSpace
	doubleSpace
	Escribir "                                                      (             "             //12
	Escribir "                                                    (( ) )         "            //13
	escribir "                                                  ( )) )))        "           //14
	escribir "                                                 (         )        "          //15
	escribir "                                                ( ________ )       "   //16
	escribir "                                         )       |        |         "           //17
	escribir "                                       ( ))      |    _   |  Beware of the dragon...       "        //18
	escribir "            __________________________(____)_____|___| |__|___________________________________________"
	escribir "                                                              "     //20	
	esperar 1 Segundos
	Borrar Pantalla
	tripleSpace
	space
	escribir "                                  *\                                        /*    "
	escribir "                                     _*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*_  "
	escribir "                                                   WELCOME TO                         "
	escribir "                                     *-*      VILLAGE ADVENTURE !       *-*           "
	escribir "                                    | *---------------------------------* |  "
	escribir "                                               >   THE GAME   <             "
	escribir "                                     -*-*-*-                     -*-*-*-*-  "
	escribir "                                     ^*-*-*-*-*-----------------*-*-*-*-*^  "
	escribir "                                  */                                        \*    "
	space
	Escribir "                                                      (             "             //12
	Escribir "                                                    ( () )         "            //13
	escribir "                                                 (( )) )()        "           //14
	escribir "                                                (        )        "          //15
	escribir "                                                ( ________ )       "   //16
	escribir "                                         )       |        |         "           //17
	escribir "                                     ( ( )       |    _   |  Beware of the dragon...        "        //18
	escribir "            __________________________(____)_____|___| |__|___________________________________________"    //19
	escribir "                                                              "     //20	
	esperar 1 Segundos
	Borrar Pantalla
	space
	Escribir " ------------------------------------------- VILLAGE ADVENTURE GAME ----------------------------------------------"
	tripleSpace
	escribir "                                  *\                                        /*    "
	escribir "                                     _*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*_  "
	escribir "                                                   WELCOME TO                         "
	escribir "                                     *-*      VILLAGE ADVENTURE !       *-*           "
	escribir "                                    | *---------------------------------* |  "
	escribir "                                               >   THE GAME   <             "
	escribir "                                     -*-*-*-                     -*-*-*-*-  "
	escribir "                                     ^*-*-*-*-*-----------------*-*-*-*-*^  "
	escribir "                                  */                                        \*    "
	Escribir "                                                      (             "             //12
	Escribir "                                                    (( ) )         "            //13
	escribir "                                                  ( )) )))        "           //14
	escribir "                                                 (         )        "          //15
	escribir "                                                ( ________ )       "   //16
	escribir "                                         )       |        |         "           //17
	escribir "                                       ( ))      |    _   |  Beware of the dragon...       "        //18
	escribir "            __________________________(____)_____|___| |__|___________________________________________"
	next	
FinFuncion

Funcion jugador(raza, job)  ///////////////////////////////////////////// character sprites
	space
	Si nombre == "" y raza == "" Entonces
		Escribir "             .------.       "
		Escribir "            /        \         "
		Escribir "           |  __  __  |"
		Escribir "           (  ()  ()  )         "
		Escribir "            \   __   /         "
		Escribir "             \______/        "
		Escribir "           ___|____|___        "
		Escribir "          /            \        "
		Escribir "         |              |       "
		Escribir "          ..............       "		
	FinSi
	Si job == "" Entonces	
		Si raza == "HUMAN" Entonces
			Escribir "            _-******-_       "
			Escribir "           [__________]         "
			Escribir "           ************         "
			Escribir "          *** O    O ***         "
			Escribir "          **d    >   b**         "
			Escribir "           **\  --  /**         "
			Escribir "           ___|_  _|___        "
			Escribir "          / |   \/   | \        "
			Escribir "         || |    o   | ||       "
			Escribir "          --------------       "
		SiNo
			Si raza == "ELF" Entonces
				Escribir "            _= *  * =_         "
				Escribir "           / / / | \\ \            "
				Escribir "           || | | | |||        "
				Escribir "          |||_|_|_|_||||         "
				Escribir "          |<  O    O  >|         "
				Escribir "          |||    -   |||         "
				Escribir "          |||\_  ^ _/|||         "
				Escribir "          |||_|    |_|||        "
				Escribir "           / 0 \__/ 0 \        "
				Escribir "          |  0  \/  0  |       "
				Escribir "           ------------        "
			SiNo
				Si raza == "ORC" Entonces
					Escribir "           _ = ^ = ^ =_         "
					Escribir "          -            -       "
					Escribir "           ^-^^-^^-^^-^          "
					Escribir "           <  0    0  >          "
					Escribir "            \    =   /          "
					Escribir "             \_++++_/          "
					Escribir "          __^_|    |_^__      "
					Escribir "        //     \__/     \\       "
					Escribir "       |)|       |      |(|      "
					Escribir "       |(|       |      |)|      "
					Escribir "         ----------------       "
				SiNo
					Si raza == "DWARF" Entonces
						Escribir "            ._=^^^^=_.        "
						Escribir "           || | | | |||         "
						Escribir "           |  _    _  |         "
						Escribir "           d  O    O  b         "
						Escribir "            |____U___|         "
						Escribir "            \\__--__//        "
						Escribir "           __\_    _/__        "
						Escribir "          /  | \__/ |  \        "
						Escribir "         ----------------       "
					FinSi
				FinSi
			FinSi
		FinSi
	SiNo		
		Si job == "Mage" Entonces
			Si raza == "HUMAN" Entonces
				Escribir "                /\            "
				Escribir "               /  \           "
				Escribir "              / oo \          "
				Escribir "             /      \          "
				Escribir "            /o000000o\         "
				Escribir "         __|__________|__  ++      "
				Escribir "           ************    __    "
				Escribir "          *** O    O ***  (__)     "
				Escribir "          **d    >   b**   <>      "
				Escribir "           **\  --  /**    ||     "
				Escribir "           ___|_  _|___    ||   "
				Escribir "          /     \/     \   ||     "
				Escribir "         |      00      |  ||    "
				Escribir "          --------------       "
			SiNo
				Si raza == "ELF" Entonces
					Escribir "                00               "
					Escribir "                /\            "
					Escribir "               /  \           "
					Escribir "              / () \          "
					Escribir "             /      \          "
					Escribir "            /x0x00x0x\     +    "
					Escribir "         __|__________|__  ++      "
					Escribir "          |||_|_|_|_||||   <0>      "
					Escribir "          |<  O    O  >|   //       "
					Escribir "          |||    -   |||   \\      "
					Escribir "          |||\_  ^ _/|||   //       "
					Escribir "          |||_|    |_|||   \\     "
					Escribir "           / 0 \__/ 0 \    //     "
					Escribir "          | 0 0 \/ 0 0 |   \\    "
					Escribir "           ------------        "
				SiNo
					Si raza == "ORC" Entonces
						Escribir "                /\            "
						Escribir "               /  \           "
						Escribir "              / [] \          "
						Escribir "             /      \          "
						Escribir "            /=OOooOO=\         "
						Escribir "     ______|__________|______     "
						Escribir "           ^-^^-^^-^^-^      **   "
						Escribir "           <  Q    Q  >     *||*    "
						Escribir "            \    =   /      *||*  "
						Escribir "             \_++++_/        \\    "
						Escribir "          ____|    |____     //    "
						Escribir "        //     \__/     \\   \\    "
						Escribir "       /|       oo       |\  ||   "
						Escribir "      /)|       oo       |(\ ||    "
						Escribir "         ----------------       "
					SiNo
						Si raza == "DWARF" Entonces
							Escribir "                /\          "
							Escribir "              / ++ \          "
							Escribir "             /+o  o+\          "
							Escribir "            /___00___\         "
							Escribir "       _.+_|__________|_+._    "
							Escribir "           |  _    _  |        "
							Escribir "           d  Q    Q  b    __    "
							Escribir "            |____U___|    *[]*    "
							Escribir "            \\__--__//    *[]*  "
							Escribir "           __\      /__    ()    "
							Escribir "         // 0 \____/ 0 \\  []     "
							Escribir "         ----------------       "
						FinSi
					FinSi
				FinSi
			FinSi
		SiNo
			Si job == "Adventurer" Entonces
				Si raza == "HUMAN" Entonces
					Escribir "            _-******-_       "
					Escribir "           [|__|__|__|]         "
					Escribir "           ************         "
					Escribir "          *** O    O ***         "
					Escribir "      []  **d    >   b**         "
					Escribir "      ||   **\  --  /**         "
					Escribir "     _||_  ___|_  _|___        "
					Escribir "      ||  / | + \/ + | \        "
					Escribir "      || || | + 00 + | ||       "
					Escribir "          --------------       "
				SiNo
					Si raza == "ELF" Entonces
						Escribir "            _= *  * =_         "
						Escribir "           / / / | \\ \            "
						Escribir "           || | | | |||        "
						Escribir "          |||_|_|_|_||||         "
						Escribir "     ()   |<  O    O  >|         "
						Escribir "     ||   |||    -   |||         "
						Escribir "    _||_  |||\_  ^ _/|||         "
						Escribir "     \\   |||_|    |_|||        "
						Escribir "     //    /.+.\__/.+.\        "
						Escribir "     \\   | .+. \/ .+. |       "
						Escribir "           ------------        "
					SiNo
						Si raza == "ORC" Entonces
							Escribir "            . - =  = - .        "
							Escribir "           |            |       "
							Escribir "            \-^^-^^-^^-/           "
							Escribir "   []       <  Q    Q  >          "
							Escribir "   ||        \    =   /          "
							Escribir "   ||         \_++++_/          "
							Escribir "   ||      __^_|    |_^__      "
							Escribir " __||__  //     \__/     \\       "
							Escribir "  |  |  |)|     .==.     |(|      "
							Escribir "  |  |  |(|     .==.     |)|      "
							Escribir "          ----------------       "
						SiNo
							Si raza == "DWARF" Entonces
								Escribir "           ._=^^^^=_.        "
								Escribir "          || | | | |||         "
								Escribir "          |  _    _  |         "
								Escribir "          d  O    O  b         "
								Escribir "           |____U___|         "
								Escribir "     []    \\__--__//        "
								Escribir "    _||_  __\_    _/__        "
								Escribir "     ||  / ++ \__/ ++ \       "
								Escribir "         --------------       "
							FinSi
						FinSi
					FinSi
				FinSi
			SiNo
				Si job == "Warrior" Entonces					
					Si raza == "HUMAN" Entonces
						Escribir "             _-******-_       "
						Escribir "            \__________/        "
						Escribir "            ************         "
						Escribir "      _    *** O\  /O ***         "
						Escribir "     [.]   **d    >   b**         "
						Escribir "     |0|    **\_ -- _/**         "
						Escribir "   __|o|__  ^__|_  _|__^        "
						Escribir "     |+|   / =   \/   = \        "
						Escribir "     |+|  || =    |   = ||       "
						Escribir "           --------------       "
					SiNo
						Si raza == "ELF" Entonces
							Escribir "            _= ^  ^ =_         "
							Escribir "           / / / | \\ \            "
							Escribir "           || | | | |||        "
							Escribir "          |||_|_|_|_||||         "
							Escribir "     ()   |<  o\  /o  >|         "
							Escribir "     ||   |||    -   |||          "
							Escribir "   __||__  ||\___^__/||         "
							Escribir "    |++|   ||_|____|_||       "
							Escribir "    |++| ///   \  /   \\\        "
							Escribir "    |++| ||     \/     ||       "
							Escribir "           ------------        "
						SiNo
							Si raza == "ORC" Entonces
								Escribir "            _. = ^  ^ = ._        "
								Escribir "            _            _       "
								Escribir "             ^-^^-^^-^^-^          "
								Escribir "    []       <  o\  /o  >          "
								Escribir "    ||        \    =   /          "
								Escribir "    ||         \__++__/          "
								Escribir "    ||     _^^^_|    |_^^^_     "
								Escribir "  __||__  //    \    /  = \\       "
								Escribir "   |[]|  |)   =  |  |      (|      "
								Escribir "   |[]|  |)      |  |  =   (|      "
								Escribir "          ----------------       "
							SiNo
								Si raza == "DWARF" Entonces
									Escribir "            .-^^^^^^-.       "
									Escribir "           .| | | | ||.        "
									Escribir "           |   \  /   |         "
									Escribir "           d  O    O  b         "
									Escribir "     ()     |____U___|         "
									Escribir "     []     \\__--__//        "
									Escribir "   o_||_o  _^\______/^_        "
									Escribir "    ||||  /  =  []  =  \       "
									Escribir "         ----------------       "
								FinSi
							FinSi
						FinSi
					FinSi
				SiNo
					Si job == "Ranger" Entonces
						Si raza == "HUMAN" Entonces
							Escribir "            _-******-_     o "
							Escribir "         >>(__________)   /-\   "
							Escribir "           ************   || \      "
							Escribir "           ** O    O **   ||  |      "
							Escribir "           *d    >   b*   ||   |   "
							Escribir "           _ \  --  /     ||    |  "
							Escribir "          |_|_|_  _|___   ||     | "
							Escribir "          / |   \/   | \  ||     | "
							Escribir "         || |    o   | || ||    |  "
							Escribir "          --------------           "
						SiNo
							Si raza == "ELF" Entonces
								Escribir "            _= *  * =_      ()    "
								Escribir "           / / / | \\ \    //-\        "
								Escribir "          >____________<   \\  |      "
								Escribir "          |||_|_|_|_||||   //   +     "
								Escribir "          |<  O    O  >|   \\    |    "
								Escribir "          |||    -   |||   //     +   "
								Escribir "           \|\_  ^ _/|/    \\      |  "
								Escribir "          ++|_|    |_|      //      +   "
								Escribir "         { / = \__/ = \    \\      |  "
								Escribir "         {|  =  \/  =  |   //      +  " 
								Escribir "           ------------               "
							SiNo
								Si raza == "ORC" Entonces
									Escribir "           _ = ^ = ^ =_            "
									Escribir "          -            -     ++.    "
									Escribir "           ^-^^-^^-^^-^      {} \     "
									Escribir "           <  0    0  >      {}  |  "
									Escribir "         ## \    =   /       {}   |  "
									Escribir "         ||  \_++++_/        {}    |  "
									Escribir "        [__]__|____|_____    {}    | "
									Escribir "        //       p      \\   {}    | "
									Escribir "       |)        p       (|  {}    | "
									Escribir "       ))        p       ((  {}   |  "
									Escribir "         ----------------          "
								SiNo
									Si raza == "DWARF" Entonces
										Escribir "            _.======._             "
										Escribir "           [__________]    o        "
										Escribir "           (( _    _ ))   (0\     "
										Escribir "           d  O    O  b   () \       "
										Escribir "            |____U___|    ()  |      "
										Escribir "         ++ \\__--__//    ()   |      "
										Escribir "         { }_\.    ./__   ()   |     "
										Escribir "         {/   \.__./   \  ()   |  "
										Escribir "         ----------------          "
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	linebreak	
FinFuncion

Funcion enemyHit(enemyName, choice, strenghtPoints, magicPoints)
	doubleSpace
	Segun choice Hacer
		1:
			Escribir "                                                 ", enemyName, " Health Points: -", strenghtPoints
		2:
			Escribir "                                                 ", enemyName, " Health Points: -", magicPoints
	FinSegun
FinFuncion

Funcion win
	doubleSpace
	Escribir "                                                 * Enemy Defeated ! *"
FinFuncion

Funcion enemyAnimacion(choice, hit, nombre, job, raza, healthPoints, strenghtPoints, magicPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar Por Referencia) //ANIMACIONES
	Si candySpider == Verdadero Entonces
		Si hit == Verdadero Entonces  // animation when enemy is HIT
			titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
			Escribir "                                                               \/+>[+0+]<+\/"
			Escribir "                                                               //^-[0-0]-^\\" 
			Escribir "                                                               //^-[0-0]-^\\" 
			enemyHit(enemyName, choice, strenghtPoints, magicPoints)
			jugador(raza, job)
			Esperar 1 Segundo
			titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
			Escribir "                                                               \/+>[+0+]<+\/"
			Escribir "                                                               \/+>[+0+]<+\/"
			Escribir "                                                               //^-[0-0]-^\\" 
			enemyHit(enemyName, choice, strenghtPoints, magicPoints)
			jugador(raza, job)
			Esperar 1 Segundo
			titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
			Escribir "                                                               \/+>[+0+]<+\/"
			Escribir "                                                               \/+>[+0+]<+\/"
			Escribir "                                                               \/+>[+0+]<+\/"
			enemyHit(enemyName, choice, strenghtPoints, magicPoints)
			jugador(raza, job)
			Esperar 1 Segundo
			titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
			tripleSpace
			enemyHit(enemyName, choice, strenghtPoints, magicPoints)
			jugador(raza, job)
			Esperar 1 Segundo
			titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
			Escribir "                                                               \/+>[+0+]<+\/"
			Escribir "                                                               \/+>[+0+]<+\/"
			Escribir "                                                               \/+>[+0+]<+\/"
			enemyHit(enemyName, choice, strenghtPoints, magicPoints)
			jugador(raza, job)
			Esperar 1 Segundo
			titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
			Si enemyHealth > 0 Entonces // enemy is HIT and gets up
				Escribir "                                                               //^>[-_-]<^\\" 
				Escribir "                                                               //^>[-_-]<^\\" 
				Escribir "                                                               //^>[-_-]<^\\" 
				enemyHit(enemyName, choice, strenghtPoints, magicPoints)
				jugador(raza, job)
				Esperar 1 Segundo
				titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
				Escribir "                                                               //^-[0-0]-^\\" 
				Escribir "                                                               //^-[0-0]-^\\" 
				Escribir "                                                               //^-[0-0]-^\\"
				jugador(raza, job)
				Esperar 1 Segundo
			SiNo ///// animation when enemy DIES
				titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
				doubleSpace
				Escribir "                                        _/_/[-_-]\_\__/_/[-_-]\_\__/_/[-_-]\_\_" 
				win
				jugador(raza, job)
				Esperar 2.0 Segundos
			FinSi
			hit = Falso
		SiNo // regular animation
			titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
			Escribir "                                                               //^-[0-0]-^\\" 
			Escribir "                                                               //^-[0-0]-^\\" 
			Escribir "                                                               //^-[0-0]-^\\" 
			jugador(raza, job)
			Esperar 1 Segundo
			titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
			Escribir "                                                               /^-[0-0]-^\_ "
			Escribir "                                                                _/^-[0-0]-^\ " 
			Escribir "                                                               /^-[0-0]-^\_ "
			jugador(raza, job)
			Esperar 1 Segundo
			titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
			Escribir "                                                                _/^-[0-0]-^\ " 
			Escribir "                                                               /^-[0-0]-^\_ "
			Escribir "                                                                _/^-[0-0]-^\ " 
			jugador(raza, job)
			Esperar 1 Segundo
			titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
			Escribir "                                                               //^-[0-0]-^\\" 
			Escribir "                                                               //^-[0-0]-^\\" 
			Escribir "                                                               //^-[0-0]-^\\" 
			jugador(raza, job)
			Esperar 1 Segundo
		FinSi
	SiNo
		Si puddingGoblin == Verdadero Entonces
			Si enemyHealth == 45 Entonces // enemy is healthy
				titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
				tripleSpace
				escribir "                                                                _/\                                  "
				escribir "                                                            ___/o  \_                                "
				escribir "                                                            \___     *--________                     "
				escribir "                                                                \               *-_                  "
				escribir "                                                                 \   _____         \                 "
				escribir "                                                                  | |     *--_  |\  \                "
				escribir "                                                                 _| |        _| | \  \               "
				escribir "                                                                (__/        (__/   \_/               "
				jugador(raza, job)
				sec
				titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
				tripleSpace
				escribir "                                                                _/\                                  "
				escribir "                                                            ___/-  \_                                "
				escribir "                                                            \___     *--________                     "
				escribir "                                                            /   \               *--_                 "
				escribir "                                                                 \   _____          \                 "
				escribir "                                                                  | |     *--_  | \  \                "
				escribir "                                                                 _| |        _| |  \  \               "
				escribir "                                                                (__/        (__/    \_/               "
				jugador(raza, job)
				sec
				titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
				tripleSpace
				escribir "                                                                __/\                                  "
				escribir "                                                            ___/o  I_                                "
				escribir "                                                            \___     *--________                     "
				escribir "                                                            /   \               *-.                 "
				escribir "                                                                 \   _____        \                 "
				escribir "                                                                  | |     *--_  || \                "
				escribir "                                                                 _| |        _| |\  \               "
				escribir "                                                                (__/        (__/  \_/               "
				jugador(raza, job)
				sec
				titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
				tripleSpace
				escribir "                                                                _/\                                  "
				escribir "                                                            ___/o  \_                                "
				escribir "                                                            \___     *--________                     "
				escribir "                                                            /   \               *-_                  "
				escribir "                                                                 \   _____         \                 "
				escribir "                                                                  | |     *--_  |\  \                "
				escribir "                                                                 _| |        _| | \  \               "
				escribir "                                                                (__/        (__/   \_/               "
				jugador(raza, job)
				sec
			SiNo
				Si hit == Verdadero Entonces  // animation when enemy is HIT
					Si enemyHealth > 0 Entonces // enemy is HIT and gets up
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						space
						escribir "                                                                                 _  _                 "
						escribir "                                                                                  *_   -_             "
						escribir "                                                                                    -   -             "
						escribir "                                                                _/\              _-*   _ *            "
						escribir "                                                            ___/ó  \_-**--___--_*   -*               "
						escribir "                                                           |vvv                   /                   "
						escribir "                                                            ^^^ \   ____         /                    "
						escribir "                                                                 / /     *--_   /                     "
						escribir "                                                               _/ /         _/ /                      "
						escribir "                                                              (__/         (__/                       "
						enemyHit(enemyName, choice, strenghtPoints, magicPoints)
						jugador(raza, job)
						sec 
						sec
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						tripleSpace
						tripleSpace
						tripleSpace
						space
						space
						enemyHit(enemyName, choice, strenghtPoints, magicPoints)
						jugador(raza, job)
						sec 
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						tripleSpace
						tripleSpace
						doubleSpace
						escribir "                                                              _/\__---_______---*--_                  "
						escribir "                                                          ___/<_____      ___       *-----*----_      "
						escribir "                                                          \___(_______/__(______/\______________\     "
						enemyHit(enemyName, choice, strenghtPoints, magicPoints)
						jugador(raza, job)
						sec		
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						tripleSpace
						escribir "                                                                _/\                                  "
						escribir "                                                            ___/ó \_                                "
						escribir "                                                            \___     *--________                     "
						escribir "                                                                \               *-_                  "
						escribir "                                                                 \   _____         \                 "
						escribir "                                                                  | |     *--_  |\  \                "
						escribir "                                                                 _| |        _| | \  \               "
						escribir "                                                                (__/        (__/   \_/               "
						enemyHit(enemyName, choice, strenghtPoints, magicPoints)
						jugador(raza, job)
						sec
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						escribir ""
						escribir "                                                                                 _  _                 "
						escribir "                                                                                  *_   -_             "
						escribir "                                                                                    -   -             "
						escribir "                                                                _/\              _-*   _ *            "
						escribir "                                                            ___/ó  \_-**--___--_*   -*               "
						escribir "                                                           |vvv                   /                   "
						escribir "                                                            ^^^ \   ____         /                    "
						escribir "                                                                 / /     *--_   /                     "
						escribir "                                                                 \ \         / /                      "
						escribir "                                                                (__/        (__/                      "
						jugador(raza, job)
						sec
					SiNo // enemy DIES
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						tripleSpace
						tripleSpace
						doubleSpace                        
						escribir "                                                              _/\__---_______---*--_                  "
						escribir "                                                          ___/X_____      ___       *-----*----_      "
						escribir "                                                          \___(_______/__(______/\______________\     "
						win
						jugador(raza, job)
						sec
					FinSi
				SiNo // regular animation enemy 
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					escribir " "
					escribir "                                                                                 _  _                 "
					escribir "                                                                                  *_   -_             "
					escribir "                                                                                    -   -             "
					escribir "                                                                _/\              _-*   _ *            "
					escribir "                                                            ___/ó  \_-**--___--_*   -*               "
					escribir "                                                           |vvv                   /                   "
					escribir "                                                            ^^^ \   ____         /                    "
					escribir "                                                                 / /     *--_   /                     "
					escribir "                                                               _/ /         _/ /                      "
					escribir "                                                              (__/         (__/                       "
					jugador(raza, job)
					sec
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					escribir ""
					escribir "                                                                               _  _                 "
					escribir "                                                                                *_   -_             "
					escribir "                                                                                  -   -             "
					escribir "                                                              _/\              _-*   _ *            "
					escribir "                                                          ___/ó  \_-**--___--_*   -*               "
					escribir "                                                         |vvv                   /                   "
					escribir "                                                          ^^^ \   ____         /                    "
					escribir "                                                               / /     *--_   /                     "
					escribir "                                                               \ \         / /                      "
					escribir "                                                              (__/        (__/                      "
					jugador(raza, job)
					sec
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					escribir "                                                             _  _                 "
					escribir "                                                              *_   -_             "
					escribir "                                                                -   -             "
					escribir "                                            _/\              _-*   _ *            "
					escribir "                                        ___/ó  \_-**--___--_*   -*               "
					escribir "                                       |vvv                   /                   "
					escribir "                                        ^^^ \   ____         /                    "
					escribir "                                             \ \     *--_   -                     "
					escribir "                                              \ \        \ \                      "
					escribir "                                             (__/        (__/                     "
					jugador(raza, job)
					sec
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					escribir ""
					escribir "                                                _  _                 "
					escribir "                                                 *_   -_             "
					escribir "                                                   -   -             "
					escribir "                               _/\              _-*   _ *            "
					escribir "                           ___/ó  \_-**--___--_*   -*               "
					escribir "                          |vvv                   /                   "
					escribir "                           ^^^ \   ____         /                    "
					escribir "                                / /     *--_   /                     "
					escribir "                                \ \         / /                      "
					escribir "                               (__/        (__/                      "
					jugador(raza, job)
					sec
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					escribir ""
					escribir "                                                                 _  _                 "
					escribir "                                                                  *_   -_             "
					escribir "                                                                    -   -             "
					escribir "                                                _/\              _-*   _ *            "
					escribir "                                            ___/ó  \_-**--___--_*   -*               "
					escribir "                                           |vvv                   |                   "
					escribir "                                            ^^^ \   ____         |                    "
					escribir "                                                 | |     *--_   |                     "
					escribir "                                                _| |         | |                      "
					escribir "                                               (__/         (__/                      "
					jugador(raza, job)
					sec
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					escribir ""
					escribir "                                                                           _  _                 "
					escribir "                                                                            *_   -_             "
					escribir "                                                                              -   -             "
					escribir "                                                          _/\              _-*   _ *            "
					escribir "                                                      ___/ó  \_-**--___--_*   -*               "
					escribir "                                                     |vvv                   /                   "
					escribir "                                                      ^^^ \   ____         /                    "
					escribir "                                                           / /     *--_   /                     "
					escribir "                                                           \ \         / /                      "
					escribir "                                                          (__/        (__/                      "
					jugador(raza, job)
					sec
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					escribir ""
					escribir "                                                                                 _  _                 "
					escribir "                                                                                  *_   -_             "
					escribir "                                                                                    -   -             "
					escribir "                                                                _/\              _-*   _ *            "
					escribir "                                                            ___/ó  \_-**--___--_*   -*               "
					escribir "                                                           |vvv                   /                   "
					escribir "                                                            ^^^ \   ____         /                    "
					escribir "                                                                 / /     *--_   /                     "
					escribir "                                                                 \ \         / /                      "
					escribir "                                                                (__/        (__/                      "
					jugador(raza, job)
					sec
				FinSi
			FinSi
		SiNo
			Si gummyBear == Verdadero Entonces
				Si enemyHealth == 60 Entonces // animation when enemy is healthy
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					escribir "                                                       ____                                          "
					escribir "                                                    _-*(|) *--_        ____                          "
					escribir "                                                   (_______/   -_   _-*(|) *--_                      "
					escribir "                                                   (______      *_ (_____/     -_                    "
					escribir "                                                         -       - (_____       *                    "
					escribir "                                                          *      *       *      -                    "
					escribir "                                                          -      *     -       *                     "
					escribir "                                                          *      -    -       -       _\             "
					escribir "                                                          -       \ /       *         - *_           "
					escribir "                                                          *               -        _*   _            "
					escribir "                                                           -             *_      _-     -            "
					escribir "                                                           *               -___-*      _-            "
					escribir "                                                            -                         -              "
					escribir "                                                             *_                     -*               "
					escribir "                                                               __              _ -*                  "
					escribir "                                                                 -__________-*                       "
					jugador(raza, job)
					sec
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					escribir "                                                         ____                                       "
					escribir "                                                      _-*(|) *--_      ____                         "
					escribir "                                                   _ (_______    -_ _-*(|) *--_                     "
					escribir "                                                    ----____/     *(_____/     -_                   "
					escribir "                                                      (_____       (_____       *                   "
					escribir "                                                            *      *     *      -                   "
					escribir "                                                            -      *    -       *                   "
					escribir "                                                            *      -   -       -   _\               "
					escribir "                                                            -       \/       *      - *_            "
					escribir "                                                            *               -       *   _           "
					escribir "                                                             -             *_      -     -          "
					escribir "                                                             *               -___-*     _-          "
					escribir "                                                              -                         -           "
					escribir "                                                               *_                     -*            "
					escribir "                                                                 __              _ -*               "
					escribir "                                                                   -__________-*                    "
					jugador(raza, job)
					sec
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					escribir "                                                         ____                                       "
					escribir "                                                      _-*(|) *--_      ____                         "
					escribir "                                                     (_______    -_ _-*(|) *--_                     "
					escribir "                                                   _----____/     *(_____/     -_                   "
					escribir "                                                      (_____       (_____       *                   "
					escribir "                                                            *      *     *      -                   "
					escribir "                                                            -      *    -       *                   "           
					escribir "                                                            *      -   -       -       _\           "             
					escribir "                                                            -       \/       *         - *_         "              
					escribir "                                                            *               -        _*   _         "                      
					escribir "                                                             -             *_      _-     -         "                            
					escribir "                                                             *               -___-*      _-         "       
					escribir "                                                              -                         -           "       
					escribir "                                                               *_                     -*            "     
					escribir "                                                                 __              _ -*               "    
					escribir "                                                                   -__________-*                    "    
					jugador(raza, job)
					sec		
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					escribir "                                                       ____                                          "
					escribir "                                                    _-*(|) *--_        ____                          "
					escribir "                                                   (_______/   -_   _-*(|) *--_                      "
					escribir "                                                   (______      *_ (_____/     -_                    "
					escribir "                                                         -       - (_____       *                    "
					escribir "                                                          *      *       *      -                    "
					escribir "                                                          -      *     -       *                     "
					escribir "                                                          *      -    -       -       _\             "
					escribir "                                                          -       \ /       *         - *_           "
					escribir "                                                          *               -        _*   _            "
					escribir "                                                           -             *_      _-     -            "
					escribir "                                                           *               -___-*      _-            "
					escribir "                                                            -                         -              "
					escribir "                                                             *_                     -*               "
					escribir "                                                               __              _ -*                  "
					escribir "                                                                 -__________-*                       "
					jugador(raza, job)
					sec
				SiNo
					Si hit == Falso Entonces // regular enemy animation
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						escribir "                                                         ____                                       "
						escribir "                                                      _-*(|) *--_      ____                         "
						escribir "                                                     (_______    -_ _-*(|) *--_                     "
						escribir "                                                      V_____/     *(_____/     -_                   "
						escribir "                                                      (_____       (_____       *                   "
						escribir "                                                            *      *     *      -                   "
						escribir "                                                            -      *    -       *                   "
						escribir "                                                            *      -   -       -       _\           "
						escribir "                                                            -       \/       *         - *_         "
						escribir "                                                            *               -        _*   _         "
						escribir "                                                             -             *_      _-     -         "
						escribir "                                                             *               -___-*      _-         "
						escribir "                                                              -                         -           "
						escribir "                                                               *_                     -*            "
						escribir "                                                                 __              _ -*               "
						escribir "                                                                   -__________-*                    "
						jugador(raza, job)
						sec
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						escribir "                                                         ____                                       "
						escribir "                                                      _-*(|) *--_      ____                         "
						escribir "                                                   _ (_______    -_ _-*(|) *--_                     "
						escribir "                                                    ----____/     *(_____/     -_                   "
						escribir "                                                      (_____       (_____       *                   "
						escribir "                                                            *      *     *      -                   "
						escribir "                                                            -      *    -       *                   "
						escribir "                                                            *      -   -       -   _\               "
						escribir "                                                            -       \/       *      - *_            "
						escribir "                                                            *               -       *   _           "
						escribir "                                                             -             *_      -     -          "
						escribir "                                                             *               -___-*     _-          "
						escribir "                                                              -                         -           "
						escribir "                                                               *_                     -*            "
						escribir "                                                                 __              _ -*               "
						escribir "                                                                   -__________-*                    "
						jugador(raza, job)
						sec
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						escribir "                                                         ____                                       "
						escribir "                                                      _-*(|) *--_      ____                         "
						escribir "                                                     (_______    -_ _-*(|) *--_                     "
						escribir "                                                   _----____/     *(_____/     -_                   "
						escribir "                                                      (_____       (_____       *                   "
						escribir "                                                            *      *     *      -                   "
						escribir "                                                            -      *    -       *                   "           
						escribir "                                                            *      -   -       -       _\           "             
						escribir "                                                            -       \/       *         - *_         "              
						escribir "                                                            *               -        _*   _         "                      
						escribir "                                                             -             *_      _-     -         "                            
						escribir "                                                             *               -___-*      _-         "       
						escribir "                                                              -                         -           "       
						escribir "                                                               *_                     -*            "     
						escribir "                                                                 __              _ -*               "    
						escribir "                                                                   -__________-*                    "    
						jugador(raza, job)
						sec
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						escribir "                                                         ____                                         "
						escribir "                                                      _-*(|) *--_      ____                           "
						escribir "                                                     (_______    -_ _-*(|) *--_                       "
						escribir "                                                      V_____/     *(_____/     -_                     "
						escribir "                                                      (_____       (_____       *                     "
						escribir "                                                            *      *     *      -                     "
						escribir "                                                            -      *    -       *                     "         
						escribir "                                                            *      -   -       -          _\          "              
						escribir "                                                            -       \/       *           - *_         "              
						escribir "                                                            *               -          _*   _         "                      
						escribir "                                                             -             *_      _ -     -          "                           
						escribir "                                                             *               -___-*      _-           "     
						escribir "                                                              -                         -             "     
						escribir "                                                               *_                     -*              "   
						escribir "                                                                 __              _ -*                 "  
						escribir "                                                                   -__________-*                      "
						jugador(raza, job)
						sec
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						escribir "                                                       ____                                          "
						escribir "                                                    _-*(|) *--_        ____                          "
						escribir "                                                   (_______    -_   _-*(|) *--_                      "
						escribir "                                                    V_____/     *_ (_____/     -_                    "
						escribir "                                                    (_____       - (_____       *                    "
						escribir "                                                          *      *       *      -                    "
						escribir "                                                          -      *     -       *                     "
						escribir "                                                          *      -    -       -       _\             "
						escribir "                                                          -       \ /       *         - *_           "
						escribir "                                                          *               -        _*   _            "
						escribir "                                                           -             *_      _-     -            "
						escribir "                                                           *               -___-*      _-            "
						escribir "                                                            -                         -              "
						escribir "                                                             *_                     -*               "
						escribir "                                                               __              _ -*                  "
						escribir "                                                                 -__________-*                       "
						jugador(raza, job)
						sec
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						escribir ""
						escribir "                                                   ____                          "
						escribir "                             ____               _-*(|) *--_                      "
						escribir "                          _-*(|) *--_          (_____/     -_                    "
						escribir "                         (_______    *-_       (_____       *                    "
						escribir "                          V_____/       *           *      -                     "
						escribir "                          (_____         *_        -       *                     "
						escribir "                                * _         -_    -       -       _\             "
						escribir "                                   -          \ /       *         - *_           "
						escribir "                                     *                 -        _*   _           "
						escribir "                                      -               *_      _-     -           "
						escribir "                                       *               -___-*      _-            "
						escribir "                                        -                         -              "
						escribir "                                         *_                     -*               "
						escribir "                                           __              _ -*                  "
						escribir "                                             -__________-*                       "                     
						jugador(raza, job)
						sec
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						escribir ""
						escribir "                                                   ____                          " 
						escribir "                             ____               _-*(|) *--_                      "
						escribir "                          _-*(|) *--_          (_____/     -_                    "
						escribir "                         (______/    *-_       (_____       *                    "
						escribir "                         (_____         *           *      -                     "
						escribir "                               -         *_        -       *                     "
						escribir "                                * _         -_    -       -       _\             "
						escribir "                                   -          \ /       *         - *_           "
						escribir "                                     *                 -        _*   _           "
						escribir "                                      -               *_      _-     -           "
						escribir "                                       *               -___-*      _-            "
						escribir "                                        -                         -              "
						escribir "                                         *_                     -*               "
						escribir "                                           __              _ -*                  "
						escribir "                                             -__________-*                       "
						jugador(raza, job)
						sec
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						escribir "                                                       ____                                          "
						escribir "                                                    _-*(|) *--_        ____                          "
						escribir "                                                   (_______/   -_   _-*(|) *--_                      "
						escribir "                                                   (______      *_ (_____/     -_                    "
						escribir "                                                         -       - (_____       *                    "
						escribir "                                                          *      *       *      -                    "
						escribir "                                                          -      *     -       *                     "
						escribir "                                                          *      -    -       -       _\             "
						escribir "                                                          -       \ /       *         - *_           "
						escribir "                                                          *               -        _*   _            "
						escribir "                                                           -             *_      _-     -            "
						escribir "                                                           *               -___-*      _-            "
						escribir "                                                            -                         -              "
						escribir "                                                             *_                     -*               "
						escribir "                                                               __              _ -*                  "
						escribir "                                                                 -__________-*                       "
						jugador(raza, job)
						sec
					SiNo
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						escribir "                                                         ____                                       "
						escribir "                                                      _-*(|) *--_      ____                         "
						escribir "                                                   _ (_______    -_ _-*(|) *--_                     "
						escribir "                                                    ----____/     *(_____/     -_                   "
						escribir "                                                      (_____       (_____       *                   "
						escribir "                                                            *      *     *      -                   "
						escribir "                                                            -      *    -       *                   "
						escribir "                                                            *      -   -       -   _\               "
						escribir "                                                            -       \/       *      - *_            "
						escribir "                                                            *               -       *   _           "
						escribir "                                                             -             *_      -     -          "
						escribir "                                                             *               -___-*     _-          "
						escribir "                                                              -                         -           "
						escribir "                                                               *_                     -*            "
						escribir "                                                                 __              _ -*               "
						escribir "                                                                   -__________-*                    "
						enemyHit(enemyName, choice, strenghtPoints, magicPoints)
						jugador(raza, job)
						sec
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						escribir "                                                         ____                                       "
						escribir "                                                      _-*(|) *--_      ____                         "
						escribir "                                                     (_______    -_ _-*(|) *--_                     "
						escribir "                                                   _----____/     *(_____/     -_                   "
						escribir "                                                      (_____       (_____       *                   "
						escribir "                                                            *      *     *      -                   "
						escribir "                                                            -      *    -       *                   "           
						escribir "                                                            *      -   -       -       _\           "             
						escribir "                                                            -       \/       *         - *_         "              
						escribir "                                                            *               -        _*   _         "                      
						escribir "                                                             -             *_      _-     -         "                            
						escribir "                                                             *               -___-*      _-         "       
						escribir "                                                              -                         -           "       
						escribir "                                                               *_                     -*            "     
						escribir "                                                                 __              _ -*               "    
						escribir "                                                                   -__________-*                    "    
						enemyHit(enemyName, choice, strenghtPoints, magicPoints)
						jugador(raza, job)
						sec
						
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						tripleSpace
						tripleSpace
						tripleSpace
						tripleSpace
						tripleSpace
						space 
						enemyHit(enemyName, choice, strenghtPoints, magicPoints)
						jugador(raza, job)
						sec
						
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						tripleSpace
						tripleSpace
						tripleSpace					
						
						Si enemyHealth > 0 Entonces // animation when enemy is HIT and gets up
							doubleSpace
							escribir "                                                       ____          ____                                       "
							escribir "                                                    _-*(=) *--__  _-*(=) *----_________________                 "
							escribir "                                                   (_______/     (_______/                      *--- __         "
							escribir "                                                   (______       (______---                             *--_    "
							escribir "                                                         -_________________________________________----*---     " 
							enemyHit(enemyName, choice, strenghtPoints, magicPoints)
							jugador(raza, job)
							sec
							titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
							escribir ""
							escribir "                                                                       ____                          " 
							escribir "                                                 ____               _-*(|) *--_                      "
							escribir "                                              _-*(|) *--_          (_____/     -_                    "
							escribir "                                             (______/    *-_       (_____       *                    "
							escribir "                                             (_____         *           *      -                     "
							escribir "                                                   -         *_        -       *                     "
							escribir "                                                    * _         -_    -       -       _\             "
							escribir "                                                       -          \ /       *         - *_           "
							escribir "                                                         *                 -        _*   _           "
							escribir "                                                          -               *_      _-     -           "
							escribir "                                                           *               -___-*      _-            "
							escribir "                                                            -                         -              "
							escribir "                                                             *_                     -*               "
							escribir "                                                               __              _ -*                  "
							escribir "                                                                 -__________-*                       "
							enemyHit(enemyName, choice, strenghtPoints, magicPoints)
							jugador(raza, job)
							sec
							titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
							escribir "                                                       ____                                          "
							escribir "                                                    _-*(|) *--_        ____                          "
							escribir "                                                   (_______/   -_   _-*(|) *--_                      "
							escribir "                                                   (______      *_ (_____/     -_                    "
							escribir "                                                         -       - (_____       *                    "
							escribir "                                                          *      *       *      -                    "
							escribir "                                                          -      *     -       *                     "
							escribir "                                                          *      -    -       -       _\             "
							escribir "                                                          -       \ /       *         - *_           "
							escribir "                                                          *               -        _*   _            "
							escribir "                                                           -             *_      _-     -            "
							escribir "                                                           *               -___-*      _-            "
							escribir "                                                            -                         -              "
							escribir "                                                             *_                     -*               "
							escribir "                                                               __              _ -*                  "
							escribir "                                                                 -__________-*                       "
							jugador(raza, job)
							sec
						SiNo // enemy DIES
							doubleSpace
							escribir "                                                       ____          ____                                       "
							escribir "                                                    _-*(X) *--__  _-*(X) *----_________________                 "
							escribir "                                                   (_______/     (_______/                      *--- __         "
							escribir "                                                   (______       (______---                             *--_    "
							escribir "                                                         -_________________________________________----*---     " 
							win
							jugador(raza, job)
							sec
						FinSi
					FinSi
				FinSi
				
			SiNo
				Si enemyHealth == 100 Entonces // animation when enemy is healthy
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					Escribir "                                                                   _____              "
					Escribir "                                                                --**    /             "
					Escribir "                                                              /       |               "
					Escribir "                                                             /        |   {\_/}       "
					Escribir "                                                            / /\  /\  \  ( o o )      "
					Escribir "                                                       /\   V   \/ _\  \/ |^ ^|       "
					Escribir "                                                       \ \____--**     __ (vvv)       "
					Escribir "                                                        \__ __       )   \\           "
					Escribir "                                                          **  **\  /     )))              )                   "             //12
					Escribir "                                                                 )))                    (( ) (                "            //13
					escribir "                                                                                      (( )) )()               "           //14
					escribir "                                                                                     (        )               "          //15
					escribir "                                                                                    ( ________ )              "   //16
					escribir "                                                                             )       |        |               "           //17
					escribir "                                                                           ( ))      |    _   |               "        //18
					escribir "                                                __________________________(____)_____|___| |__|_______________"      //20
					jugador(raza, job)
					sec
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					escribir "                                                                          {\_/}           "
					escribir "                                                                         ( o o )          "
					escribir "                                                       /\  ^ ____________/|^ ^|           "
					escribir "                                                       \ \/ \  /\  /  /__ (vvv)           "
					escribir "                                                        \/   \/  \/  /  \\                "
					escribir "                                                        /           |    )))              "
					escribir "                                                        --          |                     "
					escribir "                                                          **_______/                      "
					Escribir "                                                                                           (             "             //12
					Escribir "                                                                                        )( ) )         "            //13
					escribir "                                                                                      )(  () )((        "           //14
					escribir "                                                                                      (       )        "          //15
					escribir "                                                                                    ( ________ )       "   //16
					escribir "                                                                             (       |        |         "           //17
					escribir "                                                                           ))(       |    _   |         "        //18
					escribir "                                                __________________________)____)_____|___| |__|_______________"    //19
					jugador(raza, job)
					sec
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					space
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					Escribir "                                                                   _____              "
					Escribir "                                                                --**    /             "
					Escribir "                                                              /       |               "
					Escribir "                                                             /        |   {\_/}       "
					Escribir "                                                            / /\  /\  \  ( o o )      "
					Escribir "                                                       /\   V   \/ _\  \/ |^ ^|       "
					Escribir "                                                       \ \____--**     __ (vvv)       "
					Escribir "                                                        \__ __       )   \\           "
					Escribir "                                                          **  **\  /     )))              )                   "             //12
					Escribir "                                                                 )))                    (( ) (                "            //13
					escribir "                                                                                      (( )) )()               "           //14
					escribir "                                                                                     (        )               "          //15
					escribir "                                                                                    ( ________ )              "   //16
					escribir "                                                                             )       |        |               "           //17
					escribir "                                                                           ( ))      |    _   |               "        //18
					escribir "                                                __________________________(____)_____|___| |__|_______________"      //20
					jugador(raza, job)
					sec
				SiNo
					Si hit == Verdadero Entonces
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						escribir "                                                                          {\_/}           "
						escribir "                                                                         ( > < )          "
						escribir "                                                       /\  ^ ____________/|^ ^|           "
						escribir "                                                       \ \/ \  /\  /  /__ (vvv)           "
						escribir "                                                        \/   \/  \/  /  \\                "
						escribir "                                                        /           |    )))              "
						escribir "                                                        --          |                     "
						escribir "                                                          **_______/                      "
						Escribir "                                                                                           )                   "             //12
						Escribir "                                                                                        (( ) (                "            //13
						escribir "                                                                                      (( )) )()               "           //14
						escribir "                                                                                     (        )               "          //15
						escribir "                                                                                    ( ________ )              "   //16
						escribir "                                                                             )       |        |               "           //17
						escribir "                                                                           ( ))      |    _   |               "        //18
						escribir "                                                __________________________(____)_____|___| |__|_______________"
						enemyHit(enemyName, choice, strenghtPoints, magicPoints)
						jugador(raza, job)
						sec
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						doubleSpace
						tripleSpace
						tripleSpace
						Escribir "                                                                                          (             "             //12
						Escribir "                                                                                        )( ) )         "            //13
						escribir "                                                                                      )(  () )((        "           //14
						escribir "                                                                                      (       )        "          //15
						escribir "                                                                                    ( ________ )       "   //16
						escribir "                                                                             (       |        |         "           //17
						escribir "                                                                           ))(       |    _   |         "        //18
						escribir "                                                __________________________)____)_____|___| |__|_______________"    //19 
						enemyHit(enemyName, choice, strenghtPoints, magicPoints)
						jugador(raza, job)
						sec
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						space
						escribir "                                                                          {\_/}        "
						escribir "                                                                         ( > < )       "
						escribir "                                                       /\ ______________/ |^ ^|        "
						escribir "                                                       \ \\___________/__ (vvv)        "
						escribir "                                                        \__ ___      )   \\            "
						escribir "                                                           **  **\  /     )))          "
						escribir "                                                                  )))                  "
						Escribir "                                                                                          ()                   "             //12
						Escribir "                                                                                        (( ) (                "            //13
						escribir "                                                                                      (( )) )()               "           //14
						escribir "                                                                                     (        )               "          //15
						escribir "                                                                                    ( ________ )              "   //16
						escribir "                                                                             )       |        |               "           //17
						escribir "                                                                           ( ))      |    _   |               "        //18
						escribir "                                                __________________________(____)_____|___| |__|_______________"   //19
						enemyHit(enemyName, choice, strenghtPoints, magicPoints)
						jugador(raza, job)
						sec
						Si enemyHealth > 0 Entonces							
							titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
							Escribir "                                                                   _____              "
							Escribir "                                                                --**    /             "
							Escribir "                                                              /       |               "
							Escribir "                                                             /        |   {\_/}       "
							Escribir "                                                            / /\  /\  \  ( o o )      "
							Escribir "                                                       /\   V   \/ _\  \/ |^ ^|       "
							Escribir "                                                       \ \____--**     __ (vvv)       "
							Escribir "                                                        \__ __       )   \\           "
							Escribir "                                                          **  **\  /     )))              )                   "             //12
							Escribir "                                                                 )))                    (( ) (                "            //13
							escribir "                                                                                      (( )) )()               "           //14
							escribir "                                                                                     (        )               "          //15
							escribir "                                                                                    ( ________ )              "   //16
							escribir "                                                                             )       |        |               "           //17
							escribir "                                                                           ( ))      |    _   |               "        //18
							escribir "                                                __________________________(____)_____|___| |__|_______________"      //20
							jugador(raza, job)
							sec
						SiNo
							titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
							tripleSpace
							Escribir "                                                                      _____              "
							Escribir "                                                                   --**    /             "
							Escribir "                                                                 /       |               "
							Escribir "                                                                /        |   {\_/}       "
							Escribir "                                                               / /\  /\  \  ( > < )                              "
							Escribir "                                                          /\   V   \/ _\  \/ |^ ^|        )                   "             //12
							Escribir "                                                          \ \____--**     __ (vvv)      (( ) (                "            //13
							escribir "                                                           \__ __       )   \\        (( )) )()               "           //14
							escribir "                                                             **  ** \  /     )))     (        )               "          //15
							escribir "                                                                     )))            ( ________ )              "   //16
							escribir "                                                                             )       |        |               "           //17
							escribir "                                                                           ( ))      |    _   |               "        //18
							escribir "                                                __________________________(____)_____|___| |__|_______________"      //20
							enemyHit(enemyName, choice, strenghtPoints, magicPoints)
							jugador(raza, job)
							sec							
							titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
							doubleSpace
							tripleSpace
							tripleSpace
							Escribir "                                                                                       (                      "             //12
							Escribir "                                                                                     )( ) )                   "            //13
							escribir "                                                                          (        )(  () )((                 " 
							escribir "                                                                         ))(      (      {\___                "   
							escribir "                                                                       _(___)____(_^__^^ ( X X)               "   //16
							escribir "                                                                     / \\____      )   \\__|_^\      )        "           //17
							escribir "                                                                    / / /__**  **\  /  )))    \    )) (       "        //18
							escribir "                                                ___________________/_/__\___)))\___/_/____/|__/\__(____)______"    //19 
							win
							jugador(raza, job)
							Esperar 3.0 Segundos
						FinSi
						
					SiNo						
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						space
						escribir "                                                                         {\___        "                        //4
						escribir "                                                                         (   o)       "                        //5
						escribir "                                                       /\ ______________/  | ^\       "                       //6
						escribir "                                                       \ \\___________/__ / ( \*\     "                       //7
						escribir "                                                        \__ ___      )   \\    \**\      "                     //8
						escribir "                                                           **  **\  /     )))   \***\    "                    //9
						escribir "                                                                  )))            \****\                 "          //11
						Escribir "                                                                                   \******)             "             //12
						Escribir "                                                                                    \***)*()\ )         "            //13
						escribir "                                                                                     \()()) )()               "           //14
						escribir "                                                                                     (         )              "          //15
						escribir "                                                                                    ( ________  )             "   //16
						escribir "                                                                             (       |        |               "           //17
						escribir "                                                                           ))(       |    _   |               "        //18
						escribir "                                                __________________________)____)_____|___| |__|_______________"    //19
						jugador(raza, job)
						sec
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						escribir "                                                                   _____                       "                   //1
						escribir "                                                               --**    /                       "                  //2
						escribir "                                                              /       |                        "                 //3
						escribir "                                                             /        |  {\___                 "                 //4
						escribir "                                                            / /\  /\  \  (   o)                "                 //5
						escribir "                                                       /\   V   \/ _\  \/  | ^\                "                 //6
						escribir "                                                       \ \____--**     __ / ( \*\              "                  //7
						escribir "                                                        \__ __       )   \\     \***\            "                 //8
						Escribir "                                                          **  **\  /      )))     \****\  (             "             //12
						Escribir "                                                                 )))                \***(*( ) )         "            //13
						escribir "                                                                                     \( )()) )()        "           //14
						escribir "                                                                                     (         )        "          //15
						escribir "                                                                                    ( ________ )        "   //16
						escribir "                                                                             (       |        |         "           //17
						escribir "                                                                           )) )      |    _   |         "        //18
						escribir "                                                __________________________(____)_____|___| |__|_______________"    //19
						jugador(raza, job)
						sec
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						escribir "                                                                          {\_/}           "
						escribir "                                                                         ( o o )          "
						escribir "                                                       /\  ^ ____________/|^ ^|           "
						escribir "                                                       \ \/ \  /\  /  /__ (vvv)           "
						escribir "                                                        \/   \/  \/  /  \\                "
						escribir "                                                        /           |    )))              "
						escribir "                                                        --          |                     "
						escribir "                                                          **_______/                      "
						Escribir "                                                                                          (             "             //12
						Escribir "                                                                                        (( ) )         "            //13
						escribir "                                                                                      )( )) )((        "           //14
						escribir "                                                                                      (       )        "          //15
						escribir "                                                                                    ( ________ )       "   //16
						escribir "                                                                             )       |        |         "           //17
						escribir "                                                                          ( )(       |    _   |         "        //18
						escribir "                                                __________________________(____)_____|___| |__|_______________"    //19
						jugador(raza, job)
						sec
						titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
						Escribir "                                                                   _____              "
						Escribir "                                                                --**    /             "
						Escribir "                                                              /       |               "
						Escribir "                                                             /        |   {\_/}       "
						Escribir "                                                            / /\  /\  \  ( o o )      "
						Escribir "                                                       /\   V   \/ _\  \/ |^ ^|       "
						Escribir "                                                       \ \____--**     __ (vvv)       "
						Escribir "                                                        \__ __       )   \\           "
						Escribir "                                                          **  **\  /     )))              (             "             //12
						Escribir "                                                                 )))                    )( ) )         "            //13
						escribir "                                                                                      )(  () )((        "           //14
						escribir "                                                                                      (       )        "          //15
						escribir "                                                                                    ( ________ )       "   //16
						escribir "                                                                             (       |        |         "           //17
						escribir "                                                                           ))(       |    _   |         "        //18
						escribir "                                                __________________________)____)_____|___| |__|_______________"    //19
						jugador(raza, job)
						sec
						
					FinSi
				FinSi
			FinSi
		FinSi
		space
	FinSi
	
FinFuncion

////// NARRATIVE FUNCTIONS

Funcion riddle(answer1, answer2, answer3, answer4, answer5)
	dotbreak
	Si answer1 = 1 y answer2 = 1  y answer3 = 1 y answer5 = 1 Entonces
		Escribir "        - The one who believes that in friendship, there is true strenght. - "
	SiNo
		Si answer1 = 1 o answer2 = 1 o answer3 = 1 Entonces // 1 or more enemies befriended
			Escribir '        - The one who believes in true choice. - '
		SiNo
			Si answer1 = 3 y answer2 = 3  y answer3 = 3 y answer4 = 2 Entonces
				Escribir '        - The one who is not bothered by the changes in the wind. - '
			SiNo
				Escribir '        - The one who believes in power above all else. - '
			FinSi
		FinSi
	FinSi
	space
	dotbreak
FinFuncion

Funcion Spider(nombre, job, answer1 Por Referencia)
	Segun answer1 Hacer
		1:			
		2:
			dotbreak
			Escribir '     * The spider pounced onto the ', job, ', engaging in battle. *'
			// battle
			next
		3:			
			dotbreak
			Escribir '  Not wanting to fight or interact with the spider, ' , nombre, ' ran off...'
			next
	FinSegun
FinFuncion

Funcion Wolf(job, nombre, answer2 Por Referencia)
	Segun answer2 Hacer
		1:
		2:	
			dotbreak
			Escribir '  Naturally, the wolf saw its chance to have a nice meal.'
			Escribir '  The lone wolf attacked ', nombre
			// battle
			next
		3:	
			dotbreak
			Escribir '  Before the wolf could notice them, they ran off.'
			next
	FinSegun
FinFuncion

Funcion Snake(nombre, job, answer3 Por Referencia)
	Segun answer3 Hacer
		1:			
		2:	
			dotbreak
			Escribir '  The snake felt threatened by the ', job,'.'
			Escribir '  Attacking them in the process.'
			// battle			
			next
		3:	
			dotbreak
			Escribir '  Carefully sneaking away, the ', job, ' escaped unnoticed.'
			next
	FinSegun
FinFuncion

Funcion Dragon2(nombre, job, raza, answer1, answer2, answer3, answer4, answer5 Por Referencia)
	Segun answer5 Hacer
		1:
			Escribir '  ', nombre, ', slowly approached the dragon, keeping their weapon lowered.'
			Escribir '  The ', job, ' took its time to sort out any problems between the villagers and the dragon.'
			Escribir '  Once the problem had been solved, the villagers gained a new ally, and the dragon got back its egg,'
			Escribir '  in return it kept the villagers safe from any dangers.'
			Si answer1 = 1 o answer2 = 1 o answer3 = 1 Entonces
				Escribir '  And so, for bringing peace between the two, ', nombre, ' became the hero of the villagers and friend of the monsters.'				
			SiNo
				Escribir '  And so, for bringing peace between the two, ', nombre, ' became the hero of the village.'
			FinSi
		2:
			Si answer1 = 1 o answer2 = 1 o answer3 = 1 Entonces // at least 1 enemy befriended
				Si (answer1 = 1 y answer2 = 1) o (answer1 = 1 y answer3 = 1) o (answer2 = 1 y answer3 = 1) o (answer1 = 1 y answer2 = 1  y answer3 = 1) Entonces // 2 or more enemies befriended
					Escribir '  As the group approached the dragon`s lair,'
				SiNo
					Escribir '  As the two approached the dragon`s lair,'
				FinSi
				Escribir '  the air became thick with tension. '
				Escribir '  The ground trembled beneath their feet as Ignarius emerged from the shadows. '
				Escribir '  ', nombre, ' stepped forward, weapon in hand, ready to face the beast.'
				
			SiNo
				Escribir '  As the ', job,' approached the dragon`s lair,'
				Escribir '  the air became thick with tension. '
				Escribir '  The ground trembled beneath their feet as Ignarius emerged from the shadows. '
				Escribir '  ', nombre, ' stepped forward, weapon in hand, ready to face the beast.'
			FinSi
			// battle
	FinSegun
	next
FinFuncion

////// BATTLE FUNCTIONS

Funcion resultado(hit)
	Si hit == Verdadero Entonces
		Escribir "      * HIT! *"
	SiNo
		Escribir "      * MISS! *"
		Esperar 2.0 Segundos
	FinSi
	space
FinFuncion

Funcion battle(interactuar, answer1, answer2, answer3, hit, choice, nombre, job, raza, attack, enemyHealth Por Referencia, enemyName, enemyStrenght, strenghtPoints, magicPoints, healthPoints Por Referencia, defensePoints, randomMove, enemyName, enemyMove, enemyMove2, candySpider, puddingGoblin, gummyBear, dragon)
	Repetir
		/////////////////////////////////////// BATTLE MENU
		Repetir
			titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
			enemyAnimacion(choice, hit, nombre, job, raza, healthPoints, strenghtPoints, magicPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)	
			Escribir "  [ BATTLE MENU ] "
			space
			Si job == "Adventurer" Entonces
				Escribir "    1 - Sword"
			SiNo
				Si job == "Ranger" Entonces
					Escribir "    1 - Bowstring"
				SiNo
					Si job == "Warrior" Entonces
						Escribir "    1 - Big Sword"
					SiNo
						Si job == "Mage" Entonces
							Escribir "    1 - Cane"
						FinSi
					FinSi
				FinSi
			FinSi
			Escribir "    2 - Magic"
			Escribir "    3 - Defense"
			Si dragon == Verdadero Entonces
				Escribir "    X - [Dragon is too angry to befriend]"
			SiNo
				Escribir "    4 - Befriend"
			FinSi
			space
			Leer choice
			
			Si (choice > 4 o choice < 1) o ( dragon == Verdadero y (choice > 3 o choice < 1))
				linebreak
				incorrect
			FinSi
			
		Mientras Que (choice > 4 o choice < 1) o ( dragon == Verdadero y (choice > 3 o choice < 1)) // si input incorrecto, se repite
		
		Esperar 1.0 Segundos
		///////////////////////////////////// PLAYER ATTACK
		Segun choice Hacer 
			1:
				space
				Esperar 1.0 Segundos
				Si job == "Ranger" Entonces ////// Ranger has more HIT probability
					attack = Azar(10) // 9/10
					Si attack <= 8 Entonces
						hit = Verdadero
						resultado(hit)
						Si puddingGoblin == Verdadero Entonces // WOLF resists physical attacks
							enemyHealth = enemyHealth - (strenghtPoints - 5)
							sec
							Escribir "        * THE ", enemyName, " IS RESISTANT TO PHYSICAL ATTACKS *"
							Esperar 2.0 Segundos
						SiNo
							enemyHealth = enemyHealth - strenghtPoints
						FinSi
					SiNo
						resultado(hit)	
						Si puddingGoblin == Verdadero Entonces // WOLF resists physical attacks
							enemyHealth = enemyHealth - (strenghtPoints - 5)
							sec
							Escribir "        * THE ", enemyName, " IS RESISTANT TO PHYSICAL ATTACKS *"
							Esperar 2.0 Segundos
						SiNo
							enemyHealth = enemyHealth - strenghtPoints
						FinSi
					FinSi		
				SiNo
					attack = Azar(6) // 5/6 // Other classes/jobs have less HIT probability
					Si attack <= 4 Entonces
						hit = Verdadero
						resultado(hit)	
						Si puddingGoblin == Verdadero Entonces // WOLF resists physical attacks
							enemyHealth = enemyHealth - (strenghtPoints - 5)
							sec
							Escribir "        * THE ", enemyName, " IS RESISTANT TO PHYSICAL ATTACKS *"
							Esperar 2.0 Segundos
						SiNo
							enemyHealth = enemyHealth - strenghtPoints
						FinSi
					SiNo
						resultado(hit)						
					FinSi	
				FinSi
			2:
				space				
				Esperar 1.0 Segundos
				attack = Azar(6) // 5/6
				Si attack <= 4 Entonces
					hit = Verdadero
					resultado(hit)	
					Si gummyBear == Verdadero Entonces // SNAKE resists magic attacks
						enemyHealth = enemyHealth - (magicPoints - 3)
						sec
						Escribir "        * THE ", enemyName, " IS RESISTANT TO MAGIC *"
						Esperar 2.0 Segundos
					SiNo
						enemyHealth = enemyHealth - magicPoints
					FinSi
				SiNo
					resultado(hit)	
				FinSi
			3:
				Escribir "  You put up your guard!"
				Esperar 2.0 Segundos
			4:
				titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
				enemyAnimacion(choice, hit, nombre, job, raza, healthPoints, strenghtPoints, magicPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)		
				interactuar = Verdadero
				Esperar 1.0 Segundo
				Si candySpider == Verdadero Entonces
					Escribir '  In the midst of battle, ', nombre,' extended an open hand, offering friendship to the spider.'
					Escribir '  To their  surprise, the spider seemed to understand their intentions and lowered its guard.'
					Escribir '  It turned out to be a loyal companion, its silk-spinning skills proving valuable on their journey.'
				SiNo
					Si puddingGoblin == Verdadero Entonces
						Si enemyHealth == 35 Entonces
							Escribir '  Before attacking, ', nombre, ' stopped and offered food to the wolf.'
						SiNo
							Escribir '  As they battled, the ' , job, ', stopped and offered food to the wolf.'
						FinSi
						Escribir '  Seeing as the ', job, ' was offering food, the wolf took it.'
						Escribir '  No longer being hungry the wolf decided to repay the ', job
						Escribir '  by following them on their journey.'
					SiNo
						Si gummyBear == Verdadero Entonces
							Escribir '  Halting the battle, the ', job, ' took a calculated risk and extended their hand towards the snake,'
							Escribir '  palm facing upward, and allowed the snake to explore their hand with its forked tongues.'
							Escribir '  The serpentine creature`s scales were cool to the touch, and its movements were surprisingly gentle.'
							Escribir '  It was as though the two heads were engaged in a silent conversation, deciding whether to trust this ', job,'.'
							Escribir '  ', nombre, ' decided to mediate between the two heads, resolving their inner conflict.'
							Escribir '  The snake, now unified, shared its knowledge of hidden paths through the forest. Helping the adventurer along the way.'
						FinSi
					FinSi
				FinSi
		FinSegun
		/////////////////////////////// ENEMY ATTACK
		Si candySpider == Verdadero Entonces
			enemyName = "CANDY SPIDER"	
			enemyMove = " throws its web!"
			enemyMove2 = " crawls all over you!"
		SiNo
			Si puddingGoblin == Verdadero Entonces
				enemyName = "WINTER WOLF"
				enemyMove = " launches to bite!"
				enemyMove2 = " tries to scratch you!"
			SiNo
				Si gummyBear == Verdadero Entonces
					enemyName = "TWO-HEADED SNAKE"
					enemyMove = " sprays its venom!"
					enemyMove2 = " moves its heads to confuse you!"
				SiNo
					Si dragon == Verdadero Entonces
						enemyName = "IGNARIUS THE DRAGON"
						enemyMove = " creates a whirlwind with its wings!"
						enemyMove2 = " breaths fire towards you!"
					FinSi
				FinSi
			FinSi
		FinSi
		Si choice < 4 Entonces
			Si enemyHealth > 0 Entonces
				titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
				enemyAnimacion(choice, hit, nombre, job, raza, healthPoints, strenghtPoints, magicPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
				hit = Falso
				space
				Escribir "   " enemyName, " is preparing to attack!"
				Esperar 2.0 Segundos
				space
				randomMove = Azar(2)
				Si randomMove > 0
					Escribir "   - ", enemyName, enemyMove, " -"
				SiNo
					Escribir "   - ", enemyName, enemyMove2, " -"
				FinSi
				Esperar 2.0 Segundos
				space
				attack = Azar(6) // 4/6
				Si attack <= 3 Entonces
					Escribir "       * HIT! *"
					space
					Si choice == 3 Entonces
						Si defensePoints >= enemyStrenght Entonces 
							Escribir "  ", nombre, " your DEFENSE is STRONG!"
							space
							Esperar 1.0 Segundo
							Escribir "  NO DAMAGE!"
						SiNo
							healthPoints = healthPoints - (healthPoints - (enemyStrenght - defensePoints))
							Escribir "    ", nombre, " HP: -", (enemyStrenght - defensePoints)
						FinSi
					SiNo	
						healthPoints = healthPoints - enemyStrenght
						Escribir "    ", nombre, " HP: -", enemyStrenght
					FinSi
				SiNo
					Escribir "       * MISS! *"	
					space
				FinSi	
				Esperar 3.0 Segundos				
				titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
				enemyAnimacion(choice, hit, nombre, job, raza, healthPoints, strenghtPoints, magicPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
				Si healthPoints <= 0
					Escribir "       * DEFEAT * "
					next
				FinSi
			SiNo
				titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
				enemyAnimacion(choice, hit, nombre, job, raza, healthPoints, strenghtPoints, magicPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
				Esperar 1.0 Segundo
				candySpider = Falso
				puddingGoblin = Falso
				gummyBear = Falso
			FinSi
		FinSi
	Mientras Que (enemyHealth > 0) y (interactuar == Falso) y (healthPoints > 0)
FinFuncion


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/// JUEGO //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Algoritmo villageAdventureGame
	Definir nombre, enemyName, raza, job, enemyMove1, enemyMove2, characters, line, input Como Caracter
	Definir razaChoice, jobChoice, attackPoints, defensePoints, magicPoints, healthPoints, enemyHealth, enemyStrenght, answer1, answer2, answer3, answer4, answer5, lNombre, nInput, numC, start, startL, a, x, count, stop Como Numerico
	Definir humano, elfo, orco, duende, candySpider, gummyBear, puddingGoblin, dragon como Logico
// valores
	strenghtPoints = 0
	defensePoints = 0
	magicPoints = 0
	healthPoints = 0
//
	enemyStrenght = 0
	enemyHealth = 0
	
// T/F
	humano = Falso
	elfo = Falso
	orco = Falso
	duende = Falso
// enemies	
	interactuar = Falso
	candySpider = Falso
	puddingGoblin = Falso  // WINTER WOLF (name change)
	gummyBear = Falso  // TWO-HEADED SNAKE (name change)
	dragon = Falso
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
// COMIENZA JUEGO
	
	//dragon_animation  //////////////////////////////////////////////////////////////////////////////// REINTRODUCE WHEN FINISHED
	
//CHARACTER CREATION

	Repetir 
		titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
		Escribir "  NAME YOUR CHARACTER: "
		space
		Leer nombre
		lNombre = LONGITUD(nombre)
		Si lNombre > 5 Entonces
			space
			linebreak
			space
			Escribir "     * No more than 5 (five) characters allowed *"
			Esperar 2.0 Segundos
			nombre = ""
		SiNo
			Si lNombre < 2 Entonces
				space
				linebreak
				space
				Escribir "     * No less than 2 (two) characters allowed *"
				Esperar 2.0 Segundos
				nombre = ""
			FinSi
		FinSi
	Mientras Que (lNombre > 5) o (lNombre < 2)  // nombre de jugador debe ser entre cinco y dos caracteres 
	
	Repetir
		titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
		Escribir "  PICK A RACE: "	
		space
		Escribir "  1- Human"
		Escribir "  2- Elf"
		Escribir "  3- Orc"
		Escribir "  4- Dwarf"	
		space
		Leer razaChoice
		lineBreak
		Si razaChoice > 4 o razaChoice < 1 Entonces
			incorrect
		FinSi
	Mientras Que razaChoice > 4 o razaChoice < 1 //si input no en seleccion, se repite
	Esperar 1.0 Segundos
	space
	healthPoints = 20
	Segun razaChoice
		1:
			humano = Verdadero
			raza = "HUMAN"
			Escribir " * You are a Human! *"
			strenghtPoints = 6
			defensePoints = 5
			magicPoints = 3
		2:			
			elfo = Verdadero
			raza = "ELF"
			Escribir "  * You are an Elf! *"
			strenghtPoints = 4
			defensePoints = 4
			magicPoints = 8
		3:
			orco = Verdadero
			raza = "ORC"
			Escribir "  * You are an Orc! *"
			strenghtPoints = 8
			defensePoints = 7
			magicPoints = 1			
		4:
			duende = Verdadero
			raza = "DWARF"
			Escribir " * You are a Dwarf! *"
			strenghtPoints = 5
			defensePoints = 8
			magicPoints = 5			
	FinSegun
	sec
	Repetir
		titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
		Escribir "  CHOOSE A CLASS: "
		space
		Escribir "  1- Adventurer" 
		Escribir "  2- Mage" 
		Escribir "  3- Warrior" 
		Escribir "  4- Ranger" 
		space
		Leer jobChoice
		lineBreak
		Si jobChoice > 4 o jobChoice < 1 Entonces
			incorrect
		FinSi
	Mientras Que jobChoice > 4 o jobChoice < 1 //si input no en seleccion, se repite
	space
	Esperar 1.0 Segundos	
	Segun jobChoice
		1:
			Escribir " * You are an Adventurer! *" // balanced
			strenghtPoints = strenghtPoints +2
			defensePoints = defensePoints +2
			magicPoints = magicPoints +1
			adventurer = Verdadero
			job = "Adventurer"
		2:
			Escribir "  * You are a Mage! *" // ++ magic
			strenghtPoints = strenghtPoints +0
			defensePoints = defensePoints +0
			magicPoints = magicPoints +4
			mage = Verdadero
			job = "Mage"
		3:
			Escribir "  * You are a Warrior! *" // + attack , + defense
			strenghtPoints = strenghtPoints +2
			defensePoints = defensePoints +2
			magicPoints = magicPoints +0
			warrior = Verdadero
			job = "Warrior"
		4:
			Escribir "  * You are a Ranger! *" //Less damage , more probability of hit
			strenghtPoints = strenghtPoints -2
			defensePoints = defensePoints +4
			magicPoints = magicPoints +0
			ranger = Verdadero
			job = "Ranger"
	FinSegun	
	sec
	//FIN CHARACTER CREATION
	
	///// INTRO ///////////////////////////
	
	titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)	
	Escribir '  In a world shrouded in darkness, there was a ', job, ' known as ', nombre
	Escribir '  They had been wandering through the dark forest for days,'
	Escribir '  desperately seeking refuge at a nearby village.'
	//The screen can be errased after this.
	Escribir '  The nightfall was fast approaching, and the chilling howls of unseen creatures sent shivers down their spine.'
	Escribir '  They ventured deeper into the woods, their heart pounding in their chest..'
	next
	
	///// SPIDERS - CREATURE 1 ///////////////////////////
	
	Repetir
		// if player dies, this restarts scene
		
		healthPoints = 15
		
		Repetir //si input no en seleccion, se repite
			titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)		
			Escribir '  As the shadows lengthened, they suddenly found themselves face to face with a candy spider,'
			Escribir '  its eight legs poised to strike.'
			Escribir '  They had a choice to make.'
			sec
			question
			Escribir ' [ 1- Befriend the spider. 2- Fight it. 3- Run away ]'
			questionEnd
			
			Leer answer1 //// first choice
			
			Si answer1 > 3 o answer1 < 1 Entonces
				linebreak
				incorrect
			FinSi
			
		Mientras Que answer1 > 3 o answer1 < 1
		
		Spider(nombre, job, answer1)
		
		Si (answer1 <> 3) y (healthPoints > 0) Entonces	// if choice NOT 3
			
			candySpider = Verdadero
			enemyHealth = 20
			enemyStrenght = 4
			space
			Segun answer1 Hacer 
				1:	
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					enemyAnimacion(choice, hit, nombre, job, raza, healthPoints, strenghtPoints, magicPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					space
					Escribir '  With a calm demeanor, ', nombre,' extended an open hand, offering friendship to the spider.'
					Escribir '  To their  surprise, the spider seemed to understand their intentions and lowered its guard.'
					Escribir '  It turned out to be a loyal companion, its silk-spinning skills proving valuable on their journey.'					
				2:
					battle(interactuar, answer1, answer2, answer3, hit, choice, nombre, job, raza, attack, enemyHealth, enemyName, enemyStrenght, strenghtPoints, magicPoints, healthPoints, defensePoints, randomMove, enemyName, enemyMove, enemyMove2, candySpider, puddingGoblin, gummyBear, dragon)
			FinSegun
			
			Si (healthPoints > 0) Entonces			
				strenghtPoints = strenghtPoints + 8
				magicPoints = magicPoints + 8
				plus				
			FinSi
			
		FinSi
		
		Si enemyHealth > 0 Entonces
			answer1 = 1
		FinSi
		
		candySpider = Falso
		
	Mientras Que (healthPoints < 1) // si el jugador pierde la batalla la escena reinicia
	
	
	///// WOLF - CREATURE 2 ///////////////////////////
	
	Repetir // if player dies, this restarts scene
		
		healthPoints = 30
		
		Repetir //si input no en seleccion, se repite
			
			titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)		
			
			// dependes on story choice
			Segun answer1 Hacer
				1:
					Escribir '  As ',nombre, ' continues through the forest along side their new companion, they encounter a lone, hungry wolf.'
					Escribir '  Surprisingly, the wolf hadn`t detected the ', job, ' and their companion.'
				2:
					Escribir '  After defeating the candy spider, the ', job, '  continued on with their adventure.'
					Escribir '  As ',nombre, ' continues through the forest, and they encounter a lone, hungry wolf.'
					Escribir '  Surprisingly, the wolf hadn`t detected the ', job, '.'
				3:
					Escribir '  As ',nombre, ' continues through the forest, they encounter a lone, hungry wolf.'
					Escribir '  Surprisingly, the wolf hadn`t detected the ', job, '.'
			FinSegun	
			sec
			question
			Escribir ' [ 1- Feed the hungry wolf. 2- Fight it. 3- Run away ]'
			questionEnd
			
			Leer answer2 //// second choice
			Si answer2 > 3 o answer2 < 1 Entonces
				linebreak
				incorrect
			FinSi
			
		Mientras Que answer2 > 3 o answer2 < 1
		
		Wolf(job, nombre, answer2)
		
		Si (answer2 <> 3) y (healthPoints > 0) Entonces // if choice NOT 3
			
			puddingGoblin = Verdadero
			enemyHealth = 45
			enemyStrenght = 6
			space
			
			Segun answer2 Hacer			
				1:
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					enemyAnimacion(choice, hit, nombre, job, raza, healthPoints, strenghtPoints, magicPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					space
					Escribir '  The hungry wolf took notice of the ', job, '.'
					Escribir '  Naturally, the wolf saw its chance to have a nice meal.'
					Escribir '  As the wolf was about to attack the ' , job, ', it stopped in its tracks.'
					Escribir '  Seeing as the ', job, ' was offering it food, the wolf took it.'
					Escribir '  No longer being hungry the wolf decided to repay the ', job
					Escribir '  by following them on their journey.'
				2:
					battle(interactuar, answer1, answer2, answer3, hit, choice, nombre, job, raza, attack, enemyHealth, enemyName, enemyStrenght, strenghtPoints, magicPoints, healthPoints, defensePoints, randomMove, enemyName, enemyMove, enemyMove2, candySpider, puddingGoblin, gummyBear, dragon)
			FinSegun
			
			Si (healthPoints > 0) Entonces			
				strenghtPoints = strenghtPoints + 8
				magicPoints = magicPoints + 8
				plus				
			FinSi
			
		FinSi
		
		Si enemyHealth > 0 Entonces
			answer2 = 1
		FinSi
		
		puddingGoblin = Falso
		
	Mientras Que (healthPoints < 1) // si el jugador pierde la batalla la escena reinicia
	
	///// SNAKE - CREATURE 3 ///////////////////////////
	
	Repetir // if player dies, this restarts scene
		
		healthPoints = 55
		
		Repetir //si input no en seleccion, se repite
			
			titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)		
			
			// dependes on story choices
			Si answer2 == 2 Entonces
				Escribir '  Having defeated the wolf, the ', job, ' moved onward.'
			SiNo
				Si answer2 == 1 Entonces
					Escribir '  After befriending the wolf, the ', job, ' moved onward.'
				FinSi
			FinSi	
			
			Si (answer1 == 1) y (answer2 == 1)Entonces
				Escribir '  Further into their journey, the three of them came across a two-headed snake,'
			SiNo
				Si (answer1 == 1) o (answer2 == 1) Entonces
					Escribir '  As they continued their journey, they came across a two-headed snake,'
				SiNo
					Escribir '  As ', nombre, ' continued their journey, ', nombre,' came across a two-headed snake,'
				FinSi
			FinSi
			Escribir '  one head hissing with hostility, while the other displayed curiosity.'
			Escribir '  The snake approaches you with interest..'
			sec
			
			question
			Escribir ' [ 1- Befriend the snake. 2- Fight it. 3- Run away ]'
			questionEnd
			
			Leer answer3 //// third choice
			
			Si answer3 > 3 o answer3 < 1 Entonces
				linebreak
				incorrect
			FinSi
			
		Mientras Que answer3 > 3 o answer3 < 1
		
		Snake(nombre, job,answer3)
		
		Si answer3 <> 3 y healthPoints > 0 Entonces // if choice NOT 3
			
			gummyBear = Verdadero
			enemyHealth = 60
			enemyStrenght = 8
			space
			
			Segun answer3 Hacer			
				1:
					titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					enemyAnimacion(choice, hit, nombre, job, raza, healthPoints, strenghtPoints, magicPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
					Escribir '  The ', job, ' took a calculated risk and extended their hand towards the snake,'
					Escribir '  palm facing upward, and allowed the snake to explore their hand with its forked tongues.'
					Escribir '  The serpentine creature`s scales were cool to the touch, and its movements were surprisingly gentle.'
					Escribir '  It was as though the two heads were engaged in a silent conversation, deciding whether to trust this ', job,'.'
					Escribir '  ', nombre, ' decided to mediate between the two heads, resolving their inner conflict.'
					Escribir '  The snake, now unified, shared its knowledge of hidden paths through the forest. Helping the adventurer along the way.'
				2:
					battle(interactuar, answer1, answer2, answer3, hit, choice, nombre, job, raza, attack, enemyHealth, enemyName, enemyStrenght, strenghtPoints, magicPoints, healthPoints, defensePoints, randomMove, enemyName, enemyMove, enemyMove2, candySpider, puddingGoblin, gummyBear, dragon)
			FinSegun
			
			Si (healthPoints > 0) Entonces			
				strenghtPoints = strenghtPoints + 8
				magicPoints = magicPoints + 8
				plus				
			FinSi
			
		FinSi
		
		Si enemyHealth > 0 Entonces
			answer3 = 1
		FinSi
		
		gummyBear = Falso 
		
	Mientras Que (healthPoints < 1) // si el jugador pierde la batalla la escena reinicia
	
	///// DRAGON - FINAL BOSS ///////////////////////////
	
	Repetir //si input no en seleccion, se repite
		
		titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)		
		Si answer3 == 1 Entonces
			Escribir '  After befriending the two-headed snake defeated, ', nombre, ' continued on their journey.'
		SiNo
			Si answer3 == 2 Entonces
				Escribir '  With the two-headed snake defeated, ', nombre, ' continued on their journey.'
			FinSi
		FinSi	
		
		// depends on story choices
		Si (answer1 = 1 y answer2 = 1) o (answer1 = 1 y answer3 = 1) o (answer2 = 1 y answer3 = 1) o (answer1 = 1 y answer2 = 1  y answer3 = 1) Entonces // 2 or more enemies befriended
			Escribir '  Upon reaching the village, ', nombre, ' went in followed by their new companions.'
			Escribir '  There was a dragon looming around, naturally, the villagers are petrified.'
		SiNo
			Si answer1 = 1 o answer2 = 1 o answer3 = 1 Entonces // only 1 enemy befriended
				Escribir '  Upon reaching the village, ', nombre, ' went in followed by their new companion.'
				Escribir '  There was a dragon looming around, naturally, the villagers are petrified.'
			SiNo
				Escribir '  ',nombre, ' reaches the village, but there`s a dragon looming around, naturally, the villagers are petrified.'
			FinSi
		FinSi
		sec
		doubleSpace
		Escribir '       > Will you approach the dragon? <'
		questionEnd
		Escribir ' [   1- Yes   or   2- No                            ]'
		questionEnd
		
		Leer answer4 //// fourth choice
		
		Si (answer4 > 2) o (answer4 < 1) Entonces
			linebreak
			incorrect
		FinSi
		
	Mientras Que (answer4 > 2) o (answer4 < 1)
	
	healthPoints = 80
	
	Repetir //si input no en seleccion, se repite
	
		titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)	
		Segun answer4 Hacer
			1:
				Escribir '       > Will you approach the dragon? <'
				questionEnd
				Escribir ' [   YES                                            ]'
				Escribir '  __________________________________________________ '
				space
				question
				Escribir ' [   1- Talk to the Dragon.    2- Fight it.         ]'
				questionEnd
				Leer answer5 //// last choice
				sec
			2:
				sec
				Escribir '  The journey was fraught with challenges, forests teeming with enchanted creatures,'
				Escribir '  desolate deserts where the sun seemed relentless, and icy mountains that tested the travelers'
				Escribir '  endurance. Yet, the villagers pressed on, guided by the hope of finding a new home free from the shadow of the dragon.'
				Escribir '  As the village faded into the distance,'
				Escribir '  ', nombre, ' couldn`t shake the weight of the decision.'
				Escribir '  The once-vibrant village now stood as a testament to the consequences of choosing not to face the dragon.'
				Si answer1 = 1 o answer2 = 1 o answer3 = 1 Entonces
					Escribir '  The ', job, ' continued to roam the world with their companions, haunted by the echoes of silence of that once village.'
				SiNo
					Escribir '  The ', job ,' continued to roam the world, haunted by the echoes of silence of that once village.'
				FinSi
				next
		FinSegun
		
		Si (answer5 > 2 o answer5 < 1) y answer4 <> 2 Entonces
			linebreak
			incorrect
		FinSi
		
	Mientras Que (answer5 > 2 o answer5 < 1) y answer4 <> 2
	
	Repetir
		
		Si answer4 == 1 Entonces
			titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
			Dragon2(nombre, job, raza, answer1, answer2, answer3, answer4, answer5)
			Si answer5 == 2 Entonces
				dragon = Verdadero
				enemyHealth = 100
				enemyStrenght = 10
				battle(interactuar, answer1, answer2, answer3, hit, choice, nombre, job, raza, attack, enemyHealth, enemyName, enemyStrenght, strenghtPoints, magicPoints, healthPoints, defensePoints, randomMove, enemyName, enemyMove, enemyMove2, candySpider, puddingGoblin, gummyBear, dragon)
			FinSi
		FinSi
		
		Si enemyHealth > 0 Entonces
			answer4 = 1
		SiNo
			Si (answer5 == 2) y (healthPoints > 0) Entonces
				sec
				Escribir '  The journey was fraught with challenges, forests teeming with enchanted creatures,'
				Escribir '  desolate deserts where the sun seemed relentless, and icy mountains that tested the travelers endurance.'
				Escribir '  Yet, the villagers pressed on, guided by the hope of finding a new home free from the shadow of the dragon.'
				Escribir '  Celebrating its defeat, as the village faded into the distance.'
			FinSi
		FinSi
		
		dragon = Falso 
		
	Mientras Que (healthPoints < 1) // si el jugador pierde la batalla la escena reinicia
	
	healthPoints = 100
	
	///// ENDING ///////////////////////////
	
	titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
	
	Escribir "  However, before their story comes to an end, ", nombre, " finds an ancient monolith with a mysterious carving, reading:"
	doubleSpace
	Esperar 2.0 Segundos
	riddle(answer1, answer2, answer3, answer4, answer5)
	next
	
	// CIFRADO
	
	name = MAYUSCULAS[nombre]
	
	characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890 " // 38 caracteres
	
	numC = LONGITUD(characters)
	Dimension posici[numC]
	Dimension alepos[numC]
	Dimension edicifrando[2,numC]
	Dimension nomename[lNombre]  // longitud de nombre
	start = 1
	end = 1
	
	Para x = 1 Hasta numC Con Paso 1 Hacer  //////// Dividir caracteres
		line = SUBCADENA(characters, start, start)
		edicifrando[1,x] = line
		start = start +1		
		posici[x] = x  // asigna posicion a caracteres
	FinPara
	
	start = 1
	a = 1
	
	Para x = 1 Hasta numC Con Paso 1 Hacer  //////// Scramble caracteres
		Si x = 1 Entonces
			start = Aleatorio(1,numC)
			alepos[1] = start
		SiNo
			start = Aleatorio(1,numC) // da n�mero aleatorio
			a = 1
			Repetir
				Si denuevo == Verdadero Entonces
					a = 1
				FinSi
				denuevo = Falso
				Si alepos[a] == start Entonces // compara n�mero aleatorio a n�mero guardado
					start = Aleatorio(1,numC)
					denuevo = Verdadero
				SiNo
					a = a+1
				FinSi				
			Mientras Que a <> x	 // revisa que sean iguales	para poder continuar	
			alepos[a] = start
		FinSi		
		line = SUBCADENA(characters, start, start)		
		edicifrando[2,x] = line
		cif = Concatenar(cif,edicifrando[2,x])
	FinPara
	
	start = 1
	startL = 0
	a = 1
	x = 0	
	stop = lNombre + 1
	count = 1
	
	Repetir //////// assign position of nombre's characters
		
		nomename[a] = SUBCADENA(name,start,start)
		
		startL = 0
		
		Repetir
			x = x+1
			startL = startL +1
			line = SUBCADENA(characters, startL, startL)
			Si (line == nomename[a]) y (count <= lNombre) Entonces
				posici[a] = x
				x = 0
				count = count+1
			FinSi
			//Escribir pos[a]
		Mientras Que line <> nomename[a]
		//
		start = start +1
		//
		a = a+1	
		
	Hasta Que posici[a] == stop	
	
	x = 0
	
	////////////// Decifrado
	
	Repetir 
		titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
		Escribir "    * It wants them to write a name using the ancient writing spell... * "
		sec
		linebreak
		space
		riddle(answer1, answer2, answer3, answer4,answer5)
		linebreak
		sec
		space
		Escribir "  ", characters
		Escribir "                 = =                     "
		Escribir "  ", cif
		space
		dotbreak		
		space
		Escribir "     The ", job, " writes their answer:"
		space
		Leer input
		nInput = LONGITUD(input)
		Si nInput > 5 Entonces
			space
			linebreak
			space
			Escribir "     * No more than 5 (five) characters allowed *"
			Esperar 3.0 Segundos
		SiNo
			Si nInput < 2 Entonces
				space
				linebreak
				space
				Escribir "     * No less than 2 (two) characters allowed *"
				Esperar 3.0 Segundos
			FinSi
		FinSi
	Mientras Que (nInput > 5) o (nInput < 2)
	
	// CONT.
	
	input = MAYUSCULAS(input)
	
	Dimension desres[nInput]
	
	start = 1
	startL = 0
	a = 1
	x = 0	
	stop = nInput +1
	count = 1
	
	Repetir 
		desres[a] = SUBCADENA(input,start,start)   // input
		startL = 0
		
		Repetir
			x = x+1          // a�ade a posici�n
			startL = startL +1     // busca letra en cifrado
			encrypted = SUBCADENA(cif, startL, startL)   // encrypted es el cifrado
			Si (encrypted == desres[a]) y (count <= nInput)  Entonces
				posici[a] = x
				x = 0
				count = count+1
			FinSi
		Mientras Que encrypted <> desres[a]
		//
		start = start +1    // pr�xima letra (se repite el proceso)
		//
		
		a = a+1    // se guarda posici�n en nueva cajita
		
	Hasta Que posici[a] = stop
	
	////////////////// 2nd string is formed
	
	Repetir
		
		x = x+1
		a = posici[x]
		decifrado = Concatenar(decifrado,edicifrando[1,a])
		
	Hasta Que x = nInput
	
	//// FIN CIFRADO // resultado:
	
	titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
	
	Si decifrado == name Entonces	
		sec
		Escribir "        *+* ", nombre, " *+*"
		space
		sec		
		Escribir "  The ", job, " knew the answer from inside their soul."
		space
		sec
		Escribir "  The journey may have changed a lot, but it did not change the truths ", nombre, " held close to their heart."
		sec		
	SiNo		
		sec		
		Escribir  Sin Saltar "    As the ", job, " could not figure out the riddle, they fell silent, "
		Esperar 2.0 Segundos
		Escribir "and walked away."
	FinSi
	next
	
	titulo(nombre, job, raza, strenghtPoints, magicPoints, healthPoints, enemyName, enemyHealth, candySpider, gummyBear, puddingGoblin, dragon, interactuar)
	
	Escribir "           * >   T H E   E N D   < *  "
	tripleSpace
	tripleSpace	

FinAlgoritmo
