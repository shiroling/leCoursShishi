with Ada.Text_IO; use Ada.Text_IO;
with Usager; use Usager;

package Bench is

    function B_getAge (waitedAge: Integer; user: Type_Usager) return Boolean;

    function B_Affect (first_user: Type_Usager; second_user: Type_Usager) return Boolean;

    function B_Equal (first_user: Type_Usager; second_user: Type_Usager) return Boolean;

    function B_identityCompare (first_user: Type_Usager; second_user: Type_Usager) return Boolean;

    function B_ID_Inf (first_user: Type_Usager; second_user: Type_Usager) return Boolean;

end Bench;