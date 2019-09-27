LOAD CSV FROM 'https://raw.githubusercontent.com/kuochunchang/neo4j_exercise/master/person.csv' AS line
CREATE (:Person { name: line[0], zip: line[1], , address: line[2]})