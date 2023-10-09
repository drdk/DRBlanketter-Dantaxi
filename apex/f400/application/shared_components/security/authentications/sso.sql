prompt --application/shared_components/security/authentications/sso
begin
--   Manifest
--     AUTHENTICATION: SSO
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>400
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(44036472128082864)
,p_name=>'SSO'
,p_scheme_type=>'NATIVE_HTTP_HEADER_VARIABLE'
,p_attribute_01=>'SSO_USER'
,p_attribute_02=>'BUILTIN_URL'
,p_attribute_06=>'ALWAYS'
,p_cookie_name=>'&WORKSPACE_COOKIE.'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_reference_id=>19078760875277522
);
wwv_flow_api.component_end;
end;
/
