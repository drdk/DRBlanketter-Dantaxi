prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 400
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>400
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(43751510999178473)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(43612993294178395)
,p_default_dialog_template=>wwv_flow_api.id(43592873493178386)
,p_error_template=>wwv_flow_api.id(43594331983178387)
,p_printer_friendly_template=>wwv_flow_api.id(43612993294178395)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(43594331983178387)
,p_default_button_template=>wwv_flow_api.id(43748565911178462)
,p_default_region_template=>wwv_flow_api.id(43666608893178420)
,p_default_chart_template=>wwv_flow_api.id(43666608893178420)
,p_default_form_template=>wwv_flow_api.id(43666608893178420)
,p_default_reportr_template=>wwv_flow_api.id(43666608893178420)
,p_default_tabform_template=>wwv_flow_api.id(43666608893178420)
,p_default_wizard_template=>wwv_flow_api.id(43666608893178420)
,p_default_menur_template=>wwv_flow_api.id(43678969735178425)
,p_default_listr_template=>wwv_flow_api.id(43666608893178420)
,p_default_irr_template=>wwv_flow_api.id(43662347585178419)
,p_default_report_template=>wwv_flow_api.id(43710959933178440)
,p_default_label_template=>wwv_flow_api.id(43745741105178459)
,p_default_menu_template=>wwv_flow_api.id(43750121102178464)
,p_default_calendar_template=>wwv_flow_api.id(43750239310178465)
,p_default_list_template=>wwv_flow_api.id(43744190958178458)
,p_default_nav_list_template=>wwv_flow_api.id(43735138758178453)
,p_default_top_nav_list_temp=>wwv_flow_api.id(43735138758178453)
,p_default_side_nav_list_temp=>wwv_flow_api.id(43733351785178452)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(43624366608178402)
,p_default_dialogr_template=>wwv_flow_api.id(43621505918178401)
,p_default_option_label=>wwv_flow_api.id(43745741105178459)
,p_default_required_label=>wwv_flow_api.id(43745815483178459)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(43736107183178454)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.component_end;
end;
/
