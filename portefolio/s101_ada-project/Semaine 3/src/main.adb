with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;
with App;              use App;
with usager;              use usager;

procedure main is

    user: Type_Usager;
    user2: Type_Usager;
    myApp: Type_App;
    index_pos: Integer;
    finded: Boolean;

begin

    getUsager(user);

    getUsager(user2);

    addLast(myApp, user);
    addLast(myApp, user2);

    readApp(myApp);

    find(myApp, user2, index_pos, finded);

    if finded = True then
        put("Index obtenu : " & Integer'Image(index_pos));
    else
        put("Pas bon");
    end if;

    exception
    when DEBORDEMENT =>
        put ("Trop de valeurs a lire /!\") ;
    when ALREADY_EXIST =>
        put ("L'utilisateur est déjà inclus dans l'application /!\")

end main;