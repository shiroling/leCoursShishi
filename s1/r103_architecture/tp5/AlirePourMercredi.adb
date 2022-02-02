with Ada.text_IO ; use ada.text_io ;
with Ada.integer_text_io ; use ada.integer_text_io ;
with Ada.float_text_io ; use ada.float_text_io ;
with interfaces.c ; use interfaces.c ;
with Ada.Unchecked_Conversion ; 


procedure AlirePourMercredi is
-- Directive donnée à l'éditeur de liens pour construire votre projet via gnat make
-- demande à l'éditeur de liens d'aller chercher les références externes
-- dans le fichier objet "tools.o"
Pragma Linker_Options("tools.o") ;

-- Définition d'un type : pointeur sans type ou universel (ici VoidEtoile) 
-- pouvant contenir l'adresse de n'importe quel type de données
-- après transtypage
type Void is null record;
type VoidEtoile is  access all Void ;
-- pragma Convention (C, VoidEtoile);

-- Définition de types explicites pour les pointeurs de types usuels
-- pointeur de caractères : CharEtoile
-- pointeur d'entiers : IntEtoile
-- pointeur de flottants : FloatEtoile
type CharEtoile  is access all character ;
type IntEtoile   is access all integer ;
type FloatEtoile is access all float ;

-- Fonctions de transtypage des pointeurs typés vers des pointeurs sans type
-- Source est le type d'origine et Target le type de destination
function VoidStar is new Ada.Unchecked_Conversion (Source => CharEtoile, Target => VoidEtoile);
function VoidStar is new Ada.Unchecked_Conversion (Source => IntEtoile, Target => VoidEtoile);
function VoidStar is new Ada.Unchecked_Conversion (Source => FloatEtoile, Target => VoidEtoile);

-- Fonctions de transtypage des pointeurs sans type vers des pointeurs typés
-- Source est le type d'origine et Target le type de destination
function CharStar is new Ada.Unchecked_Conversion (Source => VoidEtoile, Target => CharEtoile);
function IntStar is new Ada.Unchecked_Conversion (Source => VoidEtoile, Target => IntEtoile);
function FloatStar is new Ada.Unchecked_Conversion (Source => VoidEtoile, Target => FloatEtoile);

----------------------------------------------------------------------------------------------------
-- Interface des fonctions écrites en langage C avec le langage ADA
-- Vous n'avez pas à connaître le corps de ces fonctions pour pouvoir les utiliser
----------------------------------------------------------------------------------------------------

-- Affiche, en hexadécimal, nb octets à partir de l'adresse fournie par debut
procedure memprint_Ada(debut : VoidEtoile ; nb : integer) ;
Pragma Import(Convention    => C, 
             Entity        => memprint_Ada, 
             External_Name => "memprint") ;

-- Affiche comme : un caractère, naturel 8, relatif 8, naturel 16, relatif 16, naturel 32, relatif 32, float 32
-- pour 'typeAffiche' valant respectivement CAR, N8, Z8, N16, Z16, N32, Z32, R32 
-- le contenu de la zone indiquée par 'X'. 

-- Définition du type énuméré DataType pour la lisibilité ;
type DataType is (CAR,N8,Z8,N16,Z16,N32,Z32,R32);

procedure afficherComme_Ada(X : VoidEtoile ; typeAffiche : DataType) ;
Pragma Import(Convention    => C, 
             Entity        => afficherComme_Ada, 
             External_Name => "afficherComme") ;


-- force à 0 le bit n° 'nuBit' dans l'octet auquel j'accède après m'être déplacé de 	
-- 'offset' octets depuis l'adresse fournie dans X
procedure resetBitOctet_Ada (X : VoidEtoile ; offset : integer ; nubit : integer) ;
Pragma Import(Convention    => C, 
             Entity        => resetBitOctet_Ada, 
             External_Name => "resetBitOctet") ;


-- force à 1 le bit n° 'nuBit' dans l'octet auquel j'accède après m'être déplacé de 	
-- 'offset' octets depuis l'adresse fournie dans X
procedure setBitOctet_Ada (X : VoidEtoile ; offset : integer ; nubit : integer) ;
Pragma Import(Convention    => C, 
             Entity        => setBitOctet_Ada, 
             External_Name => "setBitOctet") ;

-- Renvoie la valeur du bit n° 'nuBit' dans l'octet auquel j'accède après m'être 	
-- déplacé de 'offset' octets depuis l'adresse fournie dans X
function testBitOctet_Ada (X : VoidEtoile ; offset : integer ; nubit : integer) return integer ;
Pragma Import(Convention    => C, 
             Entity        => testBitOctet_Ada, 
             External_Name => "testBitOctet") ;

function whatsMyEndian return boolean is
	date: aliased integer:=1;
	ptrDate: VoidEtoile := voidStar(date'access);

	begin
		return (testBitOctet_Ada(ptrDate, 3, 0) =1);
	end whatsMyEndian;


a: aliased integer := 181+512+16384; 

-- Message du compilateur : "prefix of "Access" attribute must be aliased"

pointeurA : intEtoile := a'access; 
ptrUnivA : voidEtoile := voidStar(a'access) ;


myEndian: boolean;

begin
	
	memprint_Ada(ptrDate, 4);
	myEndian:= whatsMyEndian;
	put( int(myEndian));

end AlirePourMercredi;
