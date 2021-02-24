CREATE TABLE employment_Status AS
SELECT unemployment.year AS year,
 
  unemployment.less_hs AS unemploy_less_hs,
  unemployment.hs_no_college AS unemploy_hs_no_college,
  unemployment.some_college_no_degree AS unemploy_some_college,
  unemployment.associates_degree AS unemploy_associates,
  unemployment.bachelors_advanced AS umemply_bachelors_adv,
  employment.less_hs AS empoly_less_hs,
  employment.hs_no_college AS empoly_hs_no_college,
  employment.some_college_no_degree AS employ_some_college,
  employment.associates_degree AS employ_associates,
  employment.bachelors_advanced AS emply_bachelors_adv
FROM employment
JOIN unemployment ON employment.year=unemployment.year;

-----JSON-------
SELECT array_to_json(array_agg(row_to_json(emp_row))) AS emp_objects
FROM
      (SELECT   *
       FROM     employment_status
         
      ) AS emp_row;