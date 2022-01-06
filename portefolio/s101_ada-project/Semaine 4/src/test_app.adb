with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;
with App;              use App;
with usager;              use usager;

procedure test_app is

    user : Type_Usager;
    user2 : Type_Usager;
    user3 : Type_Usager;
    user4 : Type_Usager;

    isFinded : Boolean;
    index_pos : Integer;

    myApp : Type_App;
    myOtherApp : Type_App;
    myEmptyApp : Type_App;
    unsortedApp : Type_App;

begin

    -- Test lecture user
    getUsager(user);
    -- Test lecture user2
    getUsager(user2);
    -- Test lecture user3
    getUsager(user3);
        -- Test lecture user4
    getUsager(user4);

    -- #######################Test Fonction addLast()##########################
    addLast(myApp, user);
    -- Cas #1 Ajout correct
    if myApp(user_array(1).numero_adherent then
        put_line("L'utilisateur existe bien !")
    else
        put_line("L'utilisateur n'existe pas.");
    end if;

    exception
    -- Cas #3 Déjà existant
    addLast(myApp, user);
    when ALREADY_EXIST =>
        put ("Trop de valeurs a lire /!\") ;
    -- Cas #2 Dépassement
    -- On simule un tableau plein
    myApp.nbUser:= 100;
    addLast(myApp, user2)
    when DEBORDEMENT =>
        put ("L'utilisateur est déjà inclus dans l'application /!\")
        
    -- #######################Test Fonction find()##########################
    -- Cas #1 Première valeur du tableau
    find(myApp, user, index_pos, isFinded);
    if index_pos = 1 then
        put("L'utilisateur est bien placé à la première place !")
    else
        put("L'utilisateur n'est pas palcé à la première place !!")
    end if;

    -- Cas #2
    -- On simule un tableau quasiment plein
    myApp.nbUser:= 99;
    addLast(myApp, user2);
    find(myApp, user2, index_pos, isFinded);
    if index_pos = 100 then
        put("L'utilisateur est bien placé à la dernière place !")
    else
        put("L'utilisateur n'est pas palcé à la dernière place !!")
    end if;

    -- Cas #3
    -- On simule un tableau à moitié vide
    myApp.nbUser:= 49;
    addLast(myApp, user3);
    find(myApp, user3, index_pos, isFinded);
    if index_pos = MAX_LENGTH / 2; then
        put("L'utilisateur est bien au milieu de la liste !");
    else
        put("L'utilisateur n'est pas au milieu de la liste");
    end if;

    -- Cas #4
    find(myApp, user4, index_pos, isFinded);
    if isFinded = False then
        put("L'utilisateur n'est effectivement pas trouvable");
    else
        put("L'utilisateur a été trouvé /!\");
    end if;

    -- #######################Test Fonction remove()##########################
    addLast(myOtherApp, user);
    addLast(myOtherApp, user2);
    
    -- Cas #1 Nombre d'usager - 1
    remove(myApp, 1);
    if myApp.nbUser = 1 then
        put("L'opération s'est déroulé correctement !");
    else
        put("L'opération s'est mal déroulée :(");
    end if;

    -- Cas #2 Tableau vide
    remove(myEmptyApp, 2);
    when EMPTY_ARRAY =>
        put("Le tableau est vide !!");

    -- Cas #3 ID > nbUser
    remove(myApp, 42);
    -- when DEBORDEMENT catch

    -- #######################Test Fonction sort()##########################
    addLast(unsortedApp, user);
    addLast(unsortedApp, user2);
    addLast(unsortedApp, user3);
    addLast(unsortedApp, user4);

    sort(unsortedApp);

    readApp(unsortedApp);
    
end test_app;