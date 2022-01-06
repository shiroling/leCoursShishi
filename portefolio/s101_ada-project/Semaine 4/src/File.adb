package body File is


    --procedure d'écriture d'un utilisateur dans un fichier local.
    procedure WriteOnFile (user: Type_Usager)
    is
        F : File_Type;
        File_Name : constant String := "database.txt";
    begin
        Open (F, Append_File, File_Name);
        put_line(F, Integer'Image(user.id));
        put_line(F, user.name);
        put_line(F, Integer'Image(user.birthday_year));
        put_line(F, user.email);
        put_line(F, user.phone);
        put_line(F, "END");
        Close(F);
    end WriteOnFile;

    procedure RecoverAppByFile (app: in out Type_App)
    is
      MonFichier : File_Type;
      i          : Integer;
      m          : String (1 .. LONGUEUR_NOM);
      l          : Natural;

   begin
      -- ouverture du fichier usagers en lecture
      Open (MonFichier, In_File, File_Name);
      -- vérification ouverture correcte
      if End_Of_File (MonFichier) then
         raise ERREUR_OUVERTURE_FICHIER;
      end if;
      -- lecture de TOUS les Enregistrement_Usagers tant que la fin de fichier
      -- n'est pas atteinte
      i := 1;
      while not End_Of_File (MonFichier) loop
         -- lire l'enregistrement courant dans le fichier
         --put("Lecture : ");put(i,0);New_Line;
         Get_Line (MonFichier, m, l);
         -- afficher l'enregistrement lu
         --Put_Line (m.mot (1 .. m.longueur));
         d.mots (i) := unMot (m (1 .. l));
         i          := i + 1;
      end loop;
      d.nbMots := i - 1;
      -- fermer le fichier
      Close (MonFichier);

    end RecoverAppByFile;

end File;
