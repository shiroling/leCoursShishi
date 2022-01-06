with Ada.Text_IO; use Ada.Text_IO;
with Usager; use Usager;
with Bench; use Bench;
with File; use File;

procedure main is
    
    -- Déclatation d'un usager (voit type dans usager.ads)
    myUser: Type_Usager;


    -- 4 autre utilisateurs déclarés pour tester les différentes fonctions.
    first_bench_user: Type_Usager;
    second_bench_user: Type_Usager;
    third_bench_user: Type_Usager;
    fourth_bench_user: Type_Usager;

begin
    
    -- Lescture d'un utilisateur
    getUser(myUser);
    --inscription en dur dans un fichier de DB.
    WriteOnFile(myUser);

    putUser(myUser);

    put("L'age de l'utilisateur est : " & Integer'Image(getAge(myUser)));
    new_line;

    first_bench_user.id:= 123456;
    first_bench_user.name(1) := '1';
    first_bench_user.birthday_year:= 2003;

    New_Line;
    put("#Age Test ");
    if B_getAge(18, first_bench_user) then
        Put("Valide");
    else
        Put("Non Valide");
    end if;

    second_bench_user.id:= 012345;
    second_bench_user.name(1) := '1';
    second_bench_user.birthday_year:= 2003;

    fourth_bench_user.id:= 199999;
    fourth_bench_user.name(1) := '2';
    fourth_bench_user.birthday_year:= 2012;

    New_Line;
    put("#Equal Test ");
    -- # Test de deux user(name, birthday_date)
    -- Deux user égaux
    if B_Equal(first_bench_user, second_bench_user) then
        Put ("Valide");
    else
        Put("Non Valide");
    end if;

    -- Deux user non égaux
    if B_Equal(first_bench_user, fourth_bench_user) = False then
        Put("Valide");
    else
        Put("Non Valide");
    end if;
    
    third_bench_user:= first_bench_user;

    New_Line;
    put("#Affectation Test ");
    -- # Test de vérification de l'affectation
    -- Deux user censé être égaux
    if B_Affect(third_bench_user, first_bench_user) then
        Put("Valide");
    else
        Put("Non Valide");
    end if;

    New_Line;
    put("#idenditityCompare Test ");
    -- # Test de l'indentityCompare
    -- Deux user complétement égaux, 
    if B_identityCompare (first_bench_user, first_bench_user) then
        Put("Valide");
    else
        Put("Non Valide");
    end if;

    -- Deux user non égaux
    if B_identityCompare (first_bench_user, second_bench_user) = False then
        Put("Valide");
    else
        Put("Non Valide");
    end if;

    New_Line;
    put("#< Test ");
    -- # Test des opérateurs mathématiques sur les ID user
    -- ID user inférieur à l'autre
    if (first_bench_user < fourth_bench_user) then
        Put("Valide");
    else
        Put("Non Valide");
    end if;

    -- ID user égal à l'autre
    if (first_bench_user < first_bench_user) = False then
        Put("Valide");
    else
        Put("Non Valide");
    end if;

    -- ID user supérieur à l'autre
    if (first_bench_user < first_bench_user) = False then
        Put("Valide");
    else
        Put("Non Valide");
    end if;

    New_Line;
    put("#> Test ");
    -- # Test des opérateurs mathématiques sur les ID user
    -- ID user inférieur à l'autre
    if (fourth_bench_user > first_bench_user) then
        Put("Valide");
    else
        Put("Non Valide");
    end if;

    -- ID user égal à l'autre
    if (first_bench_user > first_bench_user) = False then
        Put("Valide");
    else
        Put("Non Valide");
    end if;

    -- ID user inférieur à l'autre
    if (first_bench_user > first_bench_user) = False then
        Put("Valide");
    else
        Put("Non Valide");
    end if;

end main;