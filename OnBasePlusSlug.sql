-- Query to find on base percentage

select pfName, pLName, (hits + walks + hitsByPitch + hits + Doubles + (2*Triples) + (3*HomeRuns)) / atBats
as OnBasePlusSlug
from batter natural join Player
where atbats > 0


