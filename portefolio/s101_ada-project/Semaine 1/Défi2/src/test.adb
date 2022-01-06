
------- MEME programme que  main.adb mais dans un autre fichier et sans commentaires


with Ada.Text_IO; use Ada.Text_IO;

procedure affichage is

   message : String (1 .. 200);
   length  : Integer;

begin
   Put_Line ("Quel est votre message CONVIVIAL ? ");
   Get_Line (message, length);
   Put_Line (message);
   Put_Line ("Oups ! Il affiche n'importe quoi");
   Put_Line (message (1 .. length));
   Put_Line ("Ah oui, maintenant c'est bien plus CONVIVIAL");
end affichage;
