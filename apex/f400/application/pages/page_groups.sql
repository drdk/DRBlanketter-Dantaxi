prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 400
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>400
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(43776118044178514)
,p_group_name=>'Administration'
);
wwv_flow_api.component_end;
end;
/
