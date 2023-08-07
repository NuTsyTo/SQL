-- Exo 5
-- Requêtes avec jointure « many to many »

-- Exo 5.1
-- Listez tous les students avec leurs tags

SELECT student.firstname, tag.name
FROM student
LEFT OUTER JOIN student_tag ON student.id = student_tag.student_id
LEFT OUTER JOIN tag ON student_tag.student_id = tag.id;

-- Exo 5.2
-- Listez tous les tags avec leurs students

SELECT tag.name, student_id
FROM tag
LEFT OUTER JOIN student_tag ON tag.id = student_tag.tag_id;

-- Exo 5.3
-- Listez le student dont l'id est `2` avec ses tags

SELECT * 
FROM `student_tag`
WHERE student_id = 2;

-- Exo 5.4
-- Listez le tag dont l'id est `2` avec ses students

SELECT * 
FROM `student_tag`
WHERE tag_id = 2;
