-- Inclusion de la  bibliotéque standard d'entrée/ sorties textuelles.
with Ada.Text_IO; use Ada.Text_IO;

procedure affichage is

   message : String (1 .. 200);  -- Chaine de 199 charactéres pour acceuillir l'entrée utilisateur
   length  : Integer;            -- taille en éléments actifs de la chaine ^ci-dessus^

begin
   
   -- entrée utilisateur.
   Put_Line ("Quel est votre message ? ");
   Get_Line (message, length);

   -- affichage un peu pas ouf...
   Put_Line (message);
   Put_Line ("Oups ! Il affiche n'importe quoi");

   -- bon affichege du message.
   Put_Line (message (1 .. length));
   Put_Line ("Ah oui, maintenant c'est bien mieux");
end affichage;
