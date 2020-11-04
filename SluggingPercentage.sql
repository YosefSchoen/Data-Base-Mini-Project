-- slugging percentage

select pfName, pLName, (b.hits + b.Doubles + (2*b.Triples) + (3*b.Homeruns)) / b.atBats
as sluggingPercentage
from batter b join Player on b.pid = player.pid
where atbats > 0
