! * ************************************************************************** *
! * Interface auto generated - do not modify *
! * ************************************************************************** *
MODULE ifile_attr
  USE, INTRINSIC :: ISO_C_BINDING
  USE ifile
  USE file_interface_attr
CONTAINS
  SUBROUTINE xios_set_file_attr &
    ( file_id, compression_level, description, enabled, min_digits, name, name_suffix, output_freq &
    , output_level, par_access, split_freq, split_freq_format, sync_freq, time_counter, type )
    IMPLICIT NONE
      TYPE(xios_file) :: file_hdl
      CHARACTER(LEN=*), INTENT(IN) ::file_id
      INTEGER , OPTIONAL, INTENT(IN) :: compression_level
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: description
      LOGICAL , OPTIONAL, INTENT(IN) :: enabled
      LOGICAL (KIND=C_BOOL) :: enabled_tmp
      INTEGER , OPTIONAL, INTENT(IN) :: min_digits
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: name
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: name_suffix
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: output_freq
      INTEGER , OPTIONAL, INTENT(IN) :: output_level
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: par_access
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: split_freq
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: split_freq_format
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: sync_freq
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: time_counter
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: type
      CALL xios_get_file_handle(file_id,file_hdl)
      CALL xios_set_file_attr_hdl_ &
      ( file_hdl, compression_level, description, enabled, min_digits, name, name_suffix, output_freq &
      , output_level, par_access, split_freq, split_freq_format, sync_freq, time_counter, type )
  END SUBROUTINE xios_set_file_attr
  SUBROUTINE xios_set_file_attr_hdl &
    ( file_hdl, compression_level, description, enabled, min_digits, name, name_suffix, output_freq &
    , output_level, par_access, split_freq, split_freq_format, sync_freq, time_counter, type )
    IMPLICIT NONE
      TYPE(xios_file) , INTENT(IN) :: file_hdl
      INTEGER , OPTIONAL, INTENT(IN) :: compression_level
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: description
      LOGICAL , OPTIONAL, INTENT(IN) :: enabled
      LOGICAL (KIND=C_BOOL) :: enabled_tmp
      INTEGER , OPTIONAL, INTENT(IN) :: min_digits
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: name
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: name_suffix
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: output_freq
      INTEGER , OPTIONAL, INTENT(IN) :: output_level
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: par_access
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: split_freq
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: split_freq_format
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: sync_freq
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: time_counter
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: type
      CALL xios_set_file_attr_hdl_ &
      ( file_hdl, compression_level, description, enabled, min_digits, name, name_suffix, output_freq &
      , output_level, par_access, split_freq, split_freq_format, sync_freq, time_counter, type )
  END SUBROUTINE xios_set_file_attr_hdl
  SUBROUTINE xios_set_file_attr_hdl_ &
    ( file_hdl, compression_level_, description_, enabled_, min_digits_, name_, name_suffix_, output_freq_ &
    , output_level_, par_access_, split_freq_, split_freq_format_, sync_freq_, time_counter_, type_ &
     )
    IMPLICIT NONE
      TYPE(xios_file) , INTENT(IN) :: file_hdl
      INTEGER , OPTIONAL, INTENT(IN) :: compression_level_
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: description_
      LOGICAL , OPTIONAL, INTENT(IN) :: enabled_
      LOGICAL (KIND=C_BOOL) :: enabled__tmp
      INTEGER , OPTIONAL, INTENT(IN) :: min_digits_
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: name_
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: name_suffix_
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: output_freq_
      INTEGER , OPTIONAL, INTENT(IN) :: output_level_
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: par_access_
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: split_freq_
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: split_freq_format_
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: sync_freq_
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: time_counter_
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: type_
      IF (PRESENT(compression_level_)) THEN
        CALL cxios_set_file_compression_level(file_hdl%daddr, compression_level_)
      ENDIF
      IF (PRESENT(description_)) THEN
        CALL cxios_set_file_description(file_hdl%daddr, description_, len(description_))
      ENDIF
      IF (PRESENT(enabled_)) THEN
        enabled__tmp=enabled_
        CALL cxios_set_file_enabled(file_hdl%daddr, enabled__tmp)
      ENDIF
      IF (PRESENT(min_digits_)) THEN
        CALL cxios_set_file_min_digits(file_hdl%daddr, min_digits_)
      ENDIF
      IF (PRESENT(name_)) THEN
        CALL cxios_set_file_name(file_hdl%daddr, name_, len(name_))
      ENDIF
      IF (PRESENT(name_suffix_)) THEN
        CALL cxios_set_file_name_suffix(file_hdl%daddr, name_suffix_, len(name_suffix_))
      ENDIF
      IF (PRESENT(output_freq_)) THEN
        CALL cxios_set_file_output_freq(file_hdl%daddr, output_freq_, len(output_freq_))
      ENDIF
      IF (PRESENT(output_level_)) THEN
        CALL cxios_set_file_output_level(file_hdl%daddr, output_level_)
      ENDIF
      IF (PRESENT(par_access_)) THEN
        CALL cxios_set_file_par_access(file_hdl%daddr, par_access_, len(par_access_))
      ENDIF
      IF (PRESENT(split_freq_)) THEN
        CALL cxios_set_file_split_freq(file_hdl%daddr, split_freq_, len(split_freq_))
      ENDIF
      IF (PRESENT(split_freq_format_)) THEN
        CALL cxios_set_file_split_freq_format(file_hdl%daddr, split_freq_format_, len(split_freq_format_))
      ENDIF
      IF (PRESENT(sync_freq_)) THEN
        CALL cxios_set_file_sync_freq(file_hdl%daddr, sync_freq_, len(sync_freq_))
      ENDIF
      IF (PRESENT(time_counter_)) THEN
        CALL cxios_set_file_time_counter(file_hdl%daddr, time_counter_, len(time_counter_))
      ENDIF
      IF (PRESENT(type_)) THEN
        CALL cxios_set_file_type(file_hdl%daddr, type_, len(type_))
      ENDIF
  END SUBROUTINE xios_set_file_attr_hdl_
  SUBROUTINE xios_get_file_attr &
    ( file_id, compression_level, description, enabled, min_digits, name, name_suffix, output_freq &
    , output_level, par_access, split_freq, split_freq_format, sync_freq, time_counter, type )
    IMPLICIT NONE
      TYPE(xios_file) :: file_hdl
      CHARACTER(LEN=*), INTENT(IN) ::file_id
      INTEGER , OPTIONAL, INTENT(OUT) :: compression_level
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: description
      LOGICAL , OPTIONAL, INTENT(OUT) :: enabled
      LOGICAL (KIND=C_BOOL) :: enabled_tmp
      INTEGER , OPTIONAL, INTENT(OUT) :: min_digits
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: name
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: name_suffix
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: output_freq
      INTEGER , OPTIONAL, INTENT(OUT) :: output_level
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: par_access
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: split_freq
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: split_freq_format
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: sync_freq
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: time_counter
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: type
      CALL xios_get_file_handle(file_id,file_hdl)
      CALL xios_get_file_attr_hdl_ &
      ( file_hdl, compression_level, description, enabled, min_digits, name, name_suffix, output_freq &
      , output_level, par_access, split_freq, split_freq_format, sync_freq, time_counter, type )
  END SUBROUTINE xios_get_file_attr
  SUBROUTINE xios_get_file_attr_hdl &
    ( file_hdl, compression_level, description, enabled, min_digits, name, name_suffix, output_freq &
    , output_level, par_access, split_freq, split_freq_format, sync_freq, time_counter, type )
    IMPLICIT NONE
      TYPE(xios_file) , INTENT(IN) :: file_hdl
      INTEGER , OPTIONAL, INTENT(OUT) :: compression_level
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: description
      LOGICAL , OPTIONAL, INTENT(OUT) :: enabled
      LOGICAL (KIND=C_BOOL) :: enabled_tmp
      INTEGER , OPTIONAL, INTENT(OUT) :: min_digits
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: name
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: name_suffix
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: output_freq
      INTEGER , OPTIONAL, INTENT(OUT) :: output_level
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: par_access
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: split_freq
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: split_freq_format
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: sync_freq
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: time_counter
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: type
      CALL xios_get_file_attr_hdl_ &
      ( file_hdl, compression_level, description, enabled, min_digits, name, name_suffix, output_freq &
      , output_level, par_access, split_freq, split_freq_format, sync_freq, time_counter, type )
  END SUBROUTINE xios_get_file_attr_hdl
  SUBROUTINE xios_get_file_attr_hdl_ &
    ( file_hdl, compression_level_, description_, enabled_, min_digits_, name_, name_suffix_, output_freq_ &
    , output_level_, par_access_, split_freq_, split_freq_format_, sync_freq_, time_counter_, type_ &
     )
    IMPLICIT NONE
      TYPE(xios_file) , INTENT(IN) :: file_hdl
      INTEGER , OPTIONAL, INTENT(OUT) :: compression_level_
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: description_
      LOGICAL , OPTIONAL, INTENT(OUT) :: enabled_
      LOGICAL (KIND=C_BOOL) :: enabled__tmp
      INTEGER , OPTIONAL, INTENT(OUT) :: min_digits_
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: name_
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: name_suffix_
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: output_freq_
      INTEGER , OPTIONAL, INTENT(OUT) :: output_level_
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: par_access_
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: split_freq_
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: split_freq_format_
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: sync_freq_
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: time_counter_
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: type_
      IF (PRESENT(compression_level_)) THEN
        CALL cxios_get_file_compression_level(file_hdl%daddr, compression_level_)
      ENDIF
      IF (PRESENT(description_)) THEN
        CALL cxios_get_file_description(file_hdl%daddr, description_, len(description_))
      ENDIF
      IF (PRESENT(enabled_)) THEN
        CALL cxios_get_file_enabled(file_hdl%daddr, enabled__tmp)
        enabled_=enabled__tmp
      ENDIF
      IF (PRESENT(min_digits_)) THEN
        CALL cxios_get_file_min_digits(file_hdl%daddr, min_digits_)
      ENDIF
      IF (PRESENT(name_)) THEN
        CALL cxios_get_file_name(file_hdl%daddr, name_, len(name_))
      ENDIF
      IF (PRESENT(name_suffix_)) THEN
        CALL cxios_get_file_name_suffix(file_hdl%daddr, name_suffix_, len(name_suffix_))
      ENDIF
      IF (PRESENT(output_freq_)) THEN
        CALL cxios_get_file_output_freq(file_hdl%daddr, output_freq_, len(output_freq_))
      ENDIF
      IF (PRESENT(output_level_)) THEN
        CALL cxios_get_file_output_level(file_hdl%daddr, output_level_)
      ENDIF
      IF (PRESENT(par_access_)) THEN
        CALL cxios_get_file_par_access(file_hdl%daddr, par_access_, len(par_access_))
      ENDIF
      IF (PRESENT(split_freq_)) THEN
        CALL cxios_get_file_split_freq(file_hdl%daddr, split_freq_, len(split_freq_))
      ENDIF
      IF (PRESENT(split_freq_format_)) THEN
        CALL cxios_get_file_split_freq_format(file_hdl%daddr, split_freq_format_, len(split_freq_format_))
      ENDIF
      IF (PRESENT(sync_freq_)) THEN
        CALL cxios_get_file_sync_freq(file_hdl%daddr, sync_freq_, len(sync_freq_))
      ENDIF
      IF (PRESENT(time_counter_)) THEN
        CALL cxios_get_file_time_counter(file_hdl%daddr, time_counter_, len(time_counter_))
      ENDIF
      IF (PRESENT(type_)) THEN
        CALL cxios_get_file_type(file_hdl%daddr, type_, len(type_))
      ENDIF
  END SUBROUTINE xios_get_file_attr_hdl_
  SUBROUTINE xios_is_defined_file_attr &
    ( file_id, compression_level, description, enabled, min_digits, name, name_suffix, output_freq &
    , output_level, par_access, split_freq, split_freq_format, sync_freq, time_counter, type )
    IMPLICIT NONE
      TYPE(xios_file) :: file_hdl
      CHARACTER(LEN=*), INTENT(IN) ::file_id
      LOGICAL, OPTIONAL, INTENT(OUT) :: compression_level
      LOGICAL(KIND=C_BOOL) :: compression_level_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: description
      LOGICAL(KIND=C_BOOL) :: description_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: enabled
      LOGICAL(KIND=C_BOOL) :: enabled_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: min_digits
      LOGICAL(KIND=C_BOOL) :: min_digits_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: name
      LOGICAL(KIND=C_BOOL) :: name_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: name_suffix
      LOGICAL(KIND=C_BOOL) :: name_suffix_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: output_freq
      LOGICAL(KIND=C_BOOL) :: output_freq_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: output_level
      LOGICAL(KIND=C_BOOL) :: output_level_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: par_access
      LOGICAL(KIND=C_BOOL) :: par_access_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: split_freq
      LOGICAL(KIND=C_BOOL) :: split_freq_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: split_freq_format
      LOGICAL(KIND=C_BOOL) :: split_freq_format_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: sync_freq
      LOGICAL(KIND=C_BOOL) :: sync_freq_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: time_counter
      LOGICAL(KIND=C_BOOL) :: time_counter_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: type
      LOGICAL(KIND=C_BOOL) :: type_tmp
      CALL xios_get_file_handle(file_id,file_hdl)
      CALL xios_is_defined_file_attr_hdl_ &
      ( file_hdl, compression_level, description, enabled, min_digits, name, name_suffix, output_freq &
      , output_level, par_access, split_freq, split_freq_format, sync_freq, time_counter, type )
  END SUBROUTINE xios_is_defined_file_attr
  SUBROUTINE xios_is_defined_file_attr_hdl &
    ( file_hdl, compression_level, description, enabled, min_digits, name, name_suffix, output_freq &
    , output_level, par_access, split_freq, split_freq_format, sync_freq, time_counter, type )
    IMPLICIT NONE
      TYPE(xios_file) , INTENT(IN) :: file_hdl
      LOGICAL, OPTIONAL, INTENT(OUT) :: compression_level
      LOGICAL(KIND=C_BOOL) :: compression_level_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: description
      LOGICAL(KIND=C_BOOL) :: description_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: enabled
      LOGICAL(KIND=C_BOOL) :: enabled_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: min_digits
      LOGICAL(KIND=C_BOOL) :: min_digits_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: name
      LOGICAL(KIND=C_BOOL) :: name_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: name_suffix
      LOGICAL(KIND=C_BOOL) :: name_suffix_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: output_freq
      LOGICAL(KIND=C_BOOL) :: output_freq_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: output_level
      LOGICAL(KIND=C_BOOL) :: output_level_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: par_access
      LOGICAL(KIND=C_BOOL) :: par_access_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: split_freq
      LOGICAL(KIND=C_BOOL) :: split_freq_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: split_freq_format
      LOGICAL(KIND=C_BOOL) :: split_freq_format_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: sync_freq
      LOGICAL(KIND=C_BOOL) :: sync_freq_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: time_counter
      LOGICAL(KIND=C_BOOL) :: time_counter_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: type
      LOGICAL(KIND=C_BOOL) :: type_tmp
      CALL xios_is_defined_file_attr_hdl_ &
      ( file_hdl, compression_level, description, enabled, min_digits, name, name_suffix, output_freq &
      , output_level, par_access, split_freq, split_freq_format, sync_freq, time_counter, type )
  END SUBROUTINE xios_is_defined_file_attr_hdl
  SUBROUTINE xios_is_defined_file_attr_hdl_ &
    ( file_hdl, compression_level_, description_, enabled_, min_digits_, name_, name_suffix_, output_freq_ &
    , output_level_, par_access_, split_freq_, split_freq_format_, sync_freq_, time_counter_, type_ &
     )
    IMPLICIT NONE
      TYPE(xios_file) , INTENT(IN) :: file_hdl
      LOGICAL, OPTIONAL, INTENT(OUT) :: compression_level_
      LOGICAL(KIND=C_BOOL) :: compression_level__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: description_
      LOGICAL(KIND=C_BOOL) :: description__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: enabled_
      LOGICAL(KIND=C_BOOL) :: enabled__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: min_digits_
      LOGICAL(KIND=C_BOOL) :: min_digits__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: name_
      LOGICAL(KIND=C_BOOL) :: name__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: name_suffix_
      LOGICAL(KIND=C_BOOL) :: name_suffix__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: output_freq_
      LOGICAL(KIND=C_BOOL) :: output_freq__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: output_level_
      LOGICAL(KIND=C_BOOL) :: output_level__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: par_access_
      LOGICAL(KIND=C_BOOL) :: par_access__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: split_freq_
      LOGICAL(KIND=C_BOOL) :: split_freq__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: split_freq_format_
      LOGICAL(KIND=C_BOOL) :: split_freq_format__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: sync_freq_
      LOGICAL(KIND=C_BOOL) :: sync_freq__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: time_counter_
      LOGICAL(KIND=C_BOOL) :: time_counter__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: type_
      LOGICAL(KIND=C_BOOL) :: type__tmp
      IF (PRESENT(compression_level_)) THEN
        compression_level__tmp=cxios_is_defined_file_compression_level(file_hdl%daddr)
        compression_level_=compression_level__tmp
      ENDIF
      IF (PRESENT(description_)) THEN
        description__tmp=cxios_is_defined_file_description(file_hdl%daddr)
        description_=description__tmp
      ENDIF
      IF (PRESENT(enabled_)) THEN
        enabled__tmp=cxios_is_defined_file_enabled(file_hdl%daddr)
        enabled_=enabled__tmp
      ENDIF
      IF (PRESENT(min_digits_)) THEN
        min_digits__tmp=cxios_is_defined_file_min_digits(file_hdl%daddr)
        min_digits_=min_digits__tmp
      ENDIF
      IF (PRESENT(name_)) THEN
        name__tmp=cxios_is_defined_file_name(file_hdl%daddr)
        name_=name__tmp
      ENDIF
      IF (PRESENT(name_suffix_)) THEN
        name_suffix__tmp=cxios_is_defined_file_name_suffix(file_hdl%daddr)
        name_suffix_=name_suffix__tmp
      ENDIF
      IF (PRESENT(output_freq_)) THEN
        output_freq__tmp=cxios_is_defined_file_output_freq(file_hdl%daddr)
        output_freq_=output_freq__tmp
      ENDIF
      IF (PRESENT(output_level_)) THEN
        output_level__tmp=cxios_is_defined_file_output_level(file_hdl%daddr)
        output_level_=output_level__tmp
      ENDIF
      IF (PRESENT(par_access_)) THEN
        par_access__tmp=cxios_is_defined_file_par_access(file_hdl%daddr)
        par_access_=par_access__tmp
      ENDIF
      IF (PRESENT(split_freq_)) THEN
        split_freq__tmp=cxios_is_defined_file_split_freq(file_hdl%daddr)
        split_freq_=split_freq__tmp
      ENDIF
      IF (PRESENT(split_freq_format_)) THEN
        split_freq_format__tmp=cxios_is_defined_file_split_freq_format(file_hdl%daddr)
        split_freq_format_=split_freq_format__tmp
      ENDIF
      IF (PRESENT(sync_freq_)) THEN
        sync_freq__tmp=cxios_is_defined_file_sync_freq(file_hdl%daddr)
        sync_freq_=sync_freq__tmp
      ENDIF
      IF (PRESENT(time_counter_)) THEN
        time_counter__tmp=cxios_is_defined_file_time_counter(file_hdl%daddr)
        time_counter_=time_counter__tmp
      ENDIF
      IF (PRESENT(type_)) THEN
        type__tmp=cxios_is_defined_file_type(file_hdl%daddr)
        type_=type__tmp
      ENDIF
  END SUBROUTINE xios_is_defined_file_attr_hdl_
END MODULE ifile_attr
