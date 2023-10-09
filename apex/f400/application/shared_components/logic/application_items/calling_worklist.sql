prompt --application/shared_components/logic/application_items/calling_worklist
begin
--   Manifest
--     APPLICATION ITEM: CALLING_WORKLIST
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>400
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(43859120483337052)
,p_name=>'CALLING_WORKLIST'
,p_scope=>'GLOBAL'
,p_protection_level=>'N'
);
wwv_flow_api.component_end;
end;
/
