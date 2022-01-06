-- Inclusion des bibliotéques standard d'entrée/ sorties
-- la premiére pour le texte et la seconde pour les entiers.

with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

-- Calcule votre note finale d'algorithmique sur 20
procedure Main is

   note : Integer;      -- Variable stoquant l'entré utilisateur.
   balise : Boolean;    -- Variable Bool servant de condition d'arrét à la boucle.

begin

   balise:= TRUE; 

   Put_Line("Bienvenue dans ce programme convivial !");

   -- Boucle dont la condition d'arrét est l'état de la balise (par défaut à TRUE).
   -- le balise changera d'état une fois que l'utilisateur entrera une note valide. 
   while balise loop

       -- lecture de la note
      New_Line;
      Put_Line ("Quelle est votre note en algorithmie ? ");
      Get (note);

      -- On vérifie que la note est bien comprise
      -- entre les bornes [0;20]
      if note <= 20 and note >= 0 then
         balise:= FALSE;
      else
         put("Merci d'entrer une valeur comprise entre 0 et 20.");
      end if;      

   end loop;

   -- modification de la note.
   -- on ajoute deux à la note
   if note > 18 then
      note:= 20;
   else
      note:= note + 2;
   end if;

      -- affichage de la note
      Put ("Votre note est ");
      Put (note);
      Put_Line ("/20 car vous avez bien travaille !!");
      New_Line;

end Main;
