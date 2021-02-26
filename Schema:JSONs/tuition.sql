CREATE TABLE tutition AS
SELECT year_4_tuition.start_year AS Four_start, 
year_4_tuition.end_year AS four_end,
year_4_tuition.public_tuition AS four_public_tuition,
year_4_tuition.private_tuition AS four_private_tuition,
year_2_tuition.start_year AS two_start,
year_2_tuition.end_year AS two_end,
year_2_tuition.public_tuition AS two_public_tuition,
year_2_tuition.private_tuition AS two_private_tuition
FROM year_2_tuition
JOIN year_4_tuition ON year_2_tuition.start_year=year_4_tuition.start_year;

-----JSON-------
SELECT array_to_json(array_agg(row_to_json(emp_row))) AS emp_objects
FROM
      (SELECT   *
       FROM     tutition
         
      ) AS emp_row;