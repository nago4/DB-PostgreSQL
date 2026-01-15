SELECT
  job_id,
  name,
  (
    SELECT
      count(*)
    FROM
      n_jobs
    WHERE
      n_jobs.job_id=n_characters.job_id
  ) AS "count"
FROM
  n_jobs
ORDER BY
  job_id;