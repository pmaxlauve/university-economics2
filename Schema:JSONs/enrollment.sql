CREATE TABLE enrollment AS
SELECT year_4_enrollment.year AS four_year, 
year_4_enrollment.public_enrollment AS four_public_enrollment,
year_4_enrollment.private_enrollment AS four_private_enrollment,
year_4_enrollment.total_enrollment AS four_total_enrollment,
year_2_enrollment.year AS two_year,
year_2_enrollment.public_enrollment AS two_public_enrollment,
year_2_enrollment.private_enrollment AS two_private_enrollment,
year_2_enrollment.total_enrollment AS two_total_enrollment
FROM year_2_enrollment
JOIN year_4_enrollment ON year_2_enrollment.year=year_4_enrollment.year;

-----JSON-------
SELECT array_to_json(array_agg(row_to_json(emp_row))) AS emp_objects
FROM
      (SELECT   *
       FROM     enrollment
         
      ) AS emp_row;