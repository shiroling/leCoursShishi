-- inclution des bibliotéques standard
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

-- inclusion de la bibliotéque "codeutils", une bibliotéque locale
with codeutils; use codeutils;



procedure verifierCeCode is

   codeLu : Enr;   --déclarations d'une variable de type enr (voir codeutils.ads)

begin
   
   --utilisations de la fonction de lecture de la bibliotéqur codeutils.
   lireCode(code=>codeLu);
   
  -- Vérifier le code
  if codeValide(code=>codeLu) then
	Put ("Ce code est correct pour ce photocopier ");
  else
	Put ("Ce code n'est pas correct pour ce photocopieur ");
  end if;


end verifierCeCode;
