LOAD CSV FROM 'https://raw.githubusercontent.com/kuochunchang/neo4j_exercise/master/person.csv' AS line
CREATE (:Person { name: line[0], zip: line[1], address: line[2]})


LOAD CSV FROM 'https://raw.githubusercontent.com/kuochunchang/neo4j_exercise/master/Insurance.csv' AS line
CREATE (:Insurance {number: line.number, insured: line.insured, insurer: line.insurer})


LOAD CSV FROM 'https://raw.githubusercontent.com/kuochunchang/neo4j_exercise/master/Insurance.csv' AS line
LOAD CSV WITH HEADERS FROM "File:///Airport.csv" AS csvLine
MERGE (y.Year {name: csvLine.YearDeparture})-[:HAS_MONTH]->(m.Month {name: csvLine.MonthDeparture})-[:HAS_DAY]->(d:Day {name: csvLine.DepartureDay})-[:HAS_AIRPORT]->(a:Airport {name: csvLine.Origin })
