-- Query to find on base percentage

select pfName, pLName, (hits + walks + hitsByPitch) / atBats
as OnBasePercetage
from batter natural join Player
where atbats > 0 and hits > 0 and walks > 0 and hitsByPitch > 0


