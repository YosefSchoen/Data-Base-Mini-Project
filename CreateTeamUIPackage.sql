Create or Replace Package TeamUI As
       --Update Team
       Procedure UpdateTeam(
                 T_TID Team.Tid%Type,
                 T_Tname Team.Tname%Type,
                 T_City Team.City%Type,
                 T_League Team.League%Type,
                 T_Division Team.Division%Type,
                 T_Manager Team.Manager%Type,
                 T_NOC Team.Numberofchampionships%Type);
                 
                 
       --Insert Team
       Procedure InsertTeam(
                 T_TID Team.Tid%Type,
                 T_Tname Team.Tname%Type,
                 T_City Team.City%Type,
                 T_League Team.League%Type,
                 T_Division Team.Division%Type,
                 T_Manager Team.Manager%Type,
                 T_NOC Team.Numberofchampionships%Type);   
                 
                 
       --Delete Team
       Procedure DeleteTeam(T_TID Team.Tid%Type);
       
       --Find Team
       Procedure FindTeam(T_TID Team.Tid%Type);
       
End TeamUI;
