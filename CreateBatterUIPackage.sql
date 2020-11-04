Create Or Replace Package BatterUI As
       --Update Batter
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
                 B_AB Batter.Atbats%Type);
                 
       --Insert Batter        
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
                 B_AB Batter.Atbats%Type);
                 
       --Delete Batter
       Procedure DeleteBatter(B_PID Batter.Pid%Type);
       
       --Find Batter
       Procedure FindBatter(B_PID Batter.Pid%Type);
End BatterUI;

