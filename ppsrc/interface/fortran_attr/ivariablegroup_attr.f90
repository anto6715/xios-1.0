! * ************************************************************************** *
! * Interface auto generated - do not modify *
! * ************************************************************************** *
MODULE ivariablegroup_attr
  USE, INTRINSIC :: ISO_C_BINDING
  USE ivariable
  USE variablegroup_interface_attr
CONTAINS
  SUBROUTINE xios_set_variablegroup_attr &
    ( variablegroup_id, group_ref, name, type )
    IMPLICIT NONE
      TYPE(xios_variablegroup) :: variablegroup_hdl
      CHARACTER(LEN=*), INTENT(IN) ::variablegroup_id
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: group_ref
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: name
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: type
      CALL xios_get_variablegroup_handle(variablegroup_id,variablegroup_hdl)
      CALL xios_set_variablegroup_attr_hdl_ &
      ( variablegroup_hdl, group_ref, name, type )
  END SUBROUTINE xios_set_variablegroup_attr
  SUBROUTINE xios_set_variablegroup_attr_hdl &
    ( variablegroup_hdl, group_ref, name, type )
    IMPLICIT NONE
      TYPE(xios_variablegroup) , INTENT(IN) :: variablegroup_hdl
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: group_ref
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: name
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: type
      CALL xios_set_variablegroup_attr_hdl_ &
      ( variablegroup_hdl, group_ref, name, type )
  END SUBROUTINE xios_set_variablegroup_attr_hdl
  SUBROUTINE xios_set_variablegroup_attr_hdl_ &
    ( variablegroup_hdl, group_ref_, name_, type_ )
    IMPLICIT NONE
      TYPE(xios_variablegroup) , INTENT(IN) :: variablegroup_hdl
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: group_ref_
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: name_
      CHARACTER(len = *) , OPTIONAL, INTENT(IN) :: type_
      IF (PRESENT(group_ref_)) THEN
        CALL cxios_set_variablegroup_group_ref(variablegroup_hdl%daddr, group_ref_, len(group_ref_))
      ENDIF
      IF (PRESENT(name_)) THEN
        CALL cxios_set_variablegroup_name(variablegroup_hdl%daddr, name_, len(name_))
      ENDIF
      IF (PRESENT(type_)) THEN
        CALL cxios_set_variablegroup_type(variablegroup_hdl%daddr, type_, len(type_))
      ENDIF
  END SUBROUTINE xios_set_variablegroup_attr_hdl_
  SUBROUTINE xios_get_variablegroup_attr &
    ( variablegroup_id, group_ref, name, type )
    IMPLICIT NONE
      TYPE(xios_variablegroup) :: variablegroup_hdl
      CHARACTER(LEN=*), INTENT(IN) ::variablegroup_id
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: group_ref
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: name
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: type
      CALL xios_get_variablegroup_handle(variablegroup_id,variablegroup_hdl)
      CALL xios_get_variablegroup_attr_hdl_ &
      ( variablegroup_hdl, group_ref, name, type )
  END SUBROUTINE xios_get_variablegroup_attr
  SUBROUTINE xios_get_variablegroup_attr_hdl &
    ( variablegroup_hdl, group_ref, name, type )
    IMPLICIT NONE
      TYPE(xios_variablegroup) , INTENT(IN) :: variablegroup_hdl
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: group_ref
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: name
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: type
      CALL xios_get_variablegroup_attr_hdl_ &
      ( variablegroup_hdl, group_ref, name, type )
  END SUBROUTINE xios_get_variablegroup_attr_hdl
  SUBROUTINE xios_get_variablegroup_attr_hdl_ &
    ( variablegroup_hdl, group_ref_, name_, type_ )
    IMPLICIT NONE
      TYPE(xios_variablegroup) , INTENT(IN) :: variablegroup_hdl
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: group_ref_
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: name_
      CHARACTER(len = *) , OPTIONAL, INTENT(OUT) :: type_
      IF (PRESENT(group_ref_)) THEN
        CALL cxios_get_variablegroup_group_ref(variablegroup_hdl%daddr, group_ref_, len(group_ref_))
      ENDIF
      IF (PRESENT(name_)) THEN
        CALL cxios_get_variablegroup_name(variablegroup_hdl%daddr, name_, len(name_))
      ENDIF
      IF (PRESENT(type_)) THEN
        CALL cxios_get_variablegroup_type(variablegroup_hdl%daddr, type_, len(type_))
      ENDIF
  END SUBROUTINE xios_get_variablegroup_attr_hdl_
  SUBROUTINE xios_is_defined_variablegroup_attr &
    ( variablegroup_id, group_ref, name, type )
    IMPLICIT NONE
      TYPE(xios_variablegroup) :: variablegroup_hdl
      CHARACTER(LEN=*), INTENT(IN) ::variablegroup_id
      LOGICAL, OPTIONAL, INTENT(OUT) :: group_ref
      LOGICAL(KIND=C_BOOL) :: group_ref_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: name
      LOGICAL(KIND=C_BOOL) :: name_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: type
      LOGICAL(KIND=C_BOOL) :: type_tmp
      CALL xios_get_variablegroup_handle(variablegroup_id,variablegroup_hdl)
      CALL xios_is_defined_variablegroup_attr_hdl_ &
      ( variablegroup_hdl, group_ref, name, type )
  END SUBROUTINE xios_is_defined_variablegroup_attr
  SUBROUTINE xios_is_defined_variablegroup_attr_hdl &
    ( variablegroup_hdl, group_ref, name, type )
    IMPLICIT NONE
      TYPE(xios_variablegroup) , INTENT(IN) :: variablegroup_hdl
      LOGICAL, OPTIONAL, INTENT(OUT) :: group_ref
      LOGICAL(KIND=C_BOOL) :: group_ref_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: name
      LOGICAL(KIND=C_BOOL) :: name_tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: type
      LOGICAL(KIND=C_BOOL) :: type_tmp
      CALL xios_is_defined_variablegroup_attr_hdl_ &
      ( variablegroup_hdl, group_ref, name, type )
  END SUBROUTINE xios_is_defined_variablegroup_attr_hdl
  SUBROUTINE xios_is_defined_variablegroup_attr_hdl_ &
    ( variablegroup_hdl, group_ref_, name_, type_ )
    IMPLICIT NONE
      TYPE(xios_variablegroup) , INTENT(IN) :: variablegroup_hdl
      LOGICAL, OPTIONAL, INTENT(OUT) :: group_ref_
      LOGICAL(KIND=C_BOOL) :: group_ref__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: name_
      LOGICAL(KIND=C_BOOL) :: name__tmp
      LOGICAL, OPTIONAL, INTENT(OUT) :: type_
      LOGICAL(KIND=C_BOOL) :: type__tmp
      IF (PRESENT(group_ref_)) THEN
        group_ref__tmp=cxios_is_defined_variablegroup_group_ref(variablegroup_hdl%daddr)
        group_ref_=group_ref__tmp
      ENDIF
      IF (PRESENT(name_)) THEN
        name__tmp=cxios_is_defined_variablegroup_name(variablegroup_hdl%daddr)
        name_=name__tmp
      ENDIF
      IF (PRESENT(type_)) THEN
        type__tmp=cxios_is_defined_variablegroup_type(variablegroup_hdl%daddr)
        type_=type__tmp
      ENDIF
  END SUBROUTINE xios_is_defined_variablegroup_attr_hdl_
END MODULE ivariablegroup_attr
