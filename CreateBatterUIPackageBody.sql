Create Or Replace Package Body BatterUI as

       --Update Table
       Procedure UpdateBatter(
                 B_PID Batter.Pid%Type,
                 B_TID Batter.Tid%Type,
                 B_SB Batter.Stolenbases%Type,
                 B_BHits Batter.Hits%Type,
                 B_Doubles Batter.Doubles%Type,
                 B_Triples Batter.Triples%Type,
                 B_HR Batter.Homeruns%Type,
                 B_Walks Batter.Walks%Type,
                 B_HBP Batter.Hitsbypitch%Type,
                 B_AB Batter.Atbats%Type
                 )
       Is 
       Begin 
                 Update Batter
                        Set Tid = B_TID
                        where Batter.Pid = B_PID;
                        
                 Update Batter       
                        Set Stolenbases = B_SB
                        where Batter.Pid = B_PID;
                        
                 Update Batter        
                        Set Hits = B_BHits
                        where Batter.Pid = B_PID;
                        
                 Update Batter       
                        Set Doubles = B_Doubles
                        where Batter.Pid = B_PID;
                        
                 Update Batter       
                        Set Triples = B_Triples
                        where Batter.Pid = B_PID;
                        
                 Update Batter       
                        Set Homeruns = B_HR
                        where Batter.Pid = B_PID;
                        
                 Update Batter       
                        Set Walks = B_Walks
                        where Batter.Pid = B_PID;
                        
                 Update Batter      
                        Set Hitsbypitch = B_HBP
                        where Batter.Pid = B_PID;
                        
                 Update Batter       
                        Set Atbats = B_AB
                        where Batter.Pid = B_PID;
       End UpdateBatter;


       --Insert into Table
       Procedure InsertBatter(
                 B_PID Batter.Pid%Type,
                 B_TID Batter.Tid%Type,
                 B_SB Batter.Stolenbases%Type,
                 B_BHits Batter.Hits%Type,
                 B_Doubles Batter.Doubles%Type,
                 B_Triples Batter.Triples%Type,
                 B_HR Batter.Homeruns%Type,
                 B_Walks Batter.Walks%Type,
                 B_HBP Batter.Hitsbypitch%Type,
                 B_AB Batter.Atbats%Type
                 )
       Is
       Begin
                 insert into Batter(Pid, Tid, Stolenbases, Hits, Doubles, Triples, Homeruns, Walks, Hitsbypitch, Atbats)
                 values(B_PID, B_TID, B_SB, B_BHits, B_Doubles, B_Triples, B_HR, B_Walks, B_HBP, B_AB);
       End InsertBatter;

       
       --Delete from table
       Procedure DeleteBatter(B_PID Batter.Pid%Type)
       Is
       Begin
                 delete from Batter
                 where Batter.Pid = B_PID;
       End DeleteBatter;
       
       
       
       --find in table
       Procedure FindBatter(B_PID Batter.Pid%Type)
       Is 
                 B_PIDNew Batter.Pid%Type;
                 B_TID Batter.Tid%Type;
                 B_SB Batter.Stolenbases%Type;
                 B_BHits Batter.Hits%Type;    
                 B_Doubles Batter.Doubles%Type;
                 B_Triples Batter.Triples%Type;
                 B_HR Batter.Homeruns%Type;
                 B_Walks Batter.Walks%Type;
                 B_HBP Batter.Hitsbypitch%Type;
                 B_AB Batter.Atbats%Type;
                 
                 Cursor foundBatters is
                 select Pid, Tid, Stolenbases, 
                        Hits, Doubles, Triples, Homeruns, Walks, Hitsbypitch, Atbats
                 From Batter
                 where Pid = B_PID;
                        
       Begin
                 Open foundBatters;
                 Loop
                      Fetch foundBatters into B_PIDNew, B_TID, 
                        B_SB, B_BHits, B_Doubles, B_Triples,
                        B_HR, B_Walks, B_HBP, B_AB;     
                        Exit When foundBatters%notfound;
                        dbms_output.put_line(B_PIDNew || B_TID || B_SB || B_BHits || B_Doubles || B_Triples || B_HR || B_Walks || B_HBP || B_AB);
                 End Loop;
                 Close foundBatters;         
       End FindBatter;    
End BatterUI;
