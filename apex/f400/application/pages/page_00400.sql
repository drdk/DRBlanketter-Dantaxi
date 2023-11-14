prompt --application/pages/page_00400
begin
--   Manifest
--     PAGE: 00400
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>400
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_page(
 p_id=>400
,p_user_interface_id=>wwv_flow_api.id(43773280003178491)
,p_name=>'Bestillingsblanket til Dantaxi'
,p_alias=>'BESTILLINGSBLANKET-TIL-DANTAXI'
,p_step_title=>'Bestillingsblanket til Dantaxi'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function deleteUpload(pId){',
'    if (confirm(''Skal dokumentationen slettes?'')) {',
'        // Delete it!',
'        apex.item(''P400_DELETE_ID'').setValue(pId);       ',
'        apex.event.trigger(''#P400_DELETE_ID'', ''deleteCall'', '''');',
'    } else {',
'        // Do nothing!',
'    }',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'RUJO'
,p_last_upd_yyyymmddhh24miss=>'20231106111014'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(71369239001080751)
,p_plug_name=>'ManagerDisplay'
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44013964109465001)
,p_plug_name=>unistr('Inds\00E6t/Indsat dokumentation')
,p_parent_plug_id=>wwv_flow_api.id(71369239001080751)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_region_attributes=>'style="width:1050px;"'
,p_plug_template=>wwv_flow_api.id(43630219669178405)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44014574238465007)
,p_plug_name=>'Indsatte filer'
,p_parent_plug_id=>wwv_flow_api.id(44013964109465001)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(43662347585178419)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT blanket_id,',
'       id,',
'       application_id,',
'       name,',
'       filename,',
'       mime_type,',
'       created_on,',
'       uploaded_by',
'  FROM bl_uploads',
' WHERE blanket_id = :p400_blanket_id;'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Indsatte filer'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44015328367465015)
,p_name=>'BLANKET_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BLANKET_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44015484987465016)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Se'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_link_target=>unistr('javascript:window.open(''f?p=&CALLING_APPLICATION.:10099:&SESSION.:NEW:&DEBUG.:RP:P10099_ID:&ID.:'',''Vedh\00E6ftning'',''status1, width=1400,height=800'');')
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_link_attributes=>'_BLANK'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44015564286465017)
,p_name=>'APPLICATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICATION_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44015683154465018)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44015732785465019)
,p_name=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILENAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Filnavn'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>400
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44015886646465020)
,p_name=>'MIME_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIME_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Mime Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44015925645465021)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Uploadet d.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44016025791465022)
,p_name=>'UPLOADED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPLOADED_BY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Uploaded af'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select full_name,username from bl_users '
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44125403285640301)
,p_name=>'DELETE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Slet'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_link_target=>'javascript:deleteUpload(''&ID.'');'
,p_link_text=>'<span class="fa fa-trash-o" aria-hidden="true"></span>'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(44014675917465008)
,p_internal_uid=>44014675917465008
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(44024888798541218)
,p_interactive_grid_id=>wwv_flow_api.id(44014675917465008)
,p_static_id=>'440249'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(44025019271541220)
,p_report_id=>wwv_flow_api.id(44024888798541218)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44025582019541225)
,p_view_id=>wwv_flow_api.id(44025019271541220)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(44015328367465015)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44026449988541231)
,p_view_id=>wwv_flow_api.id(44025019271541220)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(44015484987465016)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44027355848541234)
,p_view_id=>wwv_flow_api.id(44025019271541220)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(44015564286465017)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44028221088541237)
,p_view_id=>wwv_flow_api.id(44025019271541220)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(44015683154465018)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44029177348541240)
,p_view_id=>wwv_flow_api.id(44025019271541220)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(44015732785465019)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44030029997541243)
,p_view_id=>wwv_flow_api.id(44025019271541220)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(44015886646465020)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44030943430541245)
,p_view_id=>wwv_flow_api.id(44025019271541220)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(44015925645465021)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44031842131541248)
,p_view_id=>wwv_flow_api.id(44025019271541220)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(44016025791465022)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(44130777597645500)
,p_view_id=>wwv_flow_api.id(44025019271541220)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(44125403285640301)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63385445837275981)
,p_plug_name=>'3. Tro og love'
,p_parent_plug_id=>wwv_flow_api.id(71369239001080751)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:1050px;"'
,p_plug_template=>wwv_flow_api.id(43666608893178420)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
unistr('<center><div style="font-size:20px"><b><i>Tro- og love erkl\00E6ring vedr. pers. betalingskort til Dantaxi</i></b></div></center>'),
'<br><br>',
unistr('<p>Taxakortet er med firmah\00E6ftelse og m\00E5 ikke anvendes til private form\00E5l.</p>'),
unistr('<p>Kortet er personligt og det er kortholder, der er ansvarlig for alle k\00F8rsler, hvor kortet er anvendt som betalingsmiddel.</p>'),
unistr('<p>Det g\00E6lder dog ikke for andres uberettigede anvendelse af kortet, f.eks. i forbindelse med tab, tyveri. I tilf\00E6lde af taxakortets bortkomst skal kortholder straks give meddelelse herom til Finansteamet i \00D8SC eller alternativt ringe til Dantaxi p\00E5 ')
||unistr('4x48 og melde det stj\00E5let og s\00E5 sende en e-mail til taxa@dr.dk om, at det er annulleret. Der vil ogs\00E5 skulle oprettes en ny bestilling i blanketsystemet, hvis der er behov for et nyt kort.</p>'),
'<p>Kortholder er forpligtet til at overholde DRs retningslinjer for afregning til enhver tid, herunder dokumentationskrav.</p>',
unistr('<p>Hvis ans\00E6ttelsesforholdet oph\00F8rer, skal taxakortet afleveres til Finansteamet i \00D8SC senest sidste arbejdsdag i DR.</p>'),
unistr('<p><b>Ved tryk p\00E5 knappen \201DModtaget\201D, kvitteres for modtagelsen af det personlige kort samt ovenst\00E5ende betingelser for anvendelse af kortet</b></p>')))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':P400_STATUS in (''ARRIVED'',''PROCESSED'') and :P400_TEXT_ATTRIBUTE5=''PERSONAL_CARD'''
,p_plug_display_when_cond2=>'SQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70524173961123595)
,p_plug_name=>'2. Godkender'
,p_parent_plug_id=>wwv_flow_api.id(71369239001080751)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:1050px;"'
,p_plug_template=>wwv_flow_api.id(43666608893178420)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70524452225123598)
,p_plug_name=>'APPROVER1'
,p_parent_plug_id=>wwv_flow_api.id(70524173961123595)
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(43666608893178420)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77833485321142971)
,p_plug_name=>'Dantaxi'
,p_parent_plug_id=>wwv_flow_api.id(71369239001080751)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:1050px;"'
,p_plug_template=>wwv_flow_api.id(43666608893178420)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'ALWAYS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77835732164142994)
,p_plug_name=>'1. Oplysninger'
,p_parent_plug_id=>wwv_flow_api.id(71369239001080751)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:1050px;"'
,p_plug_template=>wwv_flow_api.id(43666608893178420)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(78163768797706215)
,p_name=>'Kommentarer'
,p_parent_plug_id=>wwv_flow_api.id(71369239001080751)
,p_template=>wwv_flow_api.id(43630219669178405)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--controlsPosEnd:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_region_attributes=>'style="width:1050px"'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    apex_string.get_initials(a.user_name, 4)   AS user_icon,',
'    ''u-color-''|| ora_hash(a.user_name, 45)     AS icon_modifier,',
'    a.timestamp                                AS comment_date,',
'    b.navn                                     AS user_name,',
'    c.description                              AS actions,',
'    a.note                                     AS comment_text,',
'    '' '' attribute_1,',
'    '' '' attribute_2,',
'    '' '' attribute_3,',
'    '' '' attribute_4',
'FROM',
'    bl_noter a,',
'    xxdr_user_managers b,',
'    bl_statuses c',
'WHERE',
'    a.blanket_id = :p400_blanket_id',
'    AND a.user_name = b.user_name (+)',
'    AND a.note_type = c.status (+)',
'ORDER BY a.timestamp desc;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(43713530286178441)
,p_query_num_rows=>3
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43798986667184599)
,p_query_column_id=>1
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>1
,p_column_heading=>'User Icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43799304848184600)
,p_query_column_id=>2
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>2
,p_column_heading=>'Icon Modifier'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43799750087184600)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Comment Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43800198495184600)
,p_query_column_id=>4
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43800585303184601)
,p_query_column_id=>5
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>5
,p_column_heading=>'Actions'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43800941051184601)
,p_query_column_id=>6
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>6
,p_column_heading=>'Comment Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43801316164184601)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>7
,p_column_heading=>'Attribute 1'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43801786555184601)
,p_query_column_id=>8
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>8
,p_column_heading=>'Attribute 2'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43802120938184601)
,p_query_column_id=>9
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>9
,p_column_heading=>'Attribute 3'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43802547847184602)
,p_query_column_id=>10
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>10
,p_column_heading=>'Attribute 4'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79001125292021814)
,p_plug_name=>'Hidden'
,p_parent_plug_id=>wwv_flow_api.id(71369239001080751)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81095707452842903)
,p_plug_name=>'Handlinger'
,p_parent_plug_id=>wwv_flow_api.id(71369239001080751)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_region_attributes=>'style="width:1050px;"'
,p_plug_template=>wwv_flow_api.id(43666608893178420)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43802951384184602)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(78163768797706215)
,p_button_name=>'P400_ADD_COMMENT'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(43748565911178462)
,p_button_image_alt=>unistr('Tilf\00F8j kommentar')
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=127:50:&SESSION.::&DEBUG.::P50_BLANKET_ID,P50_FROM_PAGE,CALLING_APPLICATION_EXT:&P400_BLANKET_ID.,&APP_PAGE_ID.,&APP_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44014063030465002)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(44013964109465001)
,p_button_name=>'P400_SUBMIT_UPLOAD'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(43748565911178462)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Indl\00E6s fil(er)')
,p_button_redirect_url=>'f?p=127:80:&SESSION.::&DEBUG.::P80_BLANKET_ID:&P400_BLANKET_ID.'
,p_icon_css_classes=>'fa-asl-interpreting'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43788293494184589)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(77833485321142971)
,p_button_name=>'P400_PROCESS_LOG'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(43747833100178461)
,p_button_image_alt=>'Log'
,p_button_redirect_url=>'f?p=127:20:&SESSION.::&DEBUG.::P20_BLANKET_ID:&P400_BLANKET_ID.'
,p_button_condition=>'select 1 from bl_process_log where blanket_id = :P400_blanket_id'
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-paperclip'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43807971883184605)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(81095707452842903)
,p_button_name=>'P400_CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(43748565911178462)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>O</u>pret/send'
,p_button_position=>'BOTTOM'
,p_button_execute_validations=>'N'
,p_button_condition=>'P400_STATUS'
,p_button_condition2=>'NEW'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_cattributes=>'accesskey=''o'''
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43808355353184605)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(81095707452842903)
,p_button_name=>'P400_REGRET'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(43748565911178462)
,p_button_image_alt=>'<u>F</u>ortryd'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>unistr('javascript:apex.confirm(''Er du sikker p\00E5, at du vil afbryde?'',''P400_REGRET'');')
,p_button_execute_validations=>'N'
,p_button_condition=>'P400_STATUS'
,p_button_condition2=>'NEW'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_cattributes=>'accesskey=''f'''
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43808722471184605)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(81095707452842903)
,p_button_name=>'P400_CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(43748565911178462)
,p_button_image_alt=>unistr('<u>A</u>nnull\00E9r')
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>unistr('javascript:apex.confirm(''Er du sikker p\00E5, at du vil annullere anmodningen? Anmodningen kan herefter ikke genfremsendes'',''P400_CANCEL'');')
,p_button_condition=>'P400_STATUS'
,p_button_condition2=>'REJECTED'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_cattributes=>'accesskey=''a'''
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43809173758184606)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(81095707452842903)
,p_button_name=>'P400_RESUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(43748565911178462)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>G</u>enfremsend'
,p_button_position=>'BOTTOM'
,p_button_condition=>'P400_STATUS'
,p_button_condition2=>'REJECTED'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_cattributes=>'accesskey=''g'''
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43809586589184606)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(81095707452842903)
,p_button_name=>'P400_APPROVE1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(43748565911178462)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>G</u>odkend'
,p_button_position=>'BOTTOM'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  from bl_blanket b',
' WHERE b.blanket_id = :P400_BLANKET_ID',
'   AND xxdr_blanket.blanketAccessible(b.blanket_id)=''Y''',
'   AND (STATUS like ''CREATED%'')'))
,p_button_condition_type=>'EXISTS'
,p_button_cattributes=>'accesskey=''g'''
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43809988312184607)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(81095707452842903)
,p_button_name=>'P400_ORDERED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(43748565911178462)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>B</u>estilt'
,p_button_position=>'BOTTOM'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  from bl_blanket b',
' WHERE b.blanket_id = :P400_BLANKET_ID',
'   AND xxdr_blanket.blanketAccessible(b.blanket_id)=''Y''',
'   AND (STATUS like ''APPROVED%'' or STATUS like ''APPROVED%'')'))
,p_button_condition_type=>'EXISTS'
,p_button_cattributes=>'accesskey=''b'''
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43810353364184607)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(81095707452842903)
,p_button_name=>'P400_ARRIVED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(43748565911178462)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<u>M</u>odtaget'
,p_button_position=>'BOTTOM'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  from bl_blanket b',
' WHERE b.blanket_id = :P400_BLANKET_ID',
'   AND xxdr_blanket.blanketAccessible(b.blanket_id)=''Y''',
'   AND (STATUS like ''ORDERED%'')'))
,p_button_condition_type=>'EXISTS'
,p_button_cattributes=>'accesskey=''m'''
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43810785965184607)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(81095707452842903)
,p_button_name=>'P400_RECEIVED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(43748565911178462)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Modtaget/afhentet'
,p_button_position=>'BOTTOM'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  from bl_blanket b',
' WHERE b.blanket_id = :P400_BLANKET_ID',
'   AND xxdr_blanket.blanketAccessible(b.blanket_id)=''Y''',
'   AND (STATUS like ''ARRIVED%'')'))
,p_button_condition_type=>'EXISTS'
,p_button_cattributes=>'accesskey=''t'''
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43811124267184607)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(81095707452842903)
,p_button_name=>'P400_REJECT'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(43748565911178462)
,p_button_image_alt=>'<u>A</u>fvis'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=127:40:&SESSION.::&DEBUG.::P40_BLANKET_ID,P40_REQUEST_OWNER,P40_STATUS,P40_TYPE_ID,P40_BLANKET_CREATED_BY,P40_ACTION:&P400_BLANKET_ID.,&P400_CURRENT_OWNER.,&P400_STATUS.,&P400_OLD_TYPE_ID.,&P400_CREATED_BY.,REJECT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  from bl_blanket b',
' WHERE b.blanket_id = :P400_BLANKET_ID',
'   AND xxdr_blanket.blanketAccessible(b.blanket_id)=''Y''',
'   AND (STATUS like ''CREATED%''',
'        OR STATUS = ''CONTROLLED''',
'        OR STATUS like ''APPROVED%''',
'        );'))
,p_button_condition_type=>'EXISTS'
,p_button_cattributes=>'accesskey=''a'''
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43811508521184607)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(81095707452842903)
,p_button_name=>'P400_HELP'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(43748565911178462)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('<u>H</u>j\00E6lp')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=127:90:&SESSION.::&DEBUG.::P90_TYPE_ID: &P400_OLD_TYPE_ID.'
,p_button_cattributes=>'accesskey=''h'''
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43837944054184629)
,p_branch_name=>'P100_HOME_CREATE'
,p_branch_action=>'f?p=&CALLING_APPLICATION.:&CALLING_WORKLIST.:&SESSION.::&DEBUG.:RP,100::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43838301158184629)
,p_branch_name=>'P100_HOME_APPROVE1'
,p_branch_action=>'f?p=&CALLING_APPLICATION.:&CALLING_WORKLIST.:&SESSION.::&DEBUG.:RP,100::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>400
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43838730198184629)
,p_branch_name=>'P100_HOME_APPROVE2'
,p_branch_action=>'f?p=&CALLING_APPLICATION.:&CALLING_WORKLIST.:&SESSION.::&DEBUG.:RP,100::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43839558395184630)
,p_branch_name=>'P100_HOME_EXECUTE'
,p_branch_action=>'f?p=&CALLING_APPLICATION.:&CALLING_WORKLIST.:&SESSION.::&DEBUG.:RP,100::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43839114911184629)
,p_branch_name=>'P100_HOME_CANCEL'
,p_branch_action=>'f?p=&CALLING_APPLICATION.:&CALLING_WORKLIST.:&SESSION.::&DEBUG.:RP,100::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>60
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43839955049184630)
,p_branch_name=>'P100_HOME_RESUBMIT'
,p_branch_action=>'f?p=&CALLING_APPLICATION.:&CALLING_WORKLIST.:&SESSION.::&DEBUG.:RP,100::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>70
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43837517352184629)
,p_branch_name=>'P100_HOME_REGRET'
,p_branch_action=>'f?p=&CALLING_APPLICATION.:&CALLING_WORKLIST.:&SESSION.::&DEBUG.:RP,100::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(43808355353184605)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43786183114184585)
,p_name=>'P400_ACCEPT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(63385445837275981)
,p_use_cache_before_default=>'NO'
,p_source=>'TEXT_ATTRIBUTE20'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>unistr('STATIC:Jeg har forst\00E5et og accepteret;Y')
,p_tag_attributes=>'style="font-weight: bold;"'
,p_grid_column=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43787166024184587)
,p_name=>'P400_APPROVER1_DISPLAY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(70524452225123598)
,p_prompt=>'Godkender'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>50
,p_tag_attributes=>'readonly="readonly", style="border-style: none;background-color:White;disabled="true";"'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>'readonly="readonly", style="border-style: none;background-color:White;disabled="true";"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43787519840184588)
,p_name=>'P400_APPROVER1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(70524452225123598)
,p_use_cache_before_default=>'NO'
,p_item_default=>' select manager_init from xxdr_user_managers where user_name=APEX_CUSTOM_AUTH.get_USERNAME'
,p_item_default_type=>'SQL_QUERY'
,p_source=>'APPROVER1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_tag_attributes=>'style="visibility: hidden;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>'style="visibility: hidden;"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43788605834184590)
,p_name=>'P400_TYPE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77833485321142971)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    blanket_type_id',
'FROM',
'    bl_blanket_defs',
'WHERE apex_page_id = :APP_PAGE_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_source=>'BLANKET_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43789098296184590)
,p_name=>'P400_OLD_TYPE_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77833485321142971)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    old_type_id',
'FROM',
'    bl_blanket_defs',
'WHERE apex_page_id = :APP_PAGE_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43789453040184590)
,p_name=>'P400_BLANKET_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(77833485321142971)
,p_use_cache_before_default=>'NO'
,p_item_default=>'bl_getNewBlanket_Lbnr'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Blanketnr.'
,p_source=>'LBNR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43789806772184591)
,p_name=>'P400_STATUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(77833485321142971)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NEW'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT description, status from bl_statuses;'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43790270802184591)
,p_name=>'P400_CURRENT_OWNER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(77833485321142971)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT :APP_USER from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('Udf\00F8rende person/funktion')
,p_source=>'CURRENT_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43790678001184591)
,p_name=>'P400_CREATED_BY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(77833485321142971)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT :APP_USER from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Oprettet af'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43791080942184591)
,p_name=>'P400_CREATED_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(77833485321142971)
,p_use_cache_before_default=>'NO'
,p_item_default=>'select sysdate from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Oprettelsesdato'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43791407844184591)
,p_name=>'P400_UPDATED_BY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(77833485321142971)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT :APP_USER from dual'
,p_item_default_type=>'SQL_QUERY'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43791837928184592)
,p_name=>'P400_UPDATED_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(77833485321142971)
,p_use_cache_before_default=>'NO'
,p_item_default=>'select sysdate from dual'
,p_item_default_type=>'SQL_QUERY'
,p_source=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43792572795184592)
,p_name=>'P400_REQUEST_TYPE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77835732164142994)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rekvirering af'
,p_source=>'TEXT_ATTRIBUTE5'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Taxabonner;COUPONS,Personlige betalingskort;PERSONAL_CARD'
,p_cHeight=>1
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'  from bl_blanket b ',
' where (b.blanket_id = :P400_BLANKET_ID ',
'   AND xxdr_blanket.blanketAccessible(b.blanket_id)=''Y'' )',
'   and status not in (''NEW'',''REJECTED'',''RETURNED'')'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(43746798996178460)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43792926617184593)
,p_name=>'P400_REGARDING'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77835732164142994)
,p_use_cache_before_default=>'NO'
,p_item_default=>'APEX_CUSTOM_AUTH.get_USERNAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Ansvarlig bruger/medarbejder'
,p_source=>'REGARDING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT navn, user_name ',
'  from xxdr_user_managers ',
unistr(' where org not in(''18001 F\00E6llesposter - driftsomk.'',''18007 Faste Freelancere'');')))
,p_lov_display_null=>'YES'
,p_cSize=>7
,p_cMaxlength=>100
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'  from bl_blanket b ',
' where (b.blanket_id = :P400_BLANKET_ID ',
'   AND xxdr_blanket.blanketAccessible(b.blanket_id)=''Y'' )',
'   and status not in (''NEW'',''REJECTED'',''RETURNED'')'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(43746798996178460)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43793352814184594)
,p_name=>'P400_REGARDING_FULLNAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(77835732164142994)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fulde navn'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly", style="border-style: none;background-color:White;disabled="true";"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43793789764184594)
,p_name=>'P400_ORG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(77835732164142994)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Afdeling'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly", style="border-style: none;background-color:White;disabled="true";"'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43794182404184595)
,p_name=>'P400_SUPERVISOR_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(77835732164142994)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Medarbejders chef'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly", style="border-style: none;background-color:White;disabled="true";"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43794509519184595)
,p_name=>'P400_ALT_STEDNUMMER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(77835732164142994)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Betalende afdeling'
,p_source=>'TEXT_ATTRIBUTE1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    beskrivelse  d,',
'    beskrivelse  r',
'FROM',
'    bl_sted_nr',
'ORDER BY',
'    beskrivelse;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'  from bl_blanket b ',
' where (b.blanket_id = :P400_BLANKET_ID ',
'   AND xxdr_blanket.blanketAccessible(b.blanket_id)=''Y'' )',
'   and status not in (''NEW'',''REJECTED'',''RETURNED'')'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>unistr('(OBS! Udfyldes kun hvis egen afdeling ikke skal betale eller der skal en anden godkender p\00E5)')
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct org d ,org r',
'  from xxdr_user_managers ',
'order by org'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43794958575184595)
,p_name=>'P400_ALT_APPROVER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(77835732164142994)
,p_prompt=>'Alt Approver'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    approvername  d,',
'    username      r',
'FROM',
'    bl_bemyndigelser_sted t1',
'WHERE',
'    username NOT IN ( ''MRR'', ''CHLU'', ''DORB'', ''COM'', ''STH'',',
'                      ''HEGH'', ''HERE'', ''HESV'' )',
'    AND approvalgroup LIKE ''%-E''',
'    AND departmentreference = substr(',
'        CASE',
'            WHEN :p400_alt_stednummer IS NULL THEN',
'                :p400_org',
'            ELSE',
'                :p400_alt_stednummer',
'        END,',
'        1,',
'        5)',
'        order by approvername;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select approvername d, username r -- ,DEPARTMENTREFERENCE',
'  from BL_BEMYNDIGELSER_STED t1 , perspektivChef@appsebs t2',
' where a_nr=username',
'   and a_nr<>''MRR''',
'   and approvalgroup like ''%-E''',
'   and DEPARTMENTREFERENCE=substr(',
'   case ',
'     when :P400_ALT_STEDNUMMER is null then :P400_ORG',
'     else :P400_ALT_STEDNUMMER',
'   end',
'   ,1,5) '))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43795331976184596)
,p_name=>'P400_KONTO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(77835732164142994)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Kontonummer hos Dantaxi (st\00E5r p\00E5 tidligere bestillinger/taxabonner)')
,p_source=>'TEXT_ATTRIBUTE4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select taxi_konto||'' (''||nvl(kommentar,''-'')||'')''  d, taxi_konto r ',
'from bl_taxi_kontonummer',
'where stednummer=substr(nvl(:P400_ALT_STEDNUMMER,:P400_ORG),1,5)'))
,p_lov_cascade_parent_items=>'P400_ORG'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'  from bl_blanket b ',
' where (b.blanket_id = :P400_BLANKET_ID ',
'   AND xxdr_blanket.blanketAccessible(b.blanket_id)=''Y'' )',
'   and status not in (''NEW'',''REJECTED'',''RETURNED'',''ORDERED'')'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Ved manglende valgmulighed vil konto automatisk blive oprettet.'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43796246979184597)
,p_name=>'P400_BONNER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(77835732164142994)
,p_use_cache_before_default=>'NO'
,p_item_default=>'10'
,p_prompt=>'Antal taxabonner'
,p_source=>'TEXT_ATTRIBUTE6'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>3
,p_cMaxlength=>5
,p_grid_label_column_span=>2
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'  from bl_blanket b ',
' where (b.blanket_id = :P400_BLANKET_ID ',
'   AND xxdr_blanket.blanketAccessible(b.blanket_id)=''Y'' )',
'   and status not in (''NEW'',''REJECTED'',''RETURNED'')'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(43746798996178460)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43796616648184597)
,p_name=>'P400_CARDNO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(77835732164142994)
,p_prompt=>'Kortnummer'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>6
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  from bl_blanket b',
' WHERE b.blanket_id = :P400_BLANKET_ID',
'   AND xxdr_blanket.blanketAccessible(b.blanket_id)=''Y''',
'   AND (STATUS like ''ORDERED%'' or status=''ARRIVED'')'))
,p_display_when_type=>'EXISTS'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  from bl_blanket b',
' WHERE b.blanket_id = :P400_BLANKET_ID',
'   AND xxdr_blanket.blanketAccessible(b.blanket_id)=''Y''',
'   AND (STATUS like ''ORDERED%'')'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43797048886184597)
,p_name=>'P400_EXPIRE_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(77835732164142994)
,p_prompt=>unistr('Udl\00F8bsdato')
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>15
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  from bl_blanket b',
' WHERE b.blanket_id = :P400_BLANKET_ID',
'   AND xxdr_blanket.blanketAccessible(b.blanket_id)=''Y''',
'   AND (STATUS like ''ORDERED%'' or status=''ARRIVED'')'))
,p_display_when_type=>'EXISTS'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  from bl_blanket b',
' WHERE b.blanket_id = :P400_BLANKET_ID',
'   AND xxdr_blanket.blanketAccessible(b.blanket_id)=''Y''',
'   AND (STATUS like ''ORDERED%'')'))
,p_read_only_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
,p_attribute_15=>'FOCUS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43797471425184597)
,p_name=>'P400_REMARKS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(77835732164142994)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Bem\00E6rkninger')
,p_source=>'TEXT_ATTRIBUTE9'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_read_only_when=>'SELECT 1 from bl_blanket b where b.blanket_id = :P400_BLANKET_ID and b.status not in (''NEW'',''REJECTED'',''RETURNED'')'
,p_read_only_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43797811454184598)
,p_name=>'P400_DO_POPUP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(77835732164142994)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="visibility: hidden;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(43745741105178459)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43798236658184598)
,p_name=>'P400_SUPERVISOR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(77835732164142994)
,p_use_cache_before_default=>'NO'
,p_source=>'SUPERVISOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="visibility: hidden;"'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43803619275184603)
,p_name=>'P400_NEXT_APPROVER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79001125292021814)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="visibility: hidden;"'
,p_field_template=>wwv_flow_api.id(43745741105178459)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43804025089184603)
,p_name=>'P400_FORNAVN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79001125292021814)
,p_use_cache_before_default=>'NO'
,p_source=>'NUMBER_ATTRIBUTE2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_tag_attributes=>'style="visibility: hidden;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>'999G999G999G999G990D00'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43804414483184603)
,p_name=>'P400_EFTERNAVN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79001125292021814)
,p_use_cache_before_default=>'NO'
,p_source=>'NUMBER_ATTRIBUTE3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_tag_attributes=>'style="visibility: hidden;"'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>'999G999G999G999G990D00'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43804806217184603)
,p_name=>'P400_BLANKET_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79001125292021814)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return bl_getNewBlanketID;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'BLANKET_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="visibility: hidden;"'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43805299503184603)
,p_name=>'P400_TEXT_ATTRIBUTE5'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(79001125292021814)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return bl_getNewBlanketID;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'TEXT_ATTRIBUTE5'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_tag_attributes=>'style="visibility: hidden;"'
,p_field_template=>wwv_flow_api.id(43746694192178460)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43805627033184604)
,p_name=>'P400_HELP_PROJEKT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(79001125292021814)
,p_item_default=>'select help_Text from bl_helptext where key1=:P400_OLD_TYPE_ID and key2=''PROJEKT'''
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43806072860184604)
,p_name=>'P400_HELP_PROJEKT_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(79001125292021814)
,p_item_default=>'select help_Text from bl_helptext where key1=:P400_OLD_TYPE_ID and key2=''PROJEKT'''
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43806488487184604)
,p_name=>'P400_HELP_TAXI'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(79001125292021814)
,p_item_default=>'select help_Text from bl_helptext where key1=:P400_OLD_TYPE_ID and key2=''ENGANGSVEDERLAG'''
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43806830872184604)
,p_name=>'P400_HELP_ALT_STEDNUMMER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(79001125292021814)
,p_item_default=>'select help_Text from bl_helptext where key1=:P400_OLD_TYPE_ID and key2=''ALT_STEDNUMMER'''
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43807252695184605)
,p_name=>'P400_HELP_REASON'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(79001125292021814)
,p_item_default=>'select help_Text from bl_helptext where key1=:P400_OLD_TYPE_ID and key2=''REASON'''
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44014960454465011)
,p_name=>'P400_RETURN_FROM_P80'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(44013964109465001)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44125578940640302)
,p_name=>'P400_DELETE_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(79001125292021814)
,p_prompt=>'Delete Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(43745741105178459)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43812022884184611)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'P400_ALT_APPROVER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Alternativ godkender skal v\00E6lges')
,p_always_execute=>'Y'
,p_validation_condition=>':P400_ALT_STEDNUMMER IS NOT NULL AND :P400_STATUS = ''NEW'' OR :P400_STATUS = ''REJECTED'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_api.id(43794958575184595)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44126232298640309)
,p_validation_name=>'approverNOTempty'
,p_validation_sequence=>30
,p_validation=>'P400_APPROVER1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Fejl. Der blev ikke fundet en godkender!'
,p_when_button_pressed=>wwv_flow_api.id(43807971883184605)
,p_associated_item=>wwv_flow_api.id(43787166024184587)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44126307667640310)
,p_validation_name=>'approverNOTregarding'
,p_validation_sequence=>40
,p_validation=>':P400_REGARDING != :P400_APPROVER1 AND :APP_USER != :P400_APPROVER1'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Det er ikke tilladt at godkende blanketter, som vedr\00F8rer en selv!')
,p_when_button_pressed=>wwv_flow_api.id(43807971883184605)
,p_associated_item=>wwv_flow_api.id(43787166024184587)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43815984482184615)
,p_name=>'P400_SET_APPL_ITEMS'
,p_event_sequence=>1
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43816455737184616)
,p_event_id=>wwv_flow_api.id(43815984482184615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    SELECT distinct manager_init  ',
'      INTO :p400_approver1',
'      FROM xxdr_user_managers um',
'     where org=:P400_ALT_STEDNUMMER;',
'exception',
'',
'  when others then',
'    :P400_APPROVER1 := :p400_supervisor;',
'end;    ',
'',
'begin',
'    select full_name ',
'      into :P400_APPROVER1_DISPLAY',
'      from bl_users',
'     where username=:P400_APPROVER1;',
'exception',
'  when others then',
'     :P400_APPROVER1_DISPLAY := :P400_APPROVER1;',
'end;    '))
,p_attribute_02=>'P400_APPROVER1'
,p_attribute_03=>'P400_APPROVER1_DISPLAY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43816840463184616)
,p_name=>'P400_REGARDING'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P400_REGARDING'
,p_condition_element=>'P400_REGARDING'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43817393468184617)
,p_event_id=>wwv_flow_api.id(43816840463184616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'  dApprover VARCHAR2(100);',
'  ',
'',
'begin',
'',
'',
'    SELECT',
'        um.org,',
'        um.manager_init,',
'    --    um.manager_init,',
'        um.navn',
'    --    um.user_name',
'    INTO',
'        :p400_org,',
'        :p400_supervisor,',
'     --   dApprover, --:p400_approver1,',
'        :p400_regarding_fullname',
'       -- :P400_REGARDING',
'    FROM',
'        xxdr_user_managers um',
'    WHERE',
'        um.user_name= upper(:p400_regarding)',
'     or upper(um.navn) like ''%''||upper(:p400_regarding)||''%'';',
'     :P400_DO_POPUP := ''N'';',
'    ',
'    ',
'    SELECT full_name ',
'      into :P400_SUPERVISOR_NAME ',
'      from bl_users ',
'     where username = :P400_SUPERVISOR;',
'     ',
'    if :P400_ALT_STEDNUMMER is null then',
'       :P400_APPROVER1 := :P400_SUPERVISOR;',
'    end if;',
'    ',
'exception',
'  when others then',
'   begin',
'     SELECT',
'            um.org,',
'            um.manager_init,',
'        --    um.manager_init,',
'            um.navn',
'        --    um.user_name',
'        INTO',
'            :p400_org,',
'            :p400_supervisor,',
'        --    dApprover, --:p400_approver1,',
'            :p400_regarding_fullname',
'        --    :P400_REGARDING',
'        FROM',
'            xxdr_user_managers um',
'        WHERE upper(um.navn) like ''%(''||upper(:p400_regarding)||'')%'';',
'         :P400_DO_POPUP := ''N'';',
'',
'    ',
'    SELECT full_name , full_name',
'      into :P400_SUPERVISOR_NAME, :P400_APPROVER1_DISPLAY',
'      from bl_users ',
'     where username = :P400_SUPERVISOR;',
'',
'    if :P400_ALT_STEDNUMMER is null then',
'       :P400_APPROVER1 := :P400_SUPERVISOR;',
'    end if;',
'',
'    exception    ',
'      when others then',
'            :p400_supervisor := '''';',
'            :P400_SUPERVISOR_NAME := '''';',
'        --    :p400_approver1 := '''';',
'            :p400_regarding_fullname := '''';',
'            :p400_org := '''';',
'            :P400_DO_POPUP := ''Y'';',
'    end;        ',
'end;    ',
'',
'',
' '))
,p_attribute_02=>'P400_REGARDING'
,p_attribute_03=>'P400_SUPERVISOR, P400_SUPERVISOR_NAME,P400_ORG,P400_REGARDING_FULLNAME,P400_DO_POPUP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>400
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43817841835184617)
,p_event_id=>wwv_flow_api.id(43816840463184616)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (apex.item( "P400_DO_POPUP" ).getValue()==''Y'') {',
'   apex.item( "P400_DO_POPUP" ).setValue(''Y'');',
'   $(''#P400_REGARDING_lov_btn'').trigger("click");',
'}',
'',
'//$("#P400_APPROVER").val($v("P400_SUPERVISOR_NAME"));',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43818322504184617)
,p_event_id=>wwv_flow_api.id(43816840463184616)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P400_DO_POPUP'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43818875726184618)
,p_event_id=>wwv_flow_api.id(43816840463184616)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select FULL_NAME',
'      into :p400_regarding_fullname',
'     from bl_users',
'    where username=UPPER(:p400_regarding);',
'exception',
'  when others then',
'    null;',
'end;    ',
''))
,p_attribute_02=>'P400_REGARDING'
,p_attribute_03=>'P400_REGARDING_FULLNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43819350190184618)
,p_event_id=>wwv_flow_api.id(43816840463184616)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select trim(first_name||'' ''||middle_names),',
'           last_name',
'      into :P400_FORNAVN,',
'           :P400_EFTERNAVN',
'      from BL_USERS',
'     where username=:P400_REGARDING;',
'exception',
'  when no_Data_found then',
'    :P400_EFTERNAVN :='''';',
'    :P400_FORNAVN := '''';',
'end;',
'',
''))
,p_attribute_02=>'P400_REGARDING'
,p_attribute_03=>'P400_FORNAVN,P400_EFTERNAVN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43819705442184618)
,p_name=>'P400_EXPAND_REGION'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P400_PLANNER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43820225322184618)
,p_event_id=>wwv_flow_api.id(43819705442184618)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P400_APPROVER1'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43820689996184619)
,p_name=>'P400_EXPAND_DATA_REGIONS'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    status ',
'from ',
'    bl_blanket ',
'where blanket_id = :P400_BLANKET_ID ',
'AND STATUS NOT IN (''NEW'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43821001810184619)
,p_name=>'P400_UPDATE_NAME_BRUGES_IKKE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P400_PLANNER'
,p_condition_element=>'P400_PLANNER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43821596293184619)
,p_event_id=>wwv_flow_api.id(43821001810184619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    SELECT full_name',
'    into :P400_PLANNER_NAME',
'    from bl_users ',
'    where upper(username) = upper(:P400_PLANNER);    ',
'    :P400_PLANNER := upper(:P400_PLANNER);',
'exception',
'  when no_Data_found then',
'     :P400_PLANNER_NAME := ''Ikke fundet'';',
'End;     '))
,p_attribute_02=>'P400_PLANNER'
,p_attribute_03=>'P400_PLANNER'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43821969218184619)
,p_name=>'P400_EXPAND_COMMENTS'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'SELECT 1 from bl_noter where blanket_ID = :P400_blanket_ID'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43822404353184620)
,p_event_id=>wwv_flow_api.id(43821969218184619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(78163768797706215)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43822810154184620)
,p_name=>'P400_HIDE_COMMENTS_ON_NEW'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P400_STATUS'
,p_display_when_cond2=>'NEW'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43823330021184620)
,p_event_id=>wwv_flow_api.id(43822810154184620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(78163768797706215)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43823713179184621)
,p_name=>'P400_ADD_COMMENT_SUBMIT'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9097499501376321)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43824292365184621)
,p_event_id=>wwv_flow_api.id(43823713179184621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P400_STATUS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43824604527184621)
,p_name=>'P400_NEW_DOC'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(77833485321142971)
,p_condition_element=>'P400_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43825194353184621)
,p_event_id=>wwv_flow_api.id(43824604527184621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P400_REGARDING'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43825533401184621)
,p_name=>'New_4'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P400_APPROVER1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43826031783184622)
,p_event_id=>wwv_flow_api.id(43825533401184621)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select full_name ',
'      into :P400_APPROVER1_DISPLAY',
'      from bl_users',
'     where username=:P400_APPROVER1;',
'exception',
'  when others then',
'     :P400_APPROVER1_DISPLAY := :P400_APPROVER1;',
'end;     '))
,p_attribute_02=>'P400_APPROVER1'
,p_attribute_03=>'P400_APPROVER1_DISPLAY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43826480725184622)
,p_name=>'hideEm'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43826953931184622)
,p_event_id=>wwv_flow_api.id(43826480725184622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(70524452225123598)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43827356932184622)
,p_name=>'SUPERVISOR_UPDATE'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P400_SUPERVISOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43827827319184622)
,p_event_id=>wwv_flow_api.id(43827356932184622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P400_ALT_STEDNUMMER is null then',
'     :P400_APPROVER1 := :P400_SUPERVISOR;',
'end if;',
''))
,p_attribute_02=>'P400_SUPERVISOR'
,p_attribute_03=>'P400_APPROVER1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_server_condition_expr1=>'P400_STATUS'
,p_server_condition_expr2=>'NEW:REJECTED'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43828213005184623)
,p_name=>'setFullName'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43828731242184623)
,p_event_id=>wwv_flow_api.id(43828213005184623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' select FULL_NAME',
'  into :p400_regarding_fullname',
' from bl_users',
'where username=UPPER(:p400_regarding);',
'exception',
'  when others then',
'     null;',
'end;',
'',
'',
'',
''))
,p_attribute_02=>'P400_REGARDING,P400_KONTO,P400_ORG, P400_FORNAVN'
,p_attribute_03=>'P400_REGARDING_FULLNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43829170947184623)
,p_name=>'HideAll'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P400_REQUEST_TYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43829679752184624)
,p_event_id=>wwv_flow_api.id(43829170947184623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P400_BONNER,P400_EXPIRE_DATE'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43830035631184624)
,p_name=>'ShowPersonalCard'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P400_REQUEST_TYPE'
,p_condition_element=>'P400_REQUEST_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PERSONAL_CARD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43830500691184624)
,p_event_id=>wwv_flow_api.id(43830035631184624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P400_APPROVER1_DISPLAY,P400_EXPIRE_DATE'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43830902970184624)
,p_name=>'ShowBonner'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P400_REQUEST_TYPE'
,p_condition_element=>'P400_REQUEST_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'COUPONS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43831445728184625)
,p_event_id=>wwv_flow_api.id(43830902970184624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P400_BONNER,P400_APPROVER1_DISPLAY'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43831876576184625)
,p_name=>'New'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P400_ALT_STEDNUMMER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43832354426184625)
,p_event_id=>wwv_flow_api.id(43831876576184625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    SELECT distinct manager_init  ',
'      INTO :p400_approver1',
'      FROM xxdr_user_managers um',
'     where org=:P400_ALT_STEDNUMMER;',
'exception',
'',
'  when others then',
'    :P400_APPROVER1 := :p400_supervisor;',
'end;    ',
'',
'',
' '))
,p_attribute_02=>'P400_ALT_STEDNUMMER,P400_SUPERVISOR'
,p_attribute_03=>'P400_APPROVER1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43832824643184625)
,p_event_id=>wwv_flow_api.id(43831876576184625)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P400_KONTO,P400_ALT_APPROVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43833200041184626)
,p_name=>'New_1'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P400_ORG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_when_cond=>'P400_STATUS'
,p_display_when_cond2=>'NEW:REJECTED'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43833700924184626)
,p_event_id=>wwv_flow_api.id(43833200041184626)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P400_ALT_STEDNUMMER is not null then',
'select distinct manager_init into :P400_APPROVER1 from XXDR_USER_MANAGERS where org like substr(:P400_ORG,1,5)||''%'';    ',
'begin',
'    SELECT distinct manager_init  ',
'      INTO :p400_approver1',
'      FROM xxdr_user_managers um',
'     where org=:P400_ALT_STEDNUMMER;',
'exception',
'',
'  when others then',
'    :P400_APPROVER1 := :p400_supervisor;',
'end;    ',
'end if;'))
,p_attribute_02=>'P400_ORG,P400_ALT_STEDNUMMER'
,p_attribute_03=>'P400_APPROVER1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43834285673184626)
,p_event_id=>wwv_flow_api.id(43833200041184626)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P400_KONTO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43834651112184626)
,p_name=>'New_2'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P400_ALT_APPROVER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43835164795184626)
,p_event_id=>wwv_flow_api.id(43834651112184626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P400_ALT_APPROVER is null then',
'    select distinct manager_init ',
'      into :P400_APPROVER1 ',
'      from XXDR_USER_MANAGERS ',
'     where org like substr(:P400_ORG,1,5)||''%''; ',
'else',
'   :P400_APPROVER1 := :P400_ALT_APPROVER;',
'end if;',
''))
,p_attribute_02=>'P400_ALT_APPROVER,P400_ORG'
,p_attribute_03=>'P400_APPROVER1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_server_condition_expr1=>'P400_STATUS'
,p_server_condition_expr2=>'NEW:REJECTED'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43835579754184627)
,p_name=>'New_3'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43809586589184606)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43836048116184627)
,p_event_id=>wwv_flow_api.id(43835579754184627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(43809586589184606)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43836535191184628)
,p_event_id=>wwv_flow_api.id(43835579754184627)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'P400_APPROVE1'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43837091584184628)
,p_event_id=>wwv_flow_api.id(43835579754184627)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(43809586589184606)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44014168899465003)
,p_name=>'P400_SAVE_WINDOW_POSITION_REGION'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(44013964109465001)
,p_bind_type=>'bind'
,p_bind_event_type=>'load'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44014249058465004)
,p_event_id=>wwv_flow_api.id(44014168899465003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var exp$ = $(window).scrollTop();',
'apex.storage.setCookie(''myWindowState'', exp$.toString());',
'',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44014351720465005)
,p_name=>'P400_SUBMIT_UPLOAD'
,p_event_sequence=>220
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(44014063030465002)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44014475828465006)
,p_event_id=>wwv_flow_api.id(44014351720465005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(44014574238465007)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44014753644465009)
,p_name=>'P400_SUBMIT_UPLOAD_CLOSED'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(44014063030465002)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44014877043465010)
,p_event_id=>wwv_flow_api.id(44014753644465009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P400_RETURN_FROM_P80'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P80_RETURN'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44015006304465012)
,p_name=>'P400_RETURN_FROM_P80'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P400_RETURN_FROM_P80'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44015189977465013)
,p_event_id=>wwv_flow_api.id(44015006304465012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'         insert into bl_uploads     ',
'          select :P400_BLANKET_ID,apex_files.* ,APEX_CUSTOM_AUTH.GET_USERNAME',
'            from apex_application_temp_files apex_files ',
'           where not exists (select 1 ',
'                               from bl_uploads',
'                              where id=apex_files.id);',
'         delete from apex_application_temp_files;'))
,p_attribute_02=>'P400_BLANKET_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44015252672465014)
,p_event_id=>wwv_flow_api.id(44015006304465012)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(44014574238465007)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44125649643640303)
,p_name=>'deleteCall'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P400_DELETE_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'deleteCall'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44125795889640304)
,p_event_id=>wwv_flow_api.id(44125649643640303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'uname   VARCHAR2(100);',
'',
'begin',
'',
'    select UPLOADED_BY',
'      into uname',
'      from bl_uploads',
'     where id=:P400_DELETE_ID;',
'',
'    if APEX_CUSTOM_AUTH.GET_USERNAME=uname and 1=1 then',
'        delete from bl_uploads where id=:P400_DELETE_ID;',
'    else',
'              apex_error.add_error (',
'                    p_message => ''Du kan ikke slette dokumenter, du ikke selv har uploadet'',',
'                    p_display_location => apex_error.c_inline_in_notification);',
'              RAISE_APPLICATION_ERROR (-20000,''Du kan ikke slette dokumenter, du ikke selv har uploadet'');  ',
'    end if;',
'exception',
'',
'  when no_data_found then',
'   null;    ',
'end;'))
,p_attribute_02=>'P400_DELETE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44125827080640305)
,p_event_id=>wwv_flow_api.id(44125649643640303)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(44014574238465007)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43812768245184612)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P400_CREATE_CLICK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'pResult varchar2(1);',
'pMessage varchar2(1000);',
'',
'dStednummer     VARCHAR2(400);',
'dFornavn        VARCHAR2(100);',
'dEfternavn      VARCHAR2(100);',
'dKonto          VARCHAR2(100);',
'dBonner         VARCHAR2(100);',
'dBlanketType    VARCHAR2(100);',
'dRemarks        VARCHAR2(30000);',
'dApprover       VARCHAR2(100);',
'doInsert        BOOLEAN;',
'',
'BEGIN',
'',
'    doInsert := true;',
'',
'    dStednummer    :=:P400_ORG;',
'    dFornavn       :=:P400_FORNAVN;',
'    dEfternavn     :=:P400_EFTERNAVN;',
'    dKonto         :=:P400_KONTO;',
'    dBlanketType   :=:P400_REQUEST_TYPE;',
'    dBonner        :=:P400_BONNER;',
'    dRemarks       :=:P400_REMARKS;',
'    dApprover      :=:P400_APPROVER1;',
'    ',
'    if :P400_ALT_STEDNUMMER is not null then',
'      dStednummer := :P400_ALT_STEDNUMMER;',
'    end if;',
'',
'',
'    if dBlanketType = ''PERSONAL_CARD'' then      ',
'       dBonner := null;  ',
'    elsif dBlanketType = ''COUPONS'' then',
'       dFornavn   := null;',
'       dEfternavn := null;',
'--       dApprover  := null;',
'    else',
'       dFornavn   := null;',
'       dEfternavn := null; ',
'       dBonner    := null;',
'       dApprover  := null;',
'    end if;',
'    ',
'    if :P400_ALT_STEDNUMMER is not null and :P400_ALT_APPROVER is null then',
'      doInsert:=false;',
'    end if;',
'    ',
'    if doInsert then',
'        insert into bl_blanket (',
'            blanket_id,',
'            blanket_type_id,',
'            lbnr,',
'            created_by,',
'            created_date,',
'            updated_by,',
'            updated_date,',
'            status,',
'            regarding,',
'            department,',
'            supervisor,',
'        -----------------------',
'            approver1,',
'            text_attribute1,',
'            text_attribute2,',
'            text_attribute3,',
'            text_attribute4,',
'            text_attribute5,',
'            text_attribute6,',
'            text_attribute9',
'',
'        ) values (',
'            :p400_blanket_id,',
'            :p400_type_id,',
'            :p400_blanket_no,',
'            upper(:p400_created_by),',
'            SYSDATE,',
'            upper(:p400_updated_by),',
'            SYSDATE,',
'            :P400_status,',
'            upper(:p400_regarding),',
'            :p400_org,',
'            upper(:p400_supervisor),',
'        ----------------------      ',
'            dApprover,',
'            dStednummer,',
'            dFornavn,',
'            dEfternavn,',
'            dKonto,',
'            dBlanketType,',
'            dBonner,',
'            dRemarks',
'        );',
'',
'',
'',
'',
'',
'',
'        if dBlanketType = ''PERSONAL_CARD'' then      ',
'           xxdr_blanket.process_blanket(:p400_blanket_id,''CREATE_PERSONAL_CARD'',pResult,pMessage); ',
'        elsif dBlanketType = ''COUPONS'' then',
'           xxdr_blanket.process_blanket(:p400_blanket_id,''CREATE_COUPONS'',pResult,pMessage);',
'        else',
'           xxdr_blanket.process_blanket(:p400_blanket_id,''CREATE_INVOICE_SPEC'',pResult,pMessage);',
'        end if;',
'',
'        if pResult = ''E'' then',
'            apex_error.add_error(p_message => pMessage,p_display_location => apex_error.c_inline_in_notification);',
'        else',
'            select CURRENT_OWNER into :P400_NEXT_APPROVER from bl_blanket where blanket_id=:p400_blanket_id;',
'        end if;',
'',
'    end if;',
'    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43807971883184605)
,p_process_success_message=>'Anmodning &P400_BLANKET_NO. er nu oprettet og sendt til kontrol/godkendelse hos &P400_NEXT_APPROVER.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43814318665184614)
,p_process_sequence=>80
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'P400_BEFORE_HEADER_DATA_FETCH'
,p_attribute_02=>'BL_BLANKET'
,p_attribute_03=>'P400_BLANKET_ID'
,p_attribute_04=>'BLANKET_ID'
,p_attribute_05=>'P400_STATUS'
,p_attribute_06=>'STATUS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P400_STATUS'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'NEW'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43813198497184613)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P400_APPROVE1_CLICK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'pResult varchar2(1);',
'pMessage varchar2(1000);',
'dBlanketType   VARCHAR2(100);',
'',
'BEGIN',
'',
'        dBlanketType   :=:P400_REQUEST_TYPE;',
'        ',
'        if dBlanketType = ''PERSONAL_CARD'' then      ',
'           xxdr_blanket.process_blanket(:p400_blanket_id,''APPROVE_PERSONAL_CARD'',pResult,pMessage); ',
'        elsif dBlanketType = ''COUPONS'' then',
'           xxdr_blanket.process_blanket(:p400_blanket_id,''APPROVE_COUPONS'',pResult,pMessage);',
'        else',
'           xxdr_blanket.process_blanket(:p400_blanket_id,''APPROVE_INVOICE_SPEC'',pResult,pMessage);',
'        end if;',
'',
'        select CURRENT_OWNER into :P400_NEXT_APPROVER from bl_blanket where blanket_id=:p400_blanket_id;',
'    ',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43809586589184606)
,p_process_success_message=>'Anmodning &P400_BLANKET_NO. er nu kontrolleret og sendt til &P400_NEXT_APPROVER.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43814705238184614)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P400_ORDERED_CLICK_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'pResult varchar2(1);',
'pMessage varchar2(1000);',
'dBlanketType   VARCHAR2(100);',
'',
'dKonto          VARCHAR2(100);',
'',
'BEGIN',
'',
'    dKonto         :=:P400_KONTO;',
'',
'    UPDATE bl_blanket',
'       SET text_attribute4=dKonto           ',
'     where blanket_id=:p400_blanket_id;',
'',
'        dBlanketType   :=:P400_REQUEST_TYPE;',
'        ',
'        if dBlanketType = ''PERSONAL_CARD'' then      ',
'           xxdr_blanket.process_blanket(:p400_blanket_id,''APPROVE_PERSONAL_CARD'',pResult,pMessage); ',
'        elsif dBlanketType = ''COUPONS'' then',
'           xxdr_blanket.process_blanket(:p400_blanket_id,''APPROVE_COUPONS'',pResult,pMessage);',
'        else',
'           xxdr_blanket.process_blanket(:p400_blanket_id,''APPROVE_INVOICE_SPEC'',pResult,pMessage);',
'        end if;',
'',
'        select CURRENT_OWNER into :P400_NEXT_APPROVER from bl_blanket where blanket_id=:p400_blanket_id;',
'    ',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43809988312184607)
,p_process_success_message=>'Anmodning &P400_BLANKET_NO. er gemt'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43815190047184614)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P400_ARRIVED_CLICK_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'pResult varchar2(1);',
'pMessage varchar2(1000);',
'dBlanketType   VARCHAR2(100);',
'dKonto         VARCHAR2(100);',
'',
'BEGIN',
'    dKonto         :=:P400_KONTO;',
'',
'    UPDATE bl_blanket',
'       SET text_attribute4=dKonto,',
'           TEXT_ATTRIBUTE7=:P400_CARDNO,',
'           DATE_ATTRIBUTE1=:P400_EXPIRE_DATE',
'     where blanket_id=:p400_blanket_id;',
'     ',
'        dBlanketType   :=:P400_REQUEST_TYPE;',
'        ',
'        if dBlanketType = ''PERSONAL_CARD'' then      ',
'           xxdr_blanket.process_blanket(:p400_blanket_id,''RECEIVED_PERSONAL_CARD'',pResult,pMessage); ',
'        elsif dBlanketType = ''COUPONS'' then',
'           xxdr_blanket.process_blanket(:p400_blanket_id,''RECEIVED_COUPONS'',pResult,pMessage);',
'        end if;',
'',
'        select CURRENT_OWNER into :P400_NEXT_APPROVER from bl_blanket where blanket_id=:p400_blanket_id;',
'    ',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43810353364184607)
,p_process_success_message=>'Anmodning &P400_BLANKET_NO. er gemt. Besked er sendt til bestiller.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43815550630184614)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P400_RECEIVED_CLICK_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'pResult varchar2(1);',
'pMessage varchar2(1000);',
'dBlanketType   VARCHAR2(100);',
'',
'dKonto          VARCHAR2(100);',
'',
'BEGIN',
'',
'    dKonto         :=:P400_KONTO;',
'',
'    UPDATE bl_blanket',
'       SET text_attribute20=''Y''        ',
'     where blanket_id=:p400_blanket_id;',
'     ',
'        dBlanketType   :=:P400_REQUEST_TYPE;',
'        ',
'        if dBlanketType = ''PERSONAL_CARD'' then      ',
'           xxdr_blanket.process_blanket(:p400_blanket_id,''RECEIVED_PERSONAL_CARD'',pResult,pMessage); ',
'        elsif dBlanketType = ''COUPONS'' then',
'           xxdr_blanket.process_blanket(:p400_blanket_id,''RECEIVED_COUPONS'',pResult,pMessage);',
'        end if;',
'',
'        select CURRENT_OWNER into :P400_NEXT_APPROVER from bl_blanket where blanket_id=:p400_blanket_id;',
'    ',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43810785965184607)
,p_process_success_message=>unistr('Anmodning &P400_BLANKET_NO. er gemt. Kvittering for modtagelsen er sendt til \00D8SC.')
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>400
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43813598929184613)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P400_CANCEL_CLICK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'pResult varchar2(1);',
'pMessage varchar2(1000);',
'',
'BEGIN',
' ',
'    xxdr_blanket.process_blanket(:p400_blanket_id,''CANCEL'',pResult,pMessage);',
'    ',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43808355353184605)
,p_process_success_message=>'Anmodning &P400_BLANKET_NO. er nu annulleret'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43813991340184613)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P400_RESUBMIT_CLICK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'pResult varchar2(1);',
'pMessage varchar2(1000);',
'',
'dStednummer     VARCHAR2(400);',
'dFornavn        VARCHAR2(100);',
'dEfternavn      VARCHAR2(100);',
'dKonto          VARCHAR2(100);',
'dBonner         VARCHAR2(100);',
'dBlanketType    VARCHAR2(100);',
'dRemarks        VARCHAR2(30000);',
'dApprover       VARCHAR2(100);',
'BEGIN',
'',
'    dStednummer    :=:P400_ORG;',
'    dFornavn       :=:P400_FORNAVN;',
'    dEfternavn     :=:P400_EFTERNAVN;',
'    dKonto         :=:P400_KONTO;',
'    dBlanketType   :=:P400_REQUEST_TYPE;',
'    dBonner        :=:P400_BONNER;',
'    dRemarks       :=:P400_REMARKS;',
'    dApprover      :=:P400_APPROVER1;',
'    ',
'    if :P400_ALT_STEDNUMMER is not null then',
'      dStednummer := :P400_ALT_STEDNUMMER;',
'    end if;',
'',
'',
'    if dBlanketType = ''PERSONAL_CARD'' then      ',
'       dBonner := null;  ',
'    elsif dBlanketType = ''COUPONS'' then',
'       dFornavn   := null;',
'       dEfternavn := null;',
'       dApprover  := null;',
'    else',
'       dFornavn   := null;',
'       dEfternavn := null; ',
'       dBonner    := null;',
'       dApprover  := null;',
'    end if;',
'',
'    UPDATE bl_blanket',
'       SET text_attribute1=dStednummer,',
'           text_attribute2=dFornavn,',
'           text_attribute3=dEfternavn,',
'           text_attribute4=dKonto,',
'           text_attribute5=dBlanketType,',
'           text_attribute6=dBonner,',
'           text_attribute9=dRemarks,',
'           status=''NEW''',
'     where blanket_id=:p400_blanket_id;',
'',
'',
'',
'',
'    if dBlanketType = ''PERSONAL_CARD'' then      ',
'       xxdr_blanket.process_blanket(:p400_blanket_id,''CREATE_PERSONAL_CARD'',pResult,pMessage); ',
'    elsif dBlanketType = ''COUPONS'' then',
'       xxdr_blanket.process_blanket(:p400_blanket_id,''CREATE_COUPONS'',pResult,pMessage);',
'    else',
'       xxdr_blanket.process_blanket(:p400_blanket_id,''CREATE_INVOICE_SPEC'',pResult,pMessage);',
'    end if;',
'',
'',
'    select CURRENT_OWNER into :P400_NEXT_APPROVER from bl_blanket where blanket_id=:p400_blanket_id;',
'',
'    ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43809173758184606)
,p_process_success_message=>'Anmodning &P400_BLANKET_NO. er nu genfremsendt til &P400_NEXT_APPROVER.'
);
wwv_flow_api.component_end;
end;
/
