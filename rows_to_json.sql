select json_agg(json_build_object('propertyForColumn1', col_1, 'propertyForColumn2',col_2 ,'propertyForColumn3', col_3))
from (values ('1.1','1.2','1.3'), ('2.1','2.2','2.3'), ('row_3_col_1','row_3_col_2','row_3_col_3')) ec (col_1, col_2, col_3);

-- output
-- [{"propertyForColumn1" : "1.1", "propertyForColumn2" : "1.2", "propertyForColumn3" : "1.3"}, {"propertyForColumn1" : "2.1", "propertyForColumn2" : "2.2", "propertyForColumn3" : "2.3"}, {"propertyForColumn1" : "row_3_col_1", "propertyForColumn2" : "row_3_col_2", "propertyForColumn3" : "row_3_col_3"}]