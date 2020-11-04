-- Query to find pitchers under 40 years old who have more than 20 StikeOuts
select * from Player
Inner Join Pitcher on Player.PID = Pitcher.Pid
Where (2020 - Age < 40) and StrikeOuts > 20
Order by StrikeOuts desc
