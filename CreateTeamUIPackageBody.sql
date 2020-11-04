Create or Replace Package Body TeamUI As

       --Update Team
       Procedure UpdateTeam(
                 T_TID Team.Tid%Type,
                 T_Tname Team.Tname%Type,
                 T_City Team.City%Type,
                 T_League Team.League%Type,
                 T_Division Team.Division%Type,
                 T_Manager Team.Manager%Type,
                 T_NOC Team.Numberofchampionships%Type
                 )
       Is
       Begin
                 Update Team
                 set Tname = T_Tname
                 Where Team.TID = T_TID;
                 
                 Update Team
                 set City = T_City
                 Where Team.TID = T_TID;
                 
                 Update Team
                 set League = T_League
                 Where Team.TID = T_TID;
                 
                 Update Team    
                 set Division = T_Division
                 Where Team.TID = T_TID;
                 
                 Update Team     
                 set Manager = T_Manager
                 Where Team.TID = T_TID;
                   
                 Update Team     
                 set Numberofchampionships = T_NOC
                 Where Team.TID = T_TID;
                        
       End UpdateTeam;
       
       
       --Insert Team
       Procedure InsertTeam(
                 T_TID Team.Tid%Type,
                 T_Tname Team.Tname%Type,
                 T_City Team.City%Type,
                 T_League Team.League%Type,
                 T_Division Team.Division%Type,
                 T_Manager Team.Manager%Type,
                 T_NOC Team.Numberofchampionships%Type
                 )
       Is
       Begin
                 insert into Team(Tid, Tname, City, League, Division, Manager, Numberofchampionships)
                 values(T_TID, T_Tname, T_City, T_League, T_Division, T_Manager, T_NOC);
       End InsertTeam;


       --Delete Team
       Procedure DeleteTeam(T_TID Team.Tid%Type)
       Is
       Begin
                 delete from Team
                 where Team.Tid = T_TID;
       End DeleteTeam;


       --Find Team
       Procedure FindTeam(T_TID Team.Tid%Type)
       Is
      
       T_TIDNew Team.Tid%Type := 'temp';
       T_Tname Team.Tname%Type := 'temp';
       T_City Team.City%Type;
       T_League Team.League%Type;
       T_Division Team.Division%Type;
       T_Manager Team.Manager%Type;
       T_NOC Team.Numberofchampionships%Type;
       
       Begin
                 select Tid,
                        Tname,
                        City,
                        League,
                        Division,
                        Manager,
                        Numberofchampionships
                 Into T_TIDNew, 
                        T_Tname, 
                        T_City, 
                        T_League, 
                        T_Division, 
                        T_Manager, 
                        T_NOC
                 from Team
                 where TID = T_TID;
                 
                 dbms_output.enable(null);
                 dbms_output.put_line(T_Tname || T_City || T_League || T_Division || T_Manager || T_NOC);
       End FindTeam;
       
End TeamUI;
