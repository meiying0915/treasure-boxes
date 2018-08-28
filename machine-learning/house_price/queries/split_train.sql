SELECT
  rowid
  ,crim
  ,zn
  ,indus
  ,chas
  ,nox
  ,rm
  ,age
  ,dis
  ,rad
  ,tax
  ,ptratio
  ,b
  ,lstat
  ,medv
  ,rnd
FROM
  ${source}_shuffled
WHERE
  rnd <= ${training_ratio}
CLUSTER BY rand(43)
;
