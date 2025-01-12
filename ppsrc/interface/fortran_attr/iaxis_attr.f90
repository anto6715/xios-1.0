! * ************************************************************************** *
! * Interface auto generated - do not modify *
! * ************************************************************************** *
MODULE iaxis_attr
  USE, INTRINSIC :: ISO_C_BINDING
  USE iaxis
  USE axis_interface_attr
CONTAINS
  SUBROUTINE xios_set_axis_attr &
    ( axis_id, bounds, long_name, name, positive, size, standard_name, unit, value, zoom_begin, zoom_end &
    , zoom_size )
    IMPLICIT NONE
      TYPE(xios_axis) :: axis_hdl
      CHARACTER(LEN=*), INTENT(IN) ::axis_id
      REAL (KIND=8) , OPTIONAL, INTENT(IN) :: bounds(:,:)
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: long_name
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: name
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: positive
      INTEGER , OPTIONAL, INTENT(IN) :: size
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: standard_name
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: unit
      REAL (KIND=8) , OPTIONAL, INTENT(IN) :: value(:)
      INTEGER , OPTIONAL, INTENT(IN) :: zoom_begin
      INTEGER , OPTIONAL, INTENT(IN) :: zoom_end
      INTEGER , OPTIONAL, INTENT(IN) :: zoom_size
      CALL xios_get_axis_handle(axis_id,axis_hdl)
      CALL xios_set_axis_attr_hdl_ &
      ( axis_hdl, bounds, long_name, name, positive, size, standard_name, unit, value, zoom_begin &
      , zoom_end, zoom_size )
  END SUBROUTINE xios_set_axis_attr
  SUBROUTINE xios_set_axis_attr_hdl &
    ( axis_hdl, bounds, long_name, name, positive, size, standard_name, unit, value, zoom_begin &
    , zoom_end, zoom_size )
    IMPLICIT NONE
      TYPE(xios_axis) , INTENT(IN) :: axis_hdl
      REAL (KIND=8) , OPTIONAL, INTENT(IN) :: bounds(:,:)
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: long_name
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: name
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: positive
      INTEGER , OPTIONAL, INTENT(IN) :: size
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: standard_name
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: unit
      REAL (KIND=8) , OPTIONAL, INTENT(IN) :: value(:)
      INTEGER , OPTIONAL, INTENT(IN) :: zoom_begin
      INTEGER , OPTIONAL, INTENT(IN) :: zoom_end
      INTEGER , OPTIONAL, INTENT(IN) :: zoom_size
      CALL xios_set_axis_attr_hdl_ &
      ( axis_hdl, bounds, long_name, name, positive, size, standard_name, unit, value, zoom_begin &
      , zoom_end, zoom_size )
  END SUBROUTINE xios_set_axis_attr_hdl
  SUBROUTINE xios_set_axis_attr_hdl_ &
    ( axis_hdl, bounds_, long_name_, name_, positive_, size_, standard_name_, unit_, value_, zoom_begin_ &
    , zoom_end_, zoom_size_ )
    IMPLICIT NONE
      TYPE(xios_axis) , INTENT(IN) :: axis_hdl
      REAL (KIND=8) , OPTIONAL, INTENT(IN) :: bounds_(:,:)
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: long_name_
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: name_
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: positive_
      INTEGER , OPTIONAL, INTENT(IN) :: size_
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: standard_name_
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: unit_
      REAL (KIND=8) , OPTIONAL, INTENT(IN) :: value_(:)
      INTEGER , OPTIONAL, INTENT(IN) :: zoom_begin_
      INTEGER , OPTIONAL, INTENT(IN) :: zoom_end_
      INTEGER , OPTIONAL, INTENT(IN) :: zoom_size_
      IF (PRESENT(bounds_)) THEN
        CALL cxios_set_axis_bounds(axis_hdl%daddr, bounds_,size(bounds_,1),size(bounds_,2))
      ENDIF
      IF (PRESENT(long_name_)) THEN
        CALL cxios_set_axis_long_name(axis_hdl%daddr, long_name_, len(long_name_))
      ENDIF
      IF (PRESENT(name_)) THEN
        CALL cxios_set_axis_name(axis_hdl%daddr, name_, len(name_))
      ENDIF
      IF (PRESENT(positive_)) THEN
        CALL cxios_set_axis_positive(axis_hdl%daddr, positive_, len(positive_))
      ENDIF
      IF (PRESENT(size_)) THEN
        CALL cxios_set_axis_size(axis_hdl%daddr, size_)
      ENDIF
      IF (PRESENT(standard_name_)) THEN
        CALL cxios_set_axis_standard_name(axis_hdl%daddr, standard_name_, len(standard_name_))
      ENDIF
      IF (PRESENT(unit_)) THEN
        CALL cxios_set_axis_unit(axis_hdl%daddr, unit_, len(unit_))
      ENDIF
      IF (PRESENT(value_)) THEN
        CALL cxios_set_axis_value(axis_hdl%daddr, value_,size(value_,1))
      ENDIF
      IF (PRESENT(zoom_begin_)) THEN
        CALL cxios_set_axis_zoom_begin(axis_hdl%daddr, zoom_begin_)
      ENDIF
      IF (PRESENT(zoom_end_)) THEN
        CALL cxios_set_axis_zoom_end(axis_hdl%daddr, zoom_end_)
      ENDIF
      IF (PRESENT(zoom_size_)) THEN
        CALL cxios_set_axis_zoom_size(axis_hdl%daddr, zoom_size_)
      ENDIF
  END SUBROUTINE xios_set_axis_attr_hdl_
  SUBROUTINE xios_get_axis_attr &
    ( axis_id, bounds, long_name, name, positive, size, standard_name, unit, value, zoom_begin, zoom_end &
    , zoom_size )
    IMPLICIT NONE
      TYPE(xios_axis) :: axis_hdl
      CHARACTER(LEN=*), INTENT(IN) ::axis_id
      REAL (KIND=8) , OPTIONAL, INTENT(OUT) :: bounds(:,:)
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: long_name
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: name
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: positive
      INTEGER , OPTIONAL, INTENT(OUT) :: size
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: standard_name
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: unit
      REAL (KIND=8) , OPTIONAL, INTENT(OUT) :: value(:)
      INTEGER , OPTIONAL, INTENT(OUT) :: zoom_begin
      INTEGER , OPTIONAL, INTENT(OUT) :: zoom_end
      INTEGER , OPTIONAL, INTENT(OUT) :: zoom_size
      CALL xios_get_axis_handle(axis_id,axis_hdl)
      CALL xios_get_axis_attr_hdl_ &
      ( axis_hdl, bounds, long_name, name, positive, size, standard_name, unit, value, zoom_begin &
      , zoom_end, zoom_size )
  END SUBROUTINE xios_get_axis_attr
  SUBROUTINE xios_get_axis_attr_hdl &
    ( axis_hdl, bounds, long_name, name, positive, size, standard_name, unit, value, zoom_begin &
    , zoom_end, zoom_size )
    IMPLICIT NONE
      TYPE(xios_axis) , INTENT(IN) :: axis_hdl
      REAL (KIND=8) , OPTIONAL, INTENT(OUT) :: bounds(:,:)
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: long_name
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: name
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: positive
      INTEGER , OPTIONAL, INTENT(OUT) :: size
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: standard_name
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: unit
      REAL (KIND=8) , OPTIONAL, INTENT(OUT) :: value(:)
      INTEGER , OPTIONAL, INTENT(OUT) :: zoom_begin
      INTEGER , OPTIONAL, INTENT(OUT) :: zoom_end
      INTEGER , OPTIONAL, INTENT(OUT) :: zoom_size
      CALL xios_get_axis_attr_hdl_ &
      ( axis_hdl, bounds, long_name, name, positive, size, standard_name, unit, value, zoom_begin &
      , zoom_end, zoom_size )
  END SUBROUTINE xios_get_axis_attr_hdl
  SUBROUTINE xios_get_axis_attr_hdl_ &
    ( axis_hdl, bounds_, long_name_, name_, positive_, size_, standard_name_, unit_, value_, zoom_begin_ &
    , zoom_end_, zoom_size_ )
    IMPLICIT NONE
      TYPE(xios_axis) , INTENT(IN) :: axis_hdl
      REAL (KIND=8) , OPTIONAL, INTENT(OUT) :: bounds_(:,:)
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: long_name_
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: name_
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: positive_
      INTEGER , OPTIONAL, INTENT(OUT) :: size_
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: standard_name_
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: unit_
      REAL (KIND=8) , OPTIONAL, INTENT(OUT) :: value_(:)
      INTEGER , OPTIONAL, INTENT(OUT) :: zoom_begin_
      INTEGER , OPTIONAL, INTENT(OUT) :: zoom_end_
      INTEGER , OPTIONAL, INTENT(OUT) :: zoom_size_
      IF (PRESENT(bounds_)) THEN
        CALL cxios_get_axis_bounds(axis_hdl%daddr, bounds_,size(bounds_,1),size(bounds_,2))
      ENDIF
      IF (PRESENT(long_name_)) THEN
        CALL cxios_get_axis_long_name(axis_hdl%daddr, long_name_, len(long_name_))
      ENDIF
      IF (PRESENT(name_)) THEN
        CALL cxios_get_axis_name(axis_hdl%daddr, name_, len(name_))
      ENDIF
      IF (PRESENT(positive_)) THEN
        CALL cxios_get_axis_positive(axis_hdl%daddr, positive_, len(positive_))
      ENDIF
      IF (PRESENT(size_)) THEN
        CALL cxios_get_axis_size(axis_hdl%daddr, size_)
      ENDIF
      IF (PRESENT(standard_name_)) THEN
        CALL cxios_get_axis_standard_name(axis_hdl%daddr, standard_name_, len(standard_name_))
      ENDIF
      IF (PRESENT(unit_)) THEN
        CALL cxios_get_axis_unit(axis_hdl%daddr, unit_, len(unit_))
      ENDIF
      IF (PRESENT(value_)) THEN
        CALL cxios_get_axis_value(axis_hdl%daddr, value_,size(value_,1))
      ENDIF
      IF (PRESENT(zoom_begin_)) THEN
        CALL cxios_get_axis_zoom_begin(axis_hdl%daddr, zoom_begin_)
      ENDIF
      IF (PRESENT(zoom_end_)) THEN
        CALL cxios_get_axis_zoom_end(axis_hdl%daddr, zoom_end_)
      ENDIF
      IF (PRESENT(zoom_size_)) THEN
        CALL cxios_get_axis_zoom_size(axis_hdl%daddr, zoom_size_)
      ENDIF
  END SUBROUTINE xios_get_axis_attr_hdl_
  SUBROUTINE xios_is_defined_axis_attr &
    ( axis_id, bounds, long_name, name, positive, size, standard_name, unit, value, zoom_begin, zoom_end &
    , zoom_size )
    IMPLICIT NONE
      TYPE(xios_axis) :: axis_hdl
      CHARACTER(LEN=*), INTENT(IN) ::axis_id
      LOGICAL, OPTIONAL, INTENT(OUT) :: bounds
      LOGICAL(KIND=C_BOOL) :: bounds_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: long_name
      LOGICAL(KIND=C_BOOL) :: long_name_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: name
      LOGICAL(KIND=C_BOOL) :: name_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: positive
      LOGICAL(KIND=C_BOOL) :: positive_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: size
      LOGICAL(KIND=C_BOOL) :: size_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: standard_name
      LOGICAL(KIND=C_BOOL) :: standard_name_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: unit
      LOGICAL(KIND=C_BOOL) :: unit_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: value
      LOGICAL(KIND=C_BOOL) :: value_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: zoom_begin
      LOGICAL(KIND=C_BOOL) :: zoom_begin_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: zoom_end
      LOGICAL(KIND=C_BOOL) :: zoom_end_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: zoom_size
      LOGICAL(KIND=C_BOOL) :: zoom_size_tmp
      CALL xios_get_axis_handle(axis_id,axis_hdl)
      CALL xios_is_defined_axis_attr_hdl_ &
      ( axis_hdl, bounds, long_name, name, positive, size, standard_name, unit, value, zoom_begin &
      , zoom_end, zoom_size )
  END SUBROUTINE xios_is_defined_axis_attr
  SUBROUTINE xios_is_defined_axis_attr_hdl &
    ( axis_hdl, bounds, long_name, name, positive, size, standard_name, unit, value, zoom_begin &
    , zoom_end, zoom_size )
    IMPLICIT NONE
      TYPE(xios_axis) , INTENT(IN) :: axis_hdl
      LOGICAL, OPTIONAL, INTENT(OUT) :: bounds
      LOGICAL(KIND=C_BOOL) :: bounds_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: long_name
      LOGICAL(KIND=C_BOOL) :: long_name_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: name
      LOGICAL(KIND=C_BOOL) :: name_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: positive
      LOGICAL(KIND=C_BOOL) :: positive_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: size
      LOGICAL(KIND=C_BOOL) :: size_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: standard_name
      LOGICAL(KIND=C_BOOL) :: standard_name_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: unit
      LOGICAL(KIND=C_BOOL) :: unit_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: value
      LOGICAL(KIND=C_BOOL) :: value_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: zoom_begin
      LOGICAL(KIND=C_BOOL) :: zoom_begin_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: zoom_end
      LOGICAL(KIND=C_BOOL) :: zoom_end_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: zoom_size
      LOGICAL(KIND=C_BOOL) :: zoom_size_tmp
      CALL xios_is_defined_axis_attr_hdl_ &
      ( axis_hdl, bounds, long_name, name, positive, size, standard_name, unit, value, zoom_begin &
      , zoom_end, zoom_size )
  END SUBROUTINE xios_is_defined_axis_attr_hdl
  SUBROUTINE xios_is_defined_axis_attr_hdl_ &
    ( axis_hdl, bounds_, long_name_, name_, positive_, size_, standard_name_, unit_, value_, zoom_begin_ &
    , zoom_end_, zoom_size_ )
    IMPLICIT NONE
      TYPE(xios_axis) , INTENT(IN) :: axis_hdl
      LOGICAL, OPTIONAL, INTENT(OUT) :: bounds_
      LOGICAL(KIND=C_BOOL) :: bounds__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: long_name_
      LOGICAL(KIND=C_BOOL) :: long_name__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: name_
      LOGICAL(KIND=C_BOOL) :: name__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: positive_
      LOGICAL(KIND=C_BOOL) :: positive__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: size_
      LOGICAL(KIND=C_BOOL) :: size__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: standard_name_
      LOGICAL(KIND=C_BOOL) :: standard_name__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: unit_
      LOGICAL(KIND=C_BOOL) :: unit__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: value_
      LOGICAL(KIND=C_BOOL) :: value__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: zoom_begin_
      LOGICAL(KIND=C_BOOL) :: zoom_begin__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: zoom_end_
      LOGICAL(KIND=C_BOOL) :: zoom_end__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: zoom_size_
      LOGICAL(KIND=C_BOOL) :: zoom_size__tmp
      IF (PRESENT(bounds_)) THEN
        bounds__tmp=cxios_is_defined_axis_bounds(axis_hdl%daddr)
        bounds_=bounds__tmp
      ENDIF
      IF (PRESENT(long_name_)) THEN
        long_name__tmp=cxios_is_defined_axis_long_name(axis_hdl%daddr)
        long_name_=long_name__tmp
      ENDIF
      IF (PRESENT(name_)) THEN
        name__tmp=cxios_is_defined_axis_name(axis_hdl%daddr)
        name_=name__tmp
      ENDIF
      IF (PRESENT(positive_)) THEN
        positive__tmp=cxios_is_defined_axis_positive(axis_hdl%daddr)
        positive_=positive__tmp
      ENDIF
      IF (PRESENT(size_)) THEN
        size__tmp=cxios_is_defined_axis_size(axis_hdl%daddr)
        size_=size__tmp
      ENDIF
      IF (PRESENT(standard_name_)) THEN
        standard_name__tmp=cxios_is_defined_axis_standard_name(axis_hdl%daddr)
        standard_name_=standard_name__tmp
      ENDIF
      IF (PRESENT(unit_)) THEN
        unit__tmp=cxios_is_defined_axis_unit(axis_hdl%daddr)
        unit_=unit__tmp
      ENDIF
      IF (PRESENT(value_)) THEN
        value__tmp=cxios_is_defined_axis_value(axis_hdl%daddr)
        value_=value__tmp
      ENDIF
      IF (PRESENT(zoom_begin_)) THEN
        zoom_begin__tmp=cxios_is_defined_axis_zoom_begin(axis_hdl%daddr)
        zoom_begin_=zoom_begin__tmp
      ENDIF
      IF (PRESENT(zoom_end_)) THEN
        zoom_end__tmp=cxios_is_defined_axis_zoom_end(axis_hdl%daddr)
        zoom_end_=zoom_end__tmp
      ENDIF
      IF (PRESENT(zoom_size_)) THEN
        zoom_size__tmp=cxios_is_defined_axis_zoom_size(axis_hdl%daddr)
        zoom_size_=zoom_size__tmp
      ENDIF
  END SUBROUTINE xios_is_defined_axis_attr_hdl_
END MODULE iaxis_attr
