with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;

package Usager is

    type Type_Usager is record
        id : Integer;
        name : String(1 .. 30):= (others => ' ');
        email : String(1 .. 30):= (others => ' ');
        phone : String(1 .. 10):= (others => ' ');
        birthday_year : Integer;
    end record;

    procedure getUser (new_user: in out Type_Usager);

    procedure putUser (user: Type_Usager);

    function getAge (user: in Type_Usager) return Integer;

    function "=" (first_user: Type_Usager; second_user: Type_Usager) return Boolean;

    function identityCompare (first_user: Type_Usager; second_user: Type_Usager) return Boolean;

    function "<" (first_user: Type_Usager; second_user: Type_Usager) return Boolean;

    function ">" (first_user: Type_Usager; second_user: Type_Usager) return Boolean;

end Usager;