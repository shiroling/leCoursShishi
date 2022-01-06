with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;
with App;              use App;
with usager;              use usager;

procedure main is

    choice: Integer;

    x: Integer;

    myApp: Type_App;

    user: Type_Usager;
    user2: Type_Usager;

    finded: Boolean;
    index: Integer;

begin
    loop
        put_line("=========================================");
        put_line("Bienvenue dans le menu de l'application !");
        put_line("=========================================");
        put_line("Merci d'entrer la valeur de la fonctionnalite afin de la lancer !");
        put_line("|---------------------------------------------------------------|");
        put_line("| Valeur |      Designation du programme       |    Categorie   |");
        put_line("|---------------------------------------------------------------|");
        put_line("|    1   | Afficher la liste des utilisateurs  |       App      |");
        put_line("|    2   |        Ajoute un utilisateur        |       App      |");
        put_line("|    3   |        Retire un utilisateur        |       App      |");
        put_line("|    4   |    Trouver un utilisateur par nom   |       App      |");
        put_line("|    5   |         Nettoie l'application       |       App      |");
        put_line("|---------------------------------------------------------------|");
        put_line("|    0   |        Quitter le menu              |  Miscellanous  |");
        put_line("|---------------------------------------------------------------|");

        put(">>> ");
        get(choice);

        case choice is
            when 0 =>
                exit;
            when 1 =>
                readApp(myApp);
            when 2 =>
                getUsager(user);
                addLast(myApp, user);
            when 3 =>
                index:= choiceUser(myApp);
                remove(myApp, index);
            when 4 =>
                find_by_name(myApp, user2, finded);
            when 5 =>
                cleanApp(myApp);
            when others =>
                put_line("Merci d'entrer une valeur valide !");
            end case;

            x:= 0;
            while x <= 10 loop
                put_line("");
                x:= x + 1;
            end loop;   



        exit when choice = 0;
    end loop;

end main;