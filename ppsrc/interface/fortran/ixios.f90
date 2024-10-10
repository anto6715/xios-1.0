MODULE XIOS
USE icontext, ONLY : xios_context, xios_get_context_handle, xios_set_current_context, &
                     xios_is_valid_context
USE icontext_attr, ONLY : xios_set_context_attr, xios_set_context_attr_hdl, &
                          xios_get_context_attr, xios_get_context_attr_hdl, &
                          xios_is_defined_context_attr, xios_is_defined_context_attr_hdl
USE idata, ONLY : xios_initialize,xios_init_server, xios_finalize, xios_context_initialize, &
                  xios_context_is_initialized, xios_close_context_definition,xios_solve_inheritance, &
                  xios_context_finalize, xios_send_field_r8_1d, xios_send_field_r8_2d, &
                  xios_send_field_r8_3d, xios_send_field_r4_1d, xios_send_field_r4_2d, &
                  xios_send_field_r4_3d, xios_getVar_k8, xios_getVar_k4, xios_getVar_int, &
                  xios_getVar_logic, xios_getVar_char, xios_setVar_k8, xios_setVar_k4, xios_setVar_int, &
                  xios_setVar_logic, xios_setVar_char
USE idate, ONLY : xios_date,xios_time, xios_set_timestep,xios_update_calendar
USE idomain, ONLY : xios_domain, xios_domaingroup, xios_get_domain_handle, &
                    xios_get_domaingroup_handle,xios_is_valid_domain, &
                    xios_is_valid_domaingroup
USE idomain_attr, ONLY : xios_set_domain_attr, xios_set_domain_attr_hdl, &
                          xios_get_domain_attr, xios_get_domain_attr_hdl, &
                          xios_is_defined_domain_attr, xios_is_defined_domain_attr_hdl
USE idomaingroup_attr, ONLY : xios_set_domaingroup_attr, xios_set_domaingroup_attr_hdl, &
                              xios_get_domaingroup_attr, xios_get_domaingroup_attr_hdl, &
                              xios_is_defined_domaingroup_attr, xios_is_defined_domaingroup_attr_hdl
USE ifield, ONLY : xios_field, xios_fieldgroup, xios_get_field_handle, &
                   xios_get_fieldgroup_handle, xios_is_valid_field, &
                   xios_is_valid_fieldgroup,xios_field_is_active_id,xios_field_is_active_hdl
USE ifield_attr, ONLY : xios_set_field_attr,xios_set_field_attr_hdl, &
                        xios_get_field_attr,xios_get_field_attr_hdl, &
                        xios_is_defined_field_attr,xios_is_defined_field_attr_hdl
USE ifieldgroup_attr, ONLY : xios_set_fieldgroup_attr, xios_set_fieldgroup_attr_hdl, &
                             xios_get_fieldgroup_attr, xios_get_fieldgroup_attr_hdl, &
                             xios_is_defined_fieldgroup_attr, xios_is_defined_fieldgroup_attr_hdl
USE ivariable, ONLY : xios_variable, xios_variablegroup, xios_get_variable_handle, &
                   xios_get_variablegroup_handle, xios_is_valid_variable, &
                   xios_is_valid_variablegroup
USE ivariable_attr, ONLY : xios_set_variable_attr,xios_set_variable_attr_hdl, &
                        xios_get_variable_attr,xios_get_variable_attr_hdl, &
                        xios_is_defined_variable_attr,xios_is_defined_variable_attr_hdl
USE ivariablegroup_attr, ONLY : xios_set_variablegroup_attr, xios_set_variablegroup_attr_hdl, &
                             xios_get_variablegroup_attr, xios_get_variablegroup_attr_hdl, &
                             xios_is_defined_variablegroup_attr, xios_is_defined_variablegroup_attr_hdl
USE ifile, ONLY : xios_file, xios_filegroup, xios_get_file_handle, &
                  xios_get_filegroup_handle, xios_is_valid_file, xios_is_valid_filegroup
USE ifile_attr, ONLY : xios_set_file_attr,xios_set_file_attr_hdl, &
                       xios_get_file_attr,xios_get_file_attr_hdl, &
                       xios_is_defined_file_attr,xios_is_defined_file_attr_hdl
USE ifilegroup_attr, ONLY : xios_set_filegroup_attr, xios_set_filegroup_attr_hdl, &
                            xios_get_filegroup_attr, xios_get_filegroup_attr_hdl, &
                            xios_is_defined_filegroup_attr, xios_is_defined_filegroup_attr_hdl
USE igrid, ONLY : xios_grid, xios_gridgroup, xios_get_grid_handle, &
                  xios_get_gridgroup_handle, xios_is_valid_grid, xios_is_valid_gridgroup
USE igrid_attr, ONLY : xios_set_grid_attr_hdl, xios_set_grid_attr, &
                       xios_get_grid_attr_hdl, xios_get_grid_attr, &
                       xios_is_defined_grid_attr_hdl, xios_is_defined_grid_attr
USE igridgroup_attr, ONLY : xios_set_gridgroup_attr, xios_set_gridgroup_attr_hdl, &
                            xios_get_gridgroup_attr, xios_get_gridgroup_attr_hdl, &
                            xios_is_defined_gridgroup_attr, xios_is_defined_gridgroup_attr_hdl
USE iaxis, ONLY : xios_axis, xios_axisgroup, xios_get_axis_handle, &
                  xios_get_axisgroup_handle, xios_is_valid_axis, xios_is_valid_axisgroup
USE iaxis_attr, ONLY : xios_set_axis_attr, xios_set_axis_attr_hdl, &
                        xios_get_axis_attr, xios_get_axis_attr_hdl, &
                        xios_is_defined_axis_attr, xios_is_defined_axis_attr_hdl
USE iaxisgroup_attr, ONLY : xios_set_axisgroup_attr, xios_set_axisgroup_attr_hdl, &
                            xios_get_axisgroup_attr, xios_get_axisgroup_attr_hdl, &
                            xios_is_defined_axisgroup_attr, xios_is_defined_axisgroup_attr_hdl
USE ixml_tree, ONLY : xios_add_axis, xios_add_file, xios_add_grid, xios_add_field, xios_add_domain, &
                     xios_add_fieldtofile, xios_add_variabletofile, xios_add_variabletofield, &
                     xios_add_axisgroup, xios_add_filegroup, xios_add_gridgroup, xios_add_fieldgroup, &
                     xios_add_domaingroup, xios_add_fieldgrouptofile, xios_add_variablegrouptofile, &
                     xios_add_variablegrouptofield
PRIVATE
INTERFACE xios_set_attr
  MODULE PROCEDURE xios_set_domaingroup_attr_hdl, xios_set_domain_attr_hdl, xios_set_fieldgroup_attr_hdl, &
                   xios_set_field_attr_hdl,xios_set_variable_attr_hdl, xios_set_variablegroup_attr_hdl, &
                   xios_set_file_attr_hdl, xios_set_filegroup_attr_hdl, &
                   xios_set_grid_attr_hdl, xios_set_gridgroup_attr_hdl, xios_set_axis_attr_hdl , &
                   xios_set_axisgroup_attr_hdl, xios_set_context_attr_hdl
END INTERFACE xios_set_attr
INTERFACE xios_get_attr
  MODULE PROCEDURE xios_get_domaingroup_attr_hdl, xios_get_domain_attr_hdl, xios_get_fieldgroup_attr_hdl, &
                   xios_get_field_attr_hdl, xios_get_variable_attr_hdl, xios_get_variablegroup_attr_hdl, &
                   xios_get_file_attr_hdl, xios_get_filegroup_attr_hdl, &
                   xios_get_grid_attr_hdl, xios_get_gridgroup_attr_hdl, xios_get_axis_attr_hdl , &
                   xios_get_axisgroup_attr_hdl, xios_get_context_attr_hdl
END INTERFACE xios_get_attr
INTERFACE xios_is_defined_attr
  MODULE PROCEDURE xios_is_defined_domaingroup_attr_hdl, xios_is_defined_domain_attr_hdl, xios_is_defined_fieldgroup_attr_hdl, &
                   xios_is_defined_field_attr_hdl, xios_is_defined_variable_attr_hdl, xios_is_defined_variablegroup_attr_hdl, &
                   xios_is_defined_file_attr_hdl, xios_is_defined_filegroup_attr_hdl, &
                   xios_is_defined_grid_attr_hdl, xios_is_defined_gridgroup_attr_hdl, xios_is_defined_axis_attr_hdl , &
                   xios_is_defined_axisgroup_attr_hdl, xios_is_defined_context_attr_hdl
END INTERFACE xios_is_defined_attr
INTERFACE xios_get_handle
  MODULE PROCEDURE xios_get_context_handle, xios_get_domain_handle, xios_get_domaingroup_handle, &
                    xios_get_file_handle, xios_get_filegroup_handle, xios_get_grid_handle, &
                    xios_get_gridgroup_handle, xios_get_axis_handle, xios_get_axisgroup_handle, &
                    xios_get_field_handle, xios_get_fieldgroup_handle,xios_get_variable_handle, &
                    xios_get_variablegroup_handle
END INTERFACE xios_get_handle
INTERFACE xios_add_child
  MODULE PROCEDURE xios_add_axis, xios_add_file, xios_add_grid, xios_add_field, xios_add_domain, &
                   xios_add_fieldtofile, xios_add_variabletofile, xios_add_variabletofield, xios_add_axisgroup, &
                   xios_add_filegroup, xios_add_gridgroup, xios_add_fieldgroup, xios_add_domaingroup, &
                   xios_add_fieldgrouptofile, xios_add_variablegrouptofile,xios_add_variablegrouptofield
END INTERFACE xios_add_child
INTERFACE xios_send_field
  MODULE PROCEDURE xios_send_field_r8_1d, xios_send_field_r8_2d, xios_send_field_r8_3d, &
                    xios_send_field_r4_1d, xios_send_field_r4_2d, xios_send_field_r4_3d
END INTERFACE xios_send_field
INTERFACE xios_field_is_active
  MODULE PROCEDURE xios_field_is_active_id,xios_field_is_active_hdl
END INTERFACE
INTERFACE xios_getVar
  MODULE PROCEDURE xios_getVar_k8, xios_getVar_k4, xios_getVar_int, xios_getVar_logic, xios_getVar_char
END INTERFACE xios_getVar
INTERFACE xios_setVar
  MODULE PROCEDURE xios_setVar_k8, xios_setVar_k4, xios_setVar_int, xios_setVar_logic, xios_setVar_char
END INTERFACE xios_setVar
 PUBLIC :: xios_domain, xios_domaingroup,xios_field, xios_fieldgroup,xios_file, xios_filegroup, &
          xios_grid, xios_gridgroup, xios_axis, xios_axisgroup,xios_context, xios_date, &
          xios_time, xios_variable
 PUBLIC :: xios_set_attr, xios_set_domain_attr, xios_set_domaingroup_attr, xios_set_fieldgroup_attr, &
          xios_set_field_attr, xios_set_file_attr, xios_set_filegroup_attr, &
          xios_set_grid_attr, xios_set_gridgroup_attr, xios_set_axis_attr , &
          xios_set_axisgroup_attr, xios_set_context_attr
 PUBLIC :: xios_get_attr, xios_get_domain_attr, xios_get_domaingroup_attr, xios_get_fieldgroup_attr, &
          xios_get_field_attr, xios_get_file_attr, xios_get_filegroup_attr, &
          xios_get_grid_attr, xios_get_gridgroup_attr, xios_get_axis_attr , &
          xios_get_axisgroup_attr, xios_get_context_attr
PUBLIC :: xios_is_defined_attr, xios_is_defined_domain_attr, xios_is_defined_domaingroup_attr, xios_is_defined_fieldgroup_attr, &
          xios_is_defined_field_attr, xios_is_defined_file_attr, xios_is_defined_filegroup_attr, &
          xios_is_defined_grid_attr, xios_is_defined_gridgroup_attr, xios_is_defined_axis_attr , &
          xios_is_defined_axisgroup_attr, xios_is_defined_context_attr
 PUBLIC :: xios_get_handle
 PUBLIC :: xios_add_child
 PUBLIC :: xios_is_valid_context,xios_is_valid_domain, xios_is_valid_domaingroup,xios_is_valid_field, &
           xios_is_valid_fieldgroup, xios_is_valid_file, xios_is_valid_filegroup, xios_is_valid_grid, &
           xios_is_valid_gridgroup, xios_is_valid_axis, xios_is_valid_axisgroup, xios_is_valid_variable, &
           xios_is_valid_variablegroup
 PUBLIC :: xios_set_current_context
 PUBLIC :: xios_set_timestep,xios_update_calendar
 PUBLIC :: xios_initialize, xios_init_server, xios_finalize, xios_context_initialize,xios_context_is_initialized, &
           xios_solve_inheritance, xios_close_context_definition, xios_context_finalize, xios_send_field, &
           xios_field_is_active
 PUBLIC :: xios_getVar
 PUBLIC :: xios_setVar
END MODULE XIOS
