package body File is


    --procedure d'écriture d'un utilisateur dans un fichier local.
    procedure WriteOnFile (user: Type_Usager)
    is
        F : File_Type;
        File_Name : constant String := "database.txt";
    begin
        Open (F, Append_File, File_Name);
        put_line(F, "num : " & Integer'Image(user.id));
        put_line(F, "name : " & user.name);
        put_line(F, "birthday_year : " & Integer'Image(user.birthday_year));
        put_line(F, "email : " & user.email);
        put_line(F, "phone : " & user.phone);
        put_line(F, "=====================================================");
        Close(F);
    end WriteOnFile;

end File;