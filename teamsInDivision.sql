-- find number of teams in each division

select division, league, count(tName)
from team
group by division, league
order by league
