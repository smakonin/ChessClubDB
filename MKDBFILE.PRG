**********
* INSTDBF.PRG
**********

choice = " "
goahead = " "
rec_num = 0

IF .NOT. FILE("memder.dbf")
  CREATE tmp_mem.dbf

  APPEND BLANK
  REPLACE field_name WITH "NAME"
  REPLACE field_type WITH "C"
  REPLACE field_len  WITH 10
  REPLACE field_dec  WITH 0
  
  APPEND BLANK
  REPLACE field_name WITH "GRADE"
  REPLACE field_type WITH "N"
  REPLACE field_len  WITH 2
  REPLACE field_dec  WITH 0
  
  APPEND BLANK
  REPLACE field_name WITH "PDATE"
  REPLACE field_type WITH "D"
  REPLACE field_len  WITH 8
  REPLACE field_dec  WITH 0

  APPEND BLANK
  REPLACE field_name WITH "LNAME"
  REPLACE field_type WITH "C"
  REPLACE field_len  WITH 10
  REPLACE field_dec  WITH 0
  
  APPEND BLANK
  REPLACE field_name WITH "R"
  REPLACE field_type WITH "L"
  REPLACE field_len  WITH 1
  REPLACE field_dec  WITH 0
  
  APPEND BLANK
  REPLACE field_name WITH "MEMNUM"
  REPLACE field_type WITH "C"
  REPLACE field_len  WITH 9
  REPLACE field_dec  WITH 0

  APPEND BLANK
  REPLACE field_name WITH "BLITZ"
  REPLACE field_type WITH "N"
  REPLACE field_len  WITH 6
  REPLACE field_dec  WITH 0

  APPEND BLANK
  REPLACE field_name WITH "REGULAR"
  REPLACE field_type WITH "N"
  REPLACE field_len  WITH 6
  REPLACE field_dec  WITH 0

  APPEND BLANK
  REPLACE field_name WITH "BTOTAL"
  REPLACE field_type WITH "N"
  REPLACE field_len  WITH 3
  REPLACE field_dec  WITH 0
 
  APPEND BLANK
  REPLACE field_name WITH "RTOTAL"
  REPLACE field_type WITH "N"
  REPLACE field_len  WITH 3
  REPLACE field_dec  WITH 0

  APPEND BLANK
  REPLACE field_name WITH "BWINS"
  REPLACE field_type WITH "N"
  REPLACE field_len  WITH 3
  REPLACE field_dec  WITH 0

  APPEND BLANK
  REPLACE field_name WITH "RWINS"
  REPLACE field_type WITH "N"
  REPLACE field_len  WITH 3
  REPLACE field_dec  WITH 0

  APPEND BLANK
  REPLACE field_name WITH "BLOSSE"
  REPLACE field_type WITH "N"
  REPLACE field_len  WITH 3
  REPLACE field_dec  WITH 0

  APPEND BLANK
  REPLACE field_name WITH "RLOSSE"
  REPLACE field_type WITH "N"
  REPLACE field_len  WITH 3
  REPLACE field_dec  WITH 0

  USE                            
  CREATE member.dbf FROM tmp_mem.dbf      
  ERASE tmp_mem.dbf                    
  USE member
  INDEX ON SUBSTR(TRIM(lname) + name +;
		   SPACE(10),1,10) TO nlist

ELSE
  USE member
  IF .NOT. FILE("nlist.ntx")
	 INDEX ON SUBSTR(TRIM(lname) + name +;
		 SPACE(10),1,10) TO nlist
ENDIF
ENDIF
CLOSE DATABASES
QUIT        



