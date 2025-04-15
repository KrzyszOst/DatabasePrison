-- Display overall sum of occupancy and capacity as a fraction
SELECT
    CONCAT(SUM(Occupancy), '/', SUM(Capacity)) AS Overall_Occupancy_Capacity
FROM
    Prison_cells;
