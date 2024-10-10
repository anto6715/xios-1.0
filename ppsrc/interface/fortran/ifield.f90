MODULE IFIELD
   USE, INTRINSIC :: ISO_C_BINDING
   USE FIELD_INTERFACE
   USE FIELDGROUP_INTERFACE
! USE IFIELD_ATTR
! USE IFIELDGROUP_ATTR
   TYPE xios_field
      INTEGER(kind = C_INTPTR_T) :: daddr
   END TYPE xios_field
   TYPE xios_fieldgroup
      INTEGER(kind = C_INTPTR_T) :: daddr
   END TYPE xios_fieldgroup
   CONTAINS ! Fonctions disponibles pour les utilisateurs.
   SUBROUTINE xios_get_field_handle(idt, ret)
      IMPLICIT NONE
      CHARACTER(len = *), INTENT(IN) :: idt
      TYPE(xios_field), INTENT(OUT) :: ret
      CALL cxios_field_handle_create(ret%daddr, idt, len(idt))
   END SUBROUTINE xios_get_field_handle
   SUBROUTINE xios_get_fieldgroup_handle(idt,ret)
      IMPLICIT NONE
      CHARACTER(len = *) , INTENT(IN) :: idt
      TYPE(xios_fieldgroup), INTENT(OUT):: ret
      CALL cxios_fieldgroup_handle_create(ret%daddr, idt, len(idt))
   END SUBROUTINE xios_get_fieldgroup_handle
   LOGICAL FUNCTION xios_is_valid_field(idt)
      IMPLICIT NONE
      CHARACTER(len = *) , INTENT(IN) :: idt
      LOGICAL (kind = 1) :: val
      CALL cxios_field_valid_id(val, idt, len(idt));
      xios_is_valid_field = val
   END FUNCTION xios_is_valid_field
   LOGICAL FUNCTION xios_is_valid_fieldgroup(idt)
      IMPLICIT NONE
      CHARACTER(len = *) , INTENT(IN) :: idt
      LOGICAL (kind = 1) :: val
      CALL cxios_fieldgroup_valid_id(val, idt, len(idt));
      xios_is_valid_fieldgroup = val
   END FUNCTION xios_is_valid_fieldgroup
  LOGICAL FUNCTION xios_field_is_active_id(field_id)
      IMPLICIT NONE
      CHARACTER(len = *) , INTENT(IN) :: field_id
      LOGICAL (kind = 1) :: val
      TYPE(xios_field) :: field_hdl
      CALL xios_get_field_handle(field_id,field_hdl)
      xios_field_is_active_id=xios_field_is_active_hdl(field_hdl)
   END FUNCTION xios_field_is_active_id
   LOGICAL FUNCTION xios_field_is_active_hdl(field_hdl)
      IMPLICIT NONE
      TYPE(xios_field),INTENT(IN) :: field_hdl
      LOGICAL (kind = 1) :: ret
      CALL cxios_field_is_active(field_hdl%daddr, ret);
      xios_field_is_active_hdl = ret
   END FUNCTION xios_field_is_active_hdl
END MODULE IFIELD
