 
--------------------------------------------------------------------
prompt  APPLICATION 106 - Bloodbank Management System
--
-- Application Export:
--   Application:     106
--   Name:            Bloodbank Management System
--   Date and Time:   08:54 Monday January 17, 2022
--   Exported By:     HR
--   Flashback:       0
--   Version: 2.1.0.00.39
 
-- Import:
--   Using application application builder
--   or
--   Using sqlplus as the Oracle user: FLOWS_020100
 
-- Application Statistics:
--   Pages:                 7
--     Items:              28
--     Computations:        0
--     Validations:         0
--     Processes:          14
--     Regions:            13
--     Buttons:            19
--   Shared Components
--     Breadcrumbs:         1
--        Entries           6
--     Items:               1
--     Computations:        0
--     Processes:           0
--     Parent Tabs:         0
--     Tab Sets:            1
--        Tabs:             4
--     NavBars:             1
--     Lists:               0
--     Shortcuts:           1
--     Themes:              1
--     Templates:
--        Page:             9
--        List:            14
--        Report:           7
--        Label:            5
--        Region:          22
--     Messages:            0
--     Build Options:       0
 
 
set define off
set verify off
set serveroutput on size 1000000
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end; 
/
 
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to sqlplus as the owner (parsing schema) of the application or as the product schema.
  wwv_flow_api.set_security_group_id(p_security_group_id=>802700362635354);
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'en-us'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2005.05.01');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := 106;
   wwv_flow_api.g_id_offset := 0;
null;
 
end;
/

 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(106);
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(106);
null;
 
end;
/

 
begin
 
wwv_flow_api.create_flow(
  p_id    => 106,
  p_display_id=> 106,
  p_owner => 'HR',
  p_name  => 'Bloodbank Management System',
  p_alias => 'F106',
  p_page_view_logging => 'YES',
  p_default_page_template=> 1507130793391900 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=> 1507221644391901 + wwv_flow_api.g_id_offset,
  p_default_region_template=> 1508800447391909 + wwv_flow_api.g_id_offset,
  p_error_template    => 1507130793391900 + wwv_flow_api.g_id_offset,
  p_checksum_salt_last_reset => '20220116205039',
  p_home_link         => 'f?p=&APP_ID.:1:&SESSION.',
  p_box_width         => '98%',
  p_flow_language     => 'en-us',
  p_flow_language_derived_from=> 'FLOW_PRIMARY_LANGUAGE',
  p_flow_image_prefix => '/i/',
  p_documentation_banner=> '',
  p_authentication    => 'CUSTOM2',
  p_login_url         => '',
  p_logout_url        => 'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:1',
  p_public_url_prefix => '',
  p_public_user       => '',
  p_dbauth_url_prefix => '',
  p_proxy_server      => '',
  p_cust_authentication_process=> '.'||to_char(1513804307391937 + wwv_flow_api.g_id_offset)||'.',
  p_cust_authentication_page=> '',
  p_custom_auth_login_url=> '',
  p_flow_version      => 'release 1.0',
  p_flow_status       => 'AVAILABLE_W_EDIT_LINK',
  p_flow_unavailable_text=> '',
  p_build_status      => 'RUN_AND_BUILD',
  p_exact_substitutions_only=> 'Y',
  p_vpd               => '',
  p_theme_id => 6,
  p_default_label_template => 1512512177391929 + wwv_flow_api.g_id_offset,
  p_default_report_template => 1511532255391926 + wwv_flow_api.g_id_offset,
  p_default_list_template => 1510921421391915 + wwv_flow_api.g_id_offset,
  p_default_menu_template => 1512720475391929 + wwv_flow_api.g_id_offset,
  p_default_button_template => 1507723430391903 + wwv_flow_api.g_id_offset,
  p_default_chart_template => 1509816643391909 + wwv_flow_api.g_id_offset,
  p_default_form_template => 1509519865391909 + wwv_flow_api.g_id_offset,
  p_default_wizard_template => 1509911710391910 + wwv_flow_api.g_id_offset,
  p_default_tabform_template => 1508800447391909 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>1508800447391909 + wwv_flow_api.g_id_offset,
  p_default_menur_template => 1509000288391909 + wwv_flow_api.g_id_offset,
  p_default_listr_template => 1509231233391909 + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'HR',
  p_last_upd_yyyymmddhh24miss => '20220116205039',
  p_required_roles             => wwv_flow_utilities.string_to_table2(''));
 
 
end;
/

---------------------------------------
prompt  ...AUTHORIZATION SCHEMES
--
 
begin
 
null;
 
end;
/

--
prompt  ...Navigation Bar Entries
--
 
begin
 
wwv_flow_api.create_icon_bar_item(
  p_id             => 1513932307391937 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_icon_sequence  => 200,
  p_icon_image     => '',
  p_icon_subtext   => 'Logout',
  p_icon_target    => '&LOGOUT_URL.',
  p_icon_image_alt => 'Logout',
  p_icon_height    => 32,
  p_icon_width     => 32,
  p_icon_height2   => 24,
  p_icon_width2    => 24,
  p_icon_bar_disp_cond      => '',
  p_icon_bar_disp_cond_type => 'CURRENT_LOOK_IS_1',
  p_begins_on_new_line=> '',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
 
end;
/

---------------------------------------
prompt  ...Application Level Processes
--
---------------------------------------
prompt  ...Application Level Items
--
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 1528413728392457 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'FSP_AFTER_LOGIN_URL',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_item_comment=> 'Used by Custom2 authentication for deep linking support');
 
null;
 
end;
/

---------------------------------------
prompt  ...Application Level Computations
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Application Tabs
--
 
begin
 
wwv_flow_api.create_tab (
  p_id=> 1515309634391950 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 10,
  p_tab_name=> 'T_BLOODBANK',
  p_tab_text => 'BloodBank',
  p_tab_step => 1,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
wwv_flow_api.create_tab (
  p_id=> 1516905942391954 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 20,
  p_tab_name=> 'T_DONOR',
  p_tab_text => 'DONOR',
  p_tab_step => 2,
  p_tab_also_current_for_pages => '3',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
wwv_flow_api.create_tab (
  p_id=> 1521917893391982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 30,
  p_tab_name=> 'T_RECIPIENT',
  p_tab_text => 'RECIPIENT',
  p_tab_step => 4,
  p_tab_also_current_for_pages => '5',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
wwv_flow_api.create_tab (
  p_id=> 1526820231391992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 40,
  p_tab_name=> 'T_BLOODINFO',
  p_tab_text => 'BLOODINFO',
  p_tab_step => 6,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
 
end;
/

---------------------------------------
prompt  ...Application Parent Tabs
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Application Level Lists of Values
--
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 1515620998391953 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'Report Row Per Page',
  p_lov_query=> '.'||to_char(1515620998391953 + wwv_flow_api.g_id_offset)||'.');
 
null;
 
end;
/

---------------------------------------
prompt  ...Application Trees
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Application Level Lists of Values Entries
--
 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>1515729358391953 + wwv_flow_api.g_id_offset,
  p_lov_id=>1515620998391953 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>10,
  p_lov_disp_value=>'10',
  p_lov_return_value=>'10',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>1515803846391954 + wwv_flow_api.g_id_offset,
  p_lov_id=>1515620998391953 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>20,
  p_lov_disp_value=>'15',
  p_lov_return_value=>'15',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>1515926336391954 + wwv_flow_api.g_id_offset,
  p_lov_id=>1515620998391953 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>30,
  p_lov_disp_value=>'20',
  p_lov_return_value=>'20',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>1516007929391954 + wwv_flow_api.g_id_offset,
  p_lov_id=>1515620998391953 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>40,
  p_lov_disp_value=>'30',
  p_lov_return_value=>'30',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>1516102970391954 + wwv_flow_api.g_id_offset,
  p_lov_id=>1515620998391953 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>50,
  p_lov_disp_value=>'50',
  p_lov_return_value=>'50',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>1516232334391954 + wwv_flow_api.g_id_offset,
  p_lov_id=>1515620998391953 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>60,
  p_lov_disp_value=>'100',
  p_lov_return_value=>'100',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>1516321604391954 + wwv_flow_api.g_id_offset,
  p_lov_id=>1515620998391953 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>70,
  p_lov_disp_value=>'200',
  p_lov_return_value=>'200',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>1516402866391954 + wwv_flow_api.g_id_offset,
  p_lov_id=>1515620998391953 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>80,
  p_lov_disp_value=>'500',
  p_lov_return_value=>'500',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>1516516622391954 + wwv_flow_api.g_id_offset,
  p_lov_id=>1515620998391953 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>90,
  p_lov_disp_value=>'1000',
  p_lov_return_value=>'1000',
  p_lov_data_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_static_lov_data (
  p_id=>1516604545391954 + wwv_flow_api.g_id_offset,
  p_lov_id=>1515620998391953 + wwv_flow_api.g_id_offset,
  p_lov_disp_sequence=>100,
  p_lov_disp_value=>'5000',
  p_lov_return_value=>'5000',
  p_lov_data_comment=> '');
 
null;
 
end;
/

---------------------------------------
prompt  ...Page Groups
--
 
begin
 
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 1: BloodBank
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 1,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'BloodBank',
  p_step_title=> 'BloodBank',
  p_step_sub_title => 'BloodBank',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'HR',
  p_last_upd_yyyymmddhh24miss => '20220116174101',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>1,p_text=>h);
end;
 
end;
/

declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 1515511597391953 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Breadcrumbs',
  p_plug_template=> 1509000288391909+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'REGION_POSITION_01',
  p_plug_source  => s,
  p_plug_source_type=> 'M'|| to_char(1515027320391946 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 1512720475391929+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> 'Unable to show breadcrumb.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'<h1>Kustava is an initiative to connect, digitize and streamline the workflow of blood banks across the nation.</h1>'||chr(10)||
'<h2>After donating blood, the body works to replenish the blood loss. This simulates the production of new blood cells and in turn, helps in maintaining good health.</h2>'||chr(10)||
'<h1><b>TYPES OF DONATION</b></h1>'||chr(10)||
'<h2>The human body contains five liters of blood, which is made up of sever';

s:=s||'al useful components i.e. <b>Whole blood, Platelet,</b> and <b>Plasma</b>.'||chr(10)||
'</h2>'||chr(10)||
'<h2>Each type of component has several medical uses and can be used for different medical treatments. Your blood donation determines the best donation for you to make.</h2>'||chr(10)||
'<h2>For <b>plasma</b> and <b>platelet</b> donation you must have donated whole blood in past two years.</h2> '||chr(10)||
'<h4><b>What is it?</b>'||chr(10)||
'Blood Co';

s:=s||'llected straight from the donor after its donation usually separated  into red blood cells, platelets and plasma.<h4>'||chr(10)||
'<h4><b>Who can donate?</b>You need to be 18-65 years old, weigh 45 kg or more and be fit and health.</h4>'||chr(10)||
'<h4><b>Used For?</b>Stomach Disease, kidney disease, childbirth, operations, blood loss, trauma, cancer, blood diseases, haemophilia, anemia, heart disease.</h4>'||chr(10)||
'<h4><b>Last';

s:=s||'s For?</b>Red cells can be stored for 42 days.</h4>'||chr(10)||
'<h4><b>How long does it take?</b>15 minutes to donate.</h4>'||chr(10)||
'<h4><b>How often can I donate?</b>Every 12 weeks.</h4> '||chr(10)||
''||chr(10)||
''||chr(10)||
' ';

wwv_flow_api.create_page_plug (
  p_id=> 1542228637548118 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Kaustava Blood Bank',
  p_plug_template=> 1508800447391909+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 11,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'AFTER_SHOW_ITEMS',
  p_plug_source  => s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 1547501934587715 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 1,
  p_button_sequence=> 10,
  p_button_plug_id => 1515511597391953+wwv_flow_api.g_id_offset,
  p_button_name    => 'NEXT',
  p_button_image   => '#WORKSPACE_IMAGES#bd',
  p_button_image_alt=> 'Next >',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_image_attributes=>'blood',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>1547728019587720 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_branch_action=> 'f?p=&FLOW_ID.:2:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>1547501934587715+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>1543900655569979 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_branch_action=> 'f?p=&FLOW_ID.:2:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>1543706174569979+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 1
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 2: DONOR
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 2,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'DONOR',
  p_step_title=> 'DONOR',
  p_step_sub_title => 'DONOR',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'HR',
  p_last_upd_yyyymmddhh24miss => '20220116180459',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>2,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||chr(10)||
'"DONORID",'||chr(10)||
'"FIRSTNAME",'||chr(10)||
'"LASTNAME",'||chr(10)||
'"BLOODTYPE",'||chr(10)||
'"ADDRESS",'||chr(10)||
'"EMAIL",'||chr(10)||
'"PHONE",'||chr(10)||
'"MEDICAL_REPORT"'||chr(10)||
' from   "DONOR" '||chr(10)||
'where '||chr(10)||
'(   '||chr(10)||
' instr(upper("FIRSTNAME"),upper(nvl(:P2_REPORT_SEARCH,"FIRSTNAME"))) > 0  or'||chr(10)||
' instr(upper("LASTNAME"),upper(nvl(:P2_REPORT_SEARCH,"LASTNAME"))) > 0  or'||chr(10)||
' instr(upper("MEDICAL_REPORT"),upper(nvl(:P2_REPORT_SEARCH,"MEDICAL_REPORT"))) > 0  or'||chr(10)||
' instr(upper("ADDRESS"),upper';

s:=s||'(nvl(:P2_REPORT_SEARCH,"ADDRESS"))) > 0  or'||chr(10)||
' instr(upper("EMAIL"),upper(nvl(:P2_REPORT_SEARCH,"EMAIL"))) > 0  or'||chr(10)||
' instr(upper("PHONE"),upper(nvl(:P2_REPORT_SEARCH,"PHONE"))) > 0  or'||chr(10)||
' instr(upper("BLOODTYPE"),upper(nvl(:P2_REPORT_SEARCH,"BLOODTYPE"))) > 0 '||chr(10)||
')'||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 1517018733391956 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_name=> 'DONOR',
  p_template=> 1508800447391909+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> 'Unable to show report.',
  p_query_row_template           => 1511532255391926+ wwv_flow_api.g_id_offset,
  p_query_headings_type          => 'COLON_DELMITED_LIST',
  p_query_num_rows               => '15',
  p_query_options                => 'DERIVED_REPORT_COLUMNS',
  p_query_no_data_found          => 'No data found.',
  p_query_num_rows_item          => 'P2_ROWS',
  p_query_num_rows_type          => 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max          => '500',
  p_pagination_display_position  => 'BOTTOM_RIGHT',
  p_csv_output                   => 'Y',
  p_csv_output_link_text         => 'Spread Sheet',
  p_query_asc_image              => 'themes/theme_6/sort_arrow_down.gif',
  p_query_asc_image_attr         => 'width="13" height="12"',
  p_query_desc_image             => 'themes/theme_6/sort_arrow_up.gif',
  p_query_desc_image_attr        => 'width="13" height="12"',
  p_required_patch               => '' + wwv_flow_api.g_id_offset,
  p_comment                      => '');
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1517103952391957 + wwv_flow_api.g_id_offset,
  p_region_id=> 1517018733391956 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'DONORID',
  p_column_display_sequence=> 1,
  p_column_heading=> '<br />',
  p_column_hit_highlight=> '&P2_REPORT_SEARCH.',
  p_column_link=> 'f?p=&APP_ID.:3:#APP_SESSION#::::P3_DONORID:#DONORID#',
  p_column_linktext=> '<img src="#IMAGE_PREFIX#themes/theme_6/ed-item.gif" alt="Edit" />',
  p_column_alignment=> 'RIGHT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'DONOR',
  p_ref_column_name=> 'DONORID',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1517218162391957 + wwv_flow_api.g_id_offset,
  p_region_id=> 1517018733391956 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'FIRSTNAME',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Firstname',
  p_column_hit_highlight=> '&P2_REPORT_SEARCH.',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 1,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'DONOR',
  p_ref_column_name=> 'FIRSTNAME',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1517322614391957 + wwv_flow_api.g_id_offset,
  p_region_id=> 1517018733391956 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'LASTNAME',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Lastname',
  p_column_hit_highlight=> '&P2_REPORT_SEARCH.',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'DONOR',
  p_ref_column_name=> 'LASTNAME',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1517419905391957 + wwv_flow_api.g_id_offset,
  p_region_id=> 1517018733391956 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'BLOODTYPE',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Bloodtype',
  p_column_hit_highlight=> '&P2_REPORT_SEARCH.',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'DONOR',
  p_ref_column_name=> 'BLOODTYPE',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1517506265391959 + wwv_flow_api.g_id_offset,
  p_region_id=> 1517018733391956 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'ADDRESS',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Address',
  p_column_hit_highlight=> '&P2_REPORT_SEARCH.',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'DONOR',
  p_ref_column_name=> 'ADDRESS',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1517625534391959 + wwv_flow_api.g_id_offset,
  p_region_id=> 1517018733391956 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'EMAIL',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Email',
  p_column_hit_highlight=> '&P2_REPORT_SEARCH.',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'DONOR',
  p_ref_column_name=> 'EMAIL',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1517711818391959 + wwv_flow_api.g_id_offset,
  p_region_id=> 1517018733391956 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'PHONE',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Phone',
  p_column_hit_highlight=> '&P2_REPORT_SEARCH.',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'DONOR',
  p_ref_column_name=> 'PHONE',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1517831838391959 + wwv_flow_api.g_id_offset,
  p_region_id=> 1517018733391956 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'MEDICAL_REPORT',
  p_column_display_sequence=> 8,
  p_column_heading=> 'Medical Report',
  p_column_hit_highlight=> '&P2_REPORT_SEARCH.',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'DONOR',
  p_ref_column_name=> 'MEDICAL_REPORT',
  p_column_comment               => '');
end;
end;
/
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 1518721547391971 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'Breadcrumbs',
  p_plug_template=> 1509000288391909+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'REGION_POSITION_01',
  p_plug_source  => s,
  p_plug_source_type=> 'M'|| to_char(1515027320391946 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 1512720475391929+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> 'Unable to show breadcrumb.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 1552608402731509 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 10,
  p_button_plug_id => 1518721547391971+wwv_flow_api.g_id_offset,
  p_button_name    => 'NEXT',
  p_button_image   => '#WORKSPACE_IMAGES#bld',
  p_button_image_alt=> 'Next >',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_image_attributes=>'blood',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 1518100609391962 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 10,
  p_button_plug_id => 1517018733391956+wwv_flow_api.g_id_offset,
  p_button_name    => 'RESET',
  p_button_image   => 'template:'||to_char(1507723430391903+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Reset',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 1521430371391982 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 10,
  p_button_plug_id => 1517018733391956+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(1507723430391903+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=106:3:&SESSION.::NO:3',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>1518508091391971 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_branch_action=> 'f?p=&APP_ID.:2:&SESSION.',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1517924749391959 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_REPORT_SEARCH',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 1517018733391956+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_prompt=>'Search',
  p_display_as=> 'TEXT_WITH_ENTER_SUBMIT',
  p_lov_columns=> null,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1518031213391959 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_ROWS',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 1517018733391956+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default => '15',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Display',
  p_source=>'15',
  p_source_type=> 'STATIC',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'Report Row Per Page',
  p_lov => '.'||to_char(1515620998391953 + wwv_flow_api.g_id_offset)||'.',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1518217951391968 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_GO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 1517018733391956+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default => 'Go',
  p_source=>'Go',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(1507723430391903 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'reset_pagination';

wwv_flow_api.create_page_process(
  p_id     => 1518301892391968 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'RESET_PAGINATION',
  p_process_name=> 'Reset Pagination',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to reset pagination.',
  p_process_when=>'Go,P2_REPORT_SEARCH',
  p_process_when_type=>'REQUEST_IN_CONDITION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'P2_REPORT_SEARCH,P2_ROWS';

wwv_flow_api.create_page_process(
  p_id     => 1518404140391968 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_ITEMS',
  p_process_name=> 'Reset report search',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to clear cache.',
  p_process_when_button_id=>1518100609391962 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 2
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 3: DONOR
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 3,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'DONOR',
  p_step_title=> 'DONOR',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'HR',
  p_last_upd_yyyymmddhh24miss => '20220116185929',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>3,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>3,p_text=>ph);
end;
 
end;
/

declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 1519005050391976 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'DONOR',
  p_plug_template=> 1508800447391909+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'AFTER_SHOW_ITEMS',
  p_plug_source  => s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 1521625486391982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Breadcrumbs',
  p_plug_template=> 1509000288391909+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'REGION_POSITION_01',
  p_plug_source  => s,
  p_plug_source_type=> 'M'|| to_char(1515027320391946 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 1512720475391929+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> 'Unable to show breadcrumb.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 1569408008053170 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 10,
  p_button_plug_id => 1521625486391982+wwv_flow_api.g_id_offset,
  p_button_name    => 'NEXT',
  p_button_image   => '#WORKSPACE_IMAGES#imp',
  p_button_image_alt=> 'Next >',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_image_attributes=>'Bloodbank',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 1519109792391976 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 10,
  p_button_plug_id => 1519005050391976+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(1507723430391903+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 1519329605391976 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 30,
  p_button_plug_id => 1519005050391976+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(1507723430391903+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P3_DONORID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 1519411110391976 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 40,
  p_button_plug_id => 1519005050391976+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(1507723430391903+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P3_DONORID',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 1519229392391976 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 20,
  p_button_plug_id => 1519005050391976+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(1507723430391903+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>1519601563391979 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_branch_action=> 'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1519720443391981 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_DONORID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 1519005050391976+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Donorid',
  p_source=>'DONORID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'No help available for this page item.';

wwv_flow_api.create_page_item(
  p_id=>1519825268391981 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_FIRSTNAME',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 1519005050391976+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Firstname',
  p_source=>'FIRSTNAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'No help available for this page item.';

wwv_flow_api.create_page_item(
  p_id=>1520001370391981 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_LASTNAME',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 2,
  p_item_plug_id => 1519005050391976+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Lastname',
  p_source=>'LASTNAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'No help available for this page item.';

wwv_flow_api.create_page_item(
  p_id=>1520202786391981 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_MEDICAL_REPORT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 3,
  p_item_plug_id => 1519005050391976+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Medical Report',
  p_source=>'MEDICAL_REPORT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'No help available for this page item.';

wwv_flow_api.create_page_item(
  p_id=>1520408974391981 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_ADDRESS',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 4,
  p_item_plug_id => 1519005050391976+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Address',
  p_source=>'ADDRESS',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'No help available for this page item.';

wwv_flow_api.create_page_item(
  p_id=>1520632755391981 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_EMAIL',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 5,
  p_item_plug_id => 1519005050391976+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Email',
  p_source=>'EMAIL',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'No help available for this page item.';

wwv_flow_api.create_page_item(
  p_id=>1520830748391981 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_PHONE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 6,
  p_item_plug_id => 1519005050391976+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Phone',
  p_source=>'PHONE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'No help available for this page item.';

wwv_flow_api.create_page_item(
  p_id=>1521013561391981 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_BLOODTYPE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 7,
  p_item_plug_id => 1519005050391976+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Bloodtype',
  p_source=>'BLOODTYPE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:DONOR:P3_DONORID:DONORID';

wwv_flow_api.create_page_process(
  p_id     => 1521200440391982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_process_sequence=> 1,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from DONOR',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to fetch row.',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:DONOR:P3_DONORID:DONORID|IUD';

wwv_flow_api.create_page_process(
  p_id     => 1521307252391982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_process_sequence=> 1,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of DONOR',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table DONOR.',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 3
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 4: RECIPIENT
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 4,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'RECIPIENT',
  p_step_title=> 'RECIPIENT',
  p_step_sub_title => 'RECIPIENT',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'HR',
  p_last_upd_yyyymmddhh24miss => '20220116204821',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>4,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select'||chr(10)||
'"RECIPIENTID",'||chr(10)||
'"FIRSTNAME", '||chr(10)||
'"LASTNAME",'||chr(10)||
'"ADDRESS",'||chr(10)||
'"PHONE",'||chr(10)||
'"MEDICAL_REPORT",'||chr(10)||
'"BLOODTYPE",'||chr(10)||
'"EMAIL"'||chr(10)||
' from   "RECIPIENT" '||chr(10)||
'where '||chr(10)||
'(   '||chr(10)||
' instr(upper("FIRSTNAME"),upper(nvl(:P4_REPORT_SEARCH,"FIRSTNAME"))) > 0  or'||chr(10)||
' instr(upper("LASTNAME"),upper(nvl(:P4_REPORT_SEARCH,"LASTNAME"))) > 0  or'||chr(10)||
' instr(upper("MEDICAL_REPORT"),upper(nvl(:P4_REPORT_SEARCH,"MEDICAL_REPORT"))) > 0  or'||chr(10)||
' instr';

s:=s||'(upper("ADDRESS"),upper(nvl(:P4_REPORT_SEARCH,"ADDRESS"))) > 0  or'||chr(10)||
' instr(upper("EMAIL"),upper(nvl(:P4_REPORT_SEARCH,"EMAIL"))) > 0  or'||chr(10)||
' instr(upper("PHONE"),upper(nvl(:P4_REPORT_SEARCH,"PHONE"))) > 0  or'||chr(10)||
' instr(upper("BLOODTYPE"),upper(nvl(:P4_REPORT_SEARCH,"BLOODTYPE"))) > 0 '||chr(10)||
')'||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 1522014899391982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_name=> 'RECIPIENT',
  p_template=> 1508800447391909+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> 'Unable to show report.',
  p_customized                   => '0',
  p_translate_title              => 'Y',
  p_query_row_template           => 1511532255391926+ wwv_flow_api.g_id_offset,
  p_query_headings_type          => 'COLON_DELMITED_LIST',
  p_query_num_rows               => '15',
  p_query_options                => 'DERIVED_REPORT_COLUMNS',
  p_query_no_data_found          => 'No data found.',
  p_query_num_rows_item          => 'P4_ROWS',
  p_query_num_rows_type          => 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max          => '500',
  p_pagination_display_position  => 'BOTTOM_RIGHT',
  p_csv_output                   => 'Y',
  p_csv_output_link_text         => 'Spread Sheet',
  p_query_asc_image              => 'themes/theme_6/sort_arrow_down.gif',
  p_query_asc_image_attr         => 'width="13" height="12"',
  p_query_desc_image             => 'themes/theme_6/sort_arrow_up.gif',
  p_query_desc_image_attr        => 'width="13" height="12"',
  p_required_patch               => '' + wwv_flow_api.g_id_offset,
  p_comment                      => '');
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1522718065391984 + wwv_flow_api.g_id_offset,
  p_region_id=> 1522014899391982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'RECIPIENTID',
  p_column_display_sequence=> 7,
  p_column_heading=> '<br />',
  p_column_hit_highlight=> '&P4_REPORT_SEARCH.',
  p_column_link=> 'f?p=&APP_ID.:5:#APP_SESSION#::::P5_RECIPIENTID:#RECIPIENTID#',
  p_column_linktext=> '<img src="#IMAGE_PREFIX#themes/theme_6/ed-item.gif" alt="Edit" />',
  p_column_alignment=> 'RIGHT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'RECIPIENT',
  p_ref_column_name=> 'RECIPIENTID',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1522402508391984 + wwv_flow_api.g_id_offset,
  p_region_id=> 1522014899391982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'FIRSTNAME',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Firstname',
  p_column_hit_highlight=> '&P4_REPORT_SEARCH.',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'RECIPIENT',
  p_ref_column_name=> 'FIRSTNAME',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1522121633391984 + wwv_flow_api.g_id_offset,
  p_region_id=> 1522014899391982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'LASTNAME',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Lastname',
  p_column_hit_highlight=> '&P4_REPORT_SEARCH.',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 1,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'RECIPIENT',
  p_ref_column_name=> 'LASTNAME',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1522313842391984 + wwv_flow_api.g_id_offset,
  p_region_id=> 1522014899391982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'ADDRESS',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Address',
  p_column_hit_highlight=> '&P4_REPORT_SEARCH.',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'RECIPIENT',
  p_ref_column_name=> 'ADDRESS',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1522511581391984 + wwv_flow_api.g_id_offset,
  p_region_id=> 1522014899391982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'PHONE',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Phone',
  p_column_hit_highlight=> '&P4_REPORT_SEARCH.',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'RECIPIENT',
  p_ref_column_name=> 'PHONE',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1522215792391984 + wwv_flow_api.g_id_offset,
  p_region_id=> 1522014899391982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'MEDICAL_REPORT',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Medical Report',
  p_column_hit_highlight=> '&P4_REPORT_SEARCH.',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'RECIPIENT',
  p_ref_column_name=> 'MEDICAL_REPORT',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1522606891391984 + wwv_flow_api.g_id_offset,
  p_region_id=> 1522014899391982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'BLOODTYPE',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Bloodtype',
  p_column_hit_highlight=> '&P4_REPORT_SEARCH.',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'RECIPIENT',
  p_ref_column_name=> 'BLOODTYPE',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1522805373391984 + wwv_flow_api.g_id_offset,
  p_region_id=> 1522014899391982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'EMAIL',
  p_column_display_sequence=> 8,
  p_column_heading=> 'Email',
  p_column_hit_highlight=> '&P4_REPORT_SEARCH.',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'RECIPIENT',
  p_ref_column_name=> 'EMAIL',
  p_column_comment               => '');
end;
end;
/
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 1523731300391985 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Breadcrumbs',
  p_plug_template=> 1509000288391909+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'REGION_POSITION_01',
  p_plug_source  => s,
  p_plug_source_type=> 'M'|| to_char(1515027320391946 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 1512720475391929+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> 'Unable to show breadcrumb.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 1554105416740159 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 4,
  p_button_sequence=> 10,
  p_button_plug_id => 1523731300391985+wwv_flow_api.g_id_offset,
  p_button_name    => 'NEXT',
  p_button_image   => '#APP_IMAGES#mask',
  p_button_image_alt=> 'Next >',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_image_attributes=>'Bloodbank',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 1523113871391985 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 4,
  p_button_sequence=> 10,
  p_button_plug_id => 1522014899391982+wwv_flow_api.g_id_offset,
  p_button_name    => 'RESET',
  p_button_image   => 'template:'||to_char(1507723430391903+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Reset',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 1526329054391987 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 4,
  p_button_sequence=> 10,
  p_button_plug_id => 1522014899391982+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(1507723430391903+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=106:5:&SESSION.::NO:5',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>1523509281391985 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_branch_action=> 'f?p=&APP_ID.:4:&SESSION.',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1522913827391984 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_REPORT_SEARCH',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 1522014899391982+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_prompt=>'Search',
  p_display_as=> 'TEXT_WITH_ENTER_SUBMIT',
  p_lov_columns=> null,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1523030030391984 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_ROWS',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 1522014899391982+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default => '15',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Display',
  p_source=>'15',
  p_source_type=> 'STATIC',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'Report Row Per Page',
  p_lov => '.'||to_char(1515620998391953 + wwv_flow_api.g_id_offset)||'.',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1523210261391985 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_GO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 1522014899391982+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default => 'Go',
  p_source=>'Go',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(1507723430391903 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'reset_pagination';

wwv_flow_api.create_page_process(
  p_id     => 1523320019391985 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 4,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'RESET_PAGINATION',
  p_process_name=> 'Reset Pagination',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to reset pagination.',
  p_process_when=>'Go,P4_REPORT_SEARCH',
  p_process_when_type=>'REQUEST_IN_CONDITION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'P4_REPORT_SEARCH,P4_ROWS';

wwv_flow_api.create_page_process(
  p_id     => 1523412938391985 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 4,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_ITEMS',
  p_process_name=> 'Reset report search',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to clear cache.',
  p_process_when_button_id=>1523113871391985 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 4
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 5: RECIPIENT
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 5,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'RECIPIENT',
  p_step_title=> 'RECIPIENT',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'HR',
  p_last_upd_yyyymmddhh24miss => '20220116205039',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>5,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>5,p_text=>ph);
end;
 
end;
/

declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 1524022603391985 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_plug_name=> 'RECIPIENT',
  p_plug_template=> 1508800447391909+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'AFTER_SHOW_ITEMS',
  p_plug_source  => s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 1526512929391992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_plug_name=> 'Breadcrumbs',
  p_plug_template=> 1509000288391909+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'REGION_POSITION_01',
  p_plug_source  => s,
  p_plug_source_type=> 'M'|| to_char(1515027320391946 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 1512720475391929+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> 'Unable to show breadcrumb.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 1573505631080792 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 10,
  p_button_plug_id => 1526512929391992+wwv_flow_api.g_id_offset,
  p_button_name    => 'NEXT',
  p_button_image   => '#WORKSPACE_IMAGES#locate',
  p_button_image_alt=> 'Next >',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_image_attributes=>'Bloodbank',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 1524129287391985 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 10,
  p_button_plug_id => 1524022603391985+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(1507723430391903+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 1524320946391985 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 30,
  p_button_plug_id => 1524022603391985+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(1507723430391903+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P5_RECIPIENTID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 1524428263391985 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 40,
  p_button_plug_id => 1524022603391985+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(1507723430391903+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P5_RECIPIENTID',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 1524226445391985 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 20,
  p_button_plug_id => 1524022603391985+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(1507723430391903+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>1524513919391985 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_branch_action=> 'f?p=&APP_ID.:4:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1524626201391987 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_RECIPIENTID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 1524022603391985+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Recipientid',
  p_source=>'RECIPIENTID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'No help available for this page item.';

wwv_flow_api.create_page_item(
  p_id=>1524707470391987 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_FIRSTNAME',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 1524022603391985+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Firstname',
  p_source=>'FIRSTNAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'No help available for this page item.';

wwv_flow_api.create_page_item(
  p_id=>1524908864391987 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_LASTNAME',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 2,
  p_item_plug_id => 1524022603391985+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Lastname',
  p_source=>'LASTNAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'No help available for this page item.';

wwv_flow_api.create_page_item(
  p_id=>1525110226391987 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_MEDICAL_REPORT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 3,
  p_item_plug_id => 1524022603391985+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Medical Report',
  p_source=>'MEDICAL_REPORT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'No help available for this page item.';

wwv_flow_api.create_page_item(
  p_id=>1525317063391987 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_ADDRESS',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 4,
  p_item_plug_id => 1524022603391985+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Address',
  p_source=>'ADDRESS',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'No help available for this page item.';

wwv_flow_api.create_page_item(
  p_id=>1525521072391987 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_EMAIL',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 5,
  p_item_plug_id => 1524022603391985+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Email',
  p_source=>'EMAIL',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'No help available for this page item.';

wwv_flow_api.create_page_item(
  p_id=>1525723705391987 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_PHONE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 6,
  p_item_plug_id => 1524022603391985+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Phone',
  p_source=>'PHONE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'No help available for this page item.';

wwv_flow_api.create_page_item(
  p_id=>1525914502391987 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_BLOODTYPE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 7,
  p_item_plug_id => 1524022603391985+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Bloodtype',
  p_source=>'BLOODTYPE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:RECIPIENT:P5_RECIPIENTID:RECIPIENTID';

wwv_flow_api.create_page_process(
  p_id     => 1526129215391987 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 1,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from RECIPIENT',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to fetch row.',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:RECIPIENT:P5_RECIPIENTID:RECIPIENTID|IUD';

wwv_flow_api.create_page_process(
  p_id     => 1526205544391987 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 5,
  p_process_sequence=> 1,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of RECIPIENT',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table RECIPIENT.',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 5
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 6: BLOODINFO
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 6,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'BLOODINFO',
  p_step_title=> 'BLOODINFO',
  p_step_sub_title => 'BLOODINFO',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'HR',
  p_last_upd_yyyymmddhh24miss => '20220116172109',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>6,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select '||chr(10)||
'"TYPE",'||chr(10)||
'"RECIEVES",'||chr(10)||
'"GIVES"'||chr(10)||
' from   "BLOODINFO" '||chr(10)||
'where '||chr(10)||
'(   '||chr(10)||
' instr(upper("TYPE"),upper(nvl(:P6_REPORT_SEARCH,"TYPE"))) > 0  or'||chr(10)||
' instr(upper("GIVES"),upper(nvl(:P6_REPORT_SEARCH,"GIVES"))) > 0  or'||chr(10)||
' instr(upper("RECIEVES"),upper(nvl(:P6_REPORT_SEARCH,"RECIEVES"))) > 0 '||chr(10)||
')'||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 1526906657391992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 6,
  p_name=> 'BLOODINFO',
  p_template=> 1508800447391909+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> 'Unable to show report.',
  p_query_row_template           => 1511532255391926+ wwv_flow_api.g_id_offset,
  p_query_headings_type          => 'COLON_DELMITED_LIST',
  p_query_num_rows               => '15',
  p_query_options                => 'DERIVED_REPORT_COLUMNS',
  p_query_no_data_found          => 'No data found.',
  p_query_num_rows_item          => 'P6_ROWS',
  p_query_num_rows_type          => 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max          => '500',
  p_pagination_display_position  => 'BOTTOM_RIGHT',
  p_csv_output                   => 'Y',
  p_csv_output_link_text         => 'Spread Sheet',
  p_query_asc_image              => 'themes/theme_6/sort_arrow_down.gif',
  p_query_asc_image_attr         => 'width="13" height="12"',
  p_query_desc_image             => 'themes/theme_6/sort_arrow_up.gif',
  p_query_desc_image_attr        => 'width="13" height="12"',
  p_required_patch               => '' + wwv_flow_api.g_id_offset,
  p_comment                      => '');
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1527014424391992 + wwv_flow_api.g_id_offset,
  p_region_id=> 1526906657391992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'TYPE',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Type',
  p_column_hit_highlight=> '&P6_REPORT_SEARCH.',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 1,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'BLOODINFO',
  p_ref_column_name=> 'TYPE',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1527131308391996 + wwv_flow_api.g_id_offset,
  p_region_id=> 1526906657391992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'RECIEVES',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Recieves',
  p_column_hit_highlight=> '&P6_REPORT_SEARCH.',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'BLOODINFO',
  p_ref_column_name=> 'RECIEVES',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1527204260391996 + wwv_flow_api.g_id_offset,
  p_region_id=> 1526906657391992 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'GIVES',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Gives',
  p_column_hit_highlight=> '&P6_REPORT_SEARCH.',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_pk_col_source=> s,
  p_ref_schema=> 'HR',
  p_ref_table_name=> 'BLOODINFO',
  p_ref_column_name=> 'GIVES',
  p_column_comment               => '');
end;
end;
/
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 1528119996391998 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 6,
  p_plug_name=> 'Breadcrumbs',
  p_plug_template=> 1509000288391909+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'REGION_POSITION_01',
  p_plug_source  => s,
  p_plug_source_type=> 'M'|| to_char(1515027320391946 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 1512720475391929+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> 'Unable to show breadcrumb.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 1536115122468567 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 6,
  p_button_sequence=> 10,
  p_button_plug_id => 1528119996391998+wwv_flow_api.g_id_offset,
  p_button_name    => 'FINISH',
  p_button_image   => '#WORKSPACE_IMAGES#l',
  p_button_image_alt=> 'Finish',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_image_attributes=>'Bloodbank',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 1527505501391996 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 6,
  p_button_sequence=> 10,
  p_button_plug_id => 1526906657391992+wwv_flow_api.g_id_offset,
  p_button_name    => 'RESET',
  p_button_image   => 'template:'||to_char(1507723430391903+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Reset',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>1527909311391998 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_branch_action=> 'f?p=&APP_ID.:6:&SESSION.',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 10,
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1527314970391996 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_REPORT_SEARCH',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 1526906657391992+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_prompt=>'Search',
  p_display_as=> 'TEXT_WITH_ENTER_SUBMIT',
  p_lov_columns=> null,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1527409458391996 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_ROWS',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 1526906657391992+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default => '15',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Display',
  p_source=>'15',
  p_source_type=> 'STATIC',
  p_display_as=> 'COMBOBOX',
  p_named_lov=> 'Report Row Per Page',
  p_lov => '.'||to_char(1515620998391953 + wwv_flow_api.g_id_offset)||'.',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1527627857391996 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_name=>'P6_GO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 1526906657391992+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default => 'Go',
  p_source=>'Go',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(1507723430391903 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'reset_pagination';

wwv_flow_api.create_page_process(
  p_id     => 1527726937391996 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 6,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'RESET_PAGINATION',
  p_process_name=> 'Reset Pagination',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to reset pagination.',
  p_process_when=>'Go,P6_REPORT_SEARCH',
  p_process_when_type=>'REQUEST_IN_CONDITION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'P6_REPORT_SEARCH,P6_ROWS';

wwv_flow_api.create_page_process(
  p_id     => 1527817244391998 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 6,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_ITEMS',
  p_process_name=> 'Reset report search',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to clear cache.',
  p_process_when_button_id=>1527505501391996 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 6
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 101: Login
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h := null;
ph := null;
wwv_flow_api.create_page(
  p_id     => 101,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Login',
  p_alias  => 'LOGIN',
  p_step_title=> 'Login',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'AUTO_FIRST_ITEM',
  p_help_text => '',
  p_html_page_header => '',
  p_step_template => 1506705394391896+ wwv_flow_api.g_id_offset,
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => '',
  p_last_upd_yyyymmddhh24miss => '20220116170823',
  p_page_is_public_y_n=> 'N',
  p_page_comment  => '');
 
end;
 
end;
/

declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 1514205317391940 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'Login',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'AFTER_SHOW_ITEMS',
  p_plug_source  => s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1514321781391943 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_USERNAME',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 1514205317391940+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_prompt=>'User Name',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 2,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1514413016391945 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_PASSWORD',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 1514205317391940+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_prompt=>'Password',
  p_display_as=> 'PASSWORD_WITH_ENTER_SUBMIT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 1512512177391929+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1514527023391945 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_LOGIN',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 1514205317391940+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_item_default => 'Login',
  p_prompt=>'Login',
  p_source=>'LOGIN',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(1507723430391903 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||chr(10)||
'owa_util.mime_header(''text/html'', FALSE);'||chr(10)||
'owa_cookie.send('||chr(10)||
'    name=>''LOGIN_USERNAME_COOKIE'','||chr(10)||
'    value=>lower(:P101_USERNAME));'||chr(10)||
'exception when others then null;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 1514707747391945 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Set Username Cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'wwv_flow_custom_auth_std.login('||chr(10)||
'    P_UNAME       => :P101_USERNAME,'||chr(10)||
'    P_PASSWORD    => :P101_PASSWORD,'||chr(10)||
'    P_SESSION_ID  => v(''APP_SESSION''),'||chr(10)||
'    P_FLOW_PAGE   => :APP_ID||'':1'''||chr(10)||
'    );';

wwv_flow_api.create_page_process(
  p_id     => 1514612259391945 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Login',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'101';

wwv_flow_api.create_page_process(
  p_id     => 1514900973391946 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'Clear Page(s) Cache',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||chr(10)||
'    v varchar2(255) := null;'||chr(10)||
'    c owa_cookie.cookie;'||chr(10)||
'begin'||chr(10)||
'   c := owa_cookie.get(''LOGIN_USERNAME_COOKIE'');'||chr(10)||
'   :P101_USERNAME := c.vals(1);'||chr(10)||
'exception when others then null;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 1514803630391945 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get Username Cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 101
--
 
begin
 
null;
end;
null;
 
end;
/

---------------------------------------
prompt  ...Lists
--
---------------------------------------
prompt  ...Breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 1515027320391946 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> ' Breadcrumb');
 
wwv_flow_api.create_menu_option (
  p_id=> 1515419830391953 + wwv_flow_api.g_id_offset,
  p_menu_id=> 1515027320391946 + wwv_flow_api.g_id_offset,
  p_parent_id               => 0,
  p_option_sequence=> 10,
  p_short_name     => 'BloodBank',
  p_long_name      => '',
  p_link           => 'f?p=106:1:&SESSION.',
  p_page_id        => 1,
  p_also_current_for_pages  => '');
 
wwv_flow_api.create_menu_option (
  p_id=> 1518604907391971 + wwv_flow_api.g_id_offset,
  p_menu_id=> 1515027320391946 + wwv_flow_api.g_id_offset,
  p_parent_id               => 0,
  p_option_sequence=> 20,
  p_short_name     => 'DONOR',
  p_long_name      => '',
  p_link           => 'f?p=106:2:&SESSION.',
  p_page_id        => 2,
  p_also_current_for_pages  => '');
 
wwv_flow_api.create_menu_option (
  p_id=> 1521523683391982 + wwv_flow_api.g_id_offset,
  p_menu_id=> 1515027320391946 + wwv_flow_api.g_id_offset,
  p_parent_id               => 1518604907391971 + wwv_flow_api.g_id_offset,
  p_option_sequence=> 30,
  p_short_name     => 'DONOR',
  p_long_name      => '',
  p_link           => 'f?p=106:3:&SESSION.',
  p_page_id        => 3,
  p_also_current_for_pages  => '');
 
wwv_flow_api.create_menu_option (
  p_id=> 1523609335391985 + wwv_flow_api.g_id_offset,
  p_menu_id=> 1515027320391946 + wwv_flow_api.g_id_offset,
  p_parent_id               => 0,
  p_option_sequence=> 40,
  p_short_name     => 'RECIPIENT',
  p_long_name      => '',
  p_link           => 'f?p=106:4:&SESSION.',
  p_page_id        => 4,
  p_also_current_for_pages  => '');
 
wwv_flow_api.create_menu_option (
  p_id=> 1526401155391987 + wwv_flow_api.g_id_offset,
  p_menu_id=> 1515027320391946 + wwv_flow_api.g_id_offset,
  p_parent_id               => 1523609335391985 + wwv_flow_api.g_id_offset,
  p_option_sequence=> 50,
  p_short_name     => 'RECIPIENT',
  p_long_name      => '',
  p_link           => 'f?p=106:5:&SESSION.',
  p_page_id        => 5,
  p_also_current_for_pages  => '');
 
wwv_flow_api.create_menu_option (
  p_id=> 1528021056391998 + wwv_flow_api.g_id_offset,
  p_menu_id=> 1515027320391946 + wwv_flow_api.g_id_offset,
  p_parent_id               => 0,
  p_option_sequence=> 60,
  p_short_name     => 'BLOODINFO',
  p_long_name      => '',
  p_link           => 'f?p=106:6:&SESSION.',
  p_page_id        => 6,
  p_also_current_for_pages  => '');
 
null;
 
end;
/

---------------------------------------
prompt  ...Page Templates for application: 106
--
prompt  ......Page template 1506507826391881
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#'||chr(10)||
'';

c2:=c2||'<table class="t6PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
' <td align="right">#CUSTOMIZE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterTop">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterBottom">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table class="t6PageBody" cellpadding="0" cellspacing="0" width="100%" summary="">'||chr(10)||
' <tr>'||chr(10)||
'  <td colspan="2" class="t6ApplicationLogo">#LOGO#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6UserName">&APP_USER. <span class="t6NavBar">#NAVIGATION_BAR#</span></td>'||chr(10)||
'  <td align="right" valign="bottom"><table cellpadding="0" cellspacing="0" summary=""><tr>#PARENT_TAB_CELLS#</tr></table>'||chr(10)||
'  </td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td colsp';

c3:=c3||'an="2" class="t6Tabs"><table cellpadding="0" cellspacing="0" summary=""><tr>#TAB_CELLS#</tr></table></td>'||chr(10)||
' </tr>'||chr(10)||
'</table>'||chr(10)||
'<div>#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" class="t6SidebarLayout" width="100%" summary="" height="70%">'||chr(10)||
' <tr>'||chr(10)||
'   <td valign="top" width="150">'||chr(10)||
'     <table cellpadding="0" cellspacing="0" width="100%" class="t6SidebarColor" summary="">'||chr(10)||
'   ';

c3:=c3||'     <tr>'||chr(10)||
'          <td><br /></td>'||chr(10)||
'          <td width="5" valign="top" background="#IMAGE_PREFIX#themes/theme_6/SidebarRightSide.gif"><img src="#IMAGE_PREFIX#themes/theme_6/SidebarUpperRight.gif" alt="" /></td>'||chr(10)||
'        </tr>'||chr(10)||
'        <tr>'||chr(10)||
'         <td valign="top" class="t6SideBarNav">#REGION_POSITION_02#</td>'||chr(10)||
'         <td width="5" background="#IMAGE_PREFIX#themes/theme_6/SidebarRightSide.gif"><';

c3:=c3||'br /></td>'||chr(10)||
'       </tr>'||chr(10)||
'       <tr bgcolor="#FFFFFF">'||chr(10)||
'          <td valign="top"><img width="100%" height="14" src="#IMAGE_PREFIX#themes/theme_6/SidebarBottomMiddle.gif" alt="" /></td> '||chr(10)||
'          <td valign="top" width="5"><img src="#IMAGE_PREFIX#themes/theme_6/SidebarBottomRight.gif" alt="" /><br /><br /></td>'||chr(10)||
'       </tr>  '||chr(10)||
'     </table>'||chr(10)||
'   </td>'||chr(10)||
'   <td class="t6ContentBody" valign="top">#SUCCES';

c3:=c3||'S_MESSAGE##NOTIFICATION_MESSAGE##BOX_BODY##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'  <td align="right" valign="top" class="t6ContentBody">#REGION_POSITION_03#<br /></td>'||chr(10)||
' </tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1506507826391881 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t6success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td><a href="#TAB_LINK#" class="t6standardtabcurrent">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><a href="#TAB_LINK#" class="t6standardtabnoncurrent">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentLeft.gif" alt="" /></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentBackground.gif); background-repeat:repeat;"><a class="t6parenttabcurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentRight.gif" alt="" /></td>',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentLeft.gif" alt="" /></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentBackground.gif); background-repeat:repeat;"><a class="t6parenttabnoncurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentRight.gif" alt="" /></td>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#">#TEXT#</a>#EDIT#&nbsp;&nbsp;',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 6,
  p_theme_class_id => 18,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 1506609632391896
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t6PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
' <td align="right">#CUSTOMIZE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterTop">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterBottom">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table class="t6PageBody" cellpadding="0" cellspacing="0" width="100%" summary="">'||chr(10)||
' <tr>'||chr(10)||
'  <td colspan="2" class="t6ApplicationLogo">#LOGO#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6UserName">&APP_USER. <span class="t6NavBar">#NAVIGATION_BAR#</span></td>'||chr(10)||
'  <td align="right" valign="bottom"><table cellpadding="0" cellspacing="0"><tr>#TAB_CELLS#</tr></table></td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td colspan="2" class="t6Verti';

c3:=c3||'calBar"><img src="#IMAGE_PREFIX#themes/theme_6/ParentTabBase.gif" alt="" /></td>'||chr(10)||
' </tr>'||chr(10)||
'</table>'||chr(10)||
'<div>#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" class="t6SidebarLayout" width="100%" summary="" height="70%">'||chr(10)||
'<tr>'||chr(10)||
'  <td valign="top" width="150">'||chr(10)||
'    <table cellpadding="0" cellspacing="0" width="100%" class="t6SidebarColor" summary="">'||chr(10)||
'       <tr>'||chr(10)||
'         <td><br />';

c3:=c3||'</td>'||chr(10)||
'         <td width="15" valign="top" background="#IMAGE_PREFIX#themes/theme_6/SidebarRightSide.gif"><img src="#IMAGE_PREFIX#themes/theme_6/SidebarUpperRight.gif" alt=""></td>'||chr(10)||
'       </tr>'||chr(10)||
'       <tr>'||chr(10)||
'        <td valign="top" class="t6SideBarNav">#REGION_POSITION_02#</td>'||chr(10)||
'        <td width="15" background="#IMAGE_PREFIX#themes/theme_6/SidebarRightSide.gif"><br /></td>'||chr(10)||
'      </tr>'||chr(10)||
'      <tr bg';

c3:=c3||'color="#FFFFFF">'||chr(10)||
'         <td valign="top"><img width="100%" height="14" src="#IMAGE_PREFIX#themes/theme_6/SidebarBottomMiddle.gif" alt=""></td> '||chr(10)||
'         <td valign="top" width="15"><img src="#IMAGE_PREFIX#themes/theme_6/SidebarBottomRight.gif" alt=""><br /><br /></td>'||chr(10)||
'      </tr>  '||chr(10)||
'    </table>'||chr(10)||
'  </td>'||chr(10)||
'  <td class="t6ContentBody" valign="top"><div class="t6messages">#GLOBAL_NOTIFICATION##SUCCESS';

c3:=c3||'_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'  <td align="right" valign="top" class="t6ContentBody">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1506609632391896 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t6success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentLeft.gif" alt="LeftCurrentTab"></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentBackground.gif); background-repeat:repeat;"><a class="t6parenttabcurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentRight.gif" alt="RightCurrentTab"></td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentLeft.gif" alt="LeftNonCurrentTab"></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentBackground.gif); background-repeat:repeat;"><a class="t6parenttabnoncurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentRight.gif" alt="RightNonCurrentTab"></td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 6,
  p_theme_class_id => 16,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 1506808661391900
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'</head>'||chr(10)||
'<body bgcolor="#FFFFFF" #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#'||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<br />#BOX_BODY#';

wwv_flow_api.create_template(
  p_id=> 1506808661391900 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Popup',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t6success"><img src="#IMAGE_PREFIX#themes/theme_6/success_w.gif" width="24" height="23" alt="" class="success" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '<table cellpadding="0" cellspacing="0" border="0">'||chr(10)||
'<tr><td>&nbsp;&nbsp;</td>'||chr(10)||
'#BAR_BODY#'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%"',
  p_theme_id  => 6,
  p_theme_class_id => 4,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 1506914428391900
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t6PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
' <td align="right">#CUSTOMIZE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterTop">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterBottom">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table class="t6PageBody" cellpadding="0" cellspacing="0" width="100%" summary="">'||chr(10)||
' <tr>'||chr(10)||
'  <td colspan="2" class="t6ApplicationLogo">#LOGO#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6UserName">&APP_USER. <span class="t6NavBar">#NAVIGATION_BAR#</span></td>'||chr(10)||
'  <td align="right" valign="bottom"><br /></td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td colspan="2" class="t6VerticalBar"><img src="#IMAGE_PREFIX#themes/theme_6/ParentTabBase.';

c3:=c3||'gif" alt="" /></td>'||chr(10)||
' </tr>'||chr(10)||
'</table>'||chr(10)||
'<div>#REGION_POSITION_01#</div>'||chr(10)||
'<table border="0" cellpadding="0" cellspacing="0" class="t6SidebarLayout" width="100%" summary="" height="80%">'||chr(10)||
' <tr>'||chr(10)||
'   <td valign="top" width="150">'||chr(10)||
'     <table cellpadding="0" cellspacing="0" width="100%" class="t6SidebarColor" summary="">'||chr(10)||
'        <tr>'||chr(10)||
'          <td><br /></td>'||chr(10)||
'          <td width="5" valign="top" background="#';

c3:=c3||'IMAGE_PREFIX#themes/theme_6/SidebarRightSide.gif"><img src="#IMAGE_PREFIX#themes/theme_6/SidebarUpperRight.gif"></td>'||chr(10)||
'        </tr>'||chr(10)||
'        <tr>'||chr(10)||
'         <td valign="top" class="t6SideBarNav">#REGION_POSITION_02#</td>'||chr(10)||
'         <td width="5" background="#IMAGE_PREFIX#themes/theme_6/SidebarRightSide.gif">&nbsp;</td>'||chr(10)||
'       </tr>'||chr(10)||
'       <tr bgcolor="#FFFFFF">'||chr(10)||
'          <td valign="top">'||chr(10)||
'            <';

c3:=c3||'img width="100%" height="14" src="#IMAGE_PREFIX#themes/theme_6/SidebarBottomMiddle.gif"></td> '||chr(10)||
'          <td valign="top" width="5"><img src="#IMAGE_PREFIX#themes/theme_6/SidebarBottomRight.gif"><br /><br /></td>'||chr(10)||
'       </tr>  '||chr(10)||
'     </table>'||chr(10)||
'   </td>'||chr(10)||
'   <td class="t6ContentBody" valign="top"><div class="t6messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION';

c3:=c3||'_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'   <td align="right" valign="top" class="t6ContentBody">#REGION_POSITION_03#<br /></td>'||chr(10)||
' </tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1506914428391900 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t6success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 6,
  p_theme_class_id => 17,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 1506705394391896
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'    #HEAD#'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||chr(10)||
'</html>'||chr(10)||
'';

c3:=c3||'<div class="t6messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<table class="t6Login" align="center" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t6Body">#BOX_BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 1506705394391896 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Login',
  p_body_title=> '#BODY_TITLE#',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%"',
  p_theme_id  => 6,
  p_theme_class_id => 6,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 1507011239391900
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t6PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
' <td align="right">#CUSTOMIZE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterTop">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterBottom">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table class="t6PageBody" cellpadding="0" cellspacing="0" border="0" width="100%" summary="">'||chr(10)||
' <tr>'||chr(10)||
'  <td colspan="2" class="t6ApplicationLogo">#LOGO#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6UserName">&APP_USER. <span class="t6NavBar">#NAVIGATION_BAR#</span></td>'||chr(10)||
'  <td align="right" valign="bottom"><table cellpadding="0" cellspacing="0" summary=""><tr>#PARENT_TAB_CELLS#</tr></table>'||chr(10)||
'  </td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'';

c3:=c3||'  <td colspan="2" class="t6Tabs"><table cellpadding="0" cellspacing="0" summary=""><tr>#TAB_CELLS#</tr></table></td>'||chr(10)||
' </tr>'||chr(10)||
' <tr><td colspan="2">#REGION_POSITION_01#</td></tr> '||chr(10)||
'</table>'||chr(10)||
'<table width="100%" summary="" height="70%">'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6ContentBody">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##BOX_BODY##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGIO';

c3:=c3||'N_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'  <td align="right" valign="top" class="t6ContentBody">#REGION_POSITION_03#<br /></td>'||chr(10)||
' </tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1507011239391900 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t6success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td><a href="#TAB_LINK#" class="t6standardtabcurrent">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><a href="#TAB_LINK#" class="t6standardtabnoncurrent">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentLeft.gif" alt=""></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentBackground.gif); background-repeat:repeat;"><a class="t6standardtabcurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentRight.gif" alt="RightCurrentTab"></td>'||chr(10)||
'',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentLeft.gif" alt=""></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentBackground.gif); background-repeat:repeat;"><a class="t6standardtabnoncurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentRight.gif" alt=""></td>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 6,
  p_theme_class_id => 2,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '8');
end;
 
null;
 
end;
/

prompt  ......Page template 1507130793391900
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t6PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
' <td align="right">#CUSTOMIZE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterTop">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterBottom">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table class="t6PageBody" cellpadding="0" cellspacing="0" width="100%" summary="">'||chr(10)||
' <tr>'||chr(10)||
'  <td colspan="2" class="t6ApplicationLogo">#LOGO#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6UserName">&APP_USER. <span class="t6NavBar">#NAVIGATION_BAR#</span></td>'||chr(10)||
'  <td align="right" valign="bottom"><table cellpadding="0" cellspacing="0" summary=""><tr>#TAB_CELLS#</tr></table></td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td colspan="2" cla';

c3:=c3||'ss="t6VerticalBar"><img src="#IMAGE_PREFIX#themes/theme_6/ParentTabBase.gif" alt="" /></td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'   <td colspan="2">#REGION_POSITION_01#</td>'||chr(10)||
' </tr>'||chr(10)||
'</table>'||chr(10)||
'<table width="100%" summary="" height="80%">'||chr(10)||
' <tr>'||chr(10)||
'  <td valign="top" class="t6ContentBody"><div class="t6messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04##R';

c3:=c3||'EGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'  <td align="right" valign="top" class="t6ContentBody">#REGION_POSITION_03#<br /></td>'||chr(10)||
' </tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1507130793391900 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t6success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentLeft.gif" alt="" /></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentBackground.gif); background-repeat:repeat;"><a class="t6parenttabcurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabCurrentRight.gif" alt="" /></td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentLeft.gif" alt="" /></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentBackground.gif); background-repeat:repeat;"><a class="t6parenttabnoncurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/StandardTabNonCurrentRight.gif" alt="" /></td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#">#TEXT#</a>#EDIT#&nbsp;&nbsp;',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 1507221644391901
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'</head>'||chr(10)||
'<body bgcolor="#FFFFFF" #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||chr(10)||
'</html>';

c3:=c3||'#LOGO#'||chr(10)||
'<br />#BOX_BODY#';

wwv_flow_api.create_template(
  p_id=> 1507221644391901 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Printer Friendly',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="success"><img src="#IMAGE_PREFIX#themes/theme_6/success_w.gif" width="24" height="23" alt="" class="t6success" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '<table cellpadding="0" cellspacing="0" border="0">'||chr(10)||
'<tr><td>&nbsp;&nbsp;</td>'||chr(10)||
'#BAR_BODY#'||chr(10)||
'</tr>'||chr(10)||
'</table>',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%"',
  p_theme_id  => 6,
  p_theme_class_id => 5,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '3');
end;
 
null;
 
end;
/

prompt  ......Page template 1507314976391901
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t6PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
' <td align="right">#CUSTOMIZE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterTop">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td class="t6FooterBottom">&nbsp;</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table class="t6PageBody" cellpadding="0" cellspacing="0" width="100%" summary="">'||chr(10)||
'    <tr>'||chr(10)||
'        <td colspan="2" class="t6ApplicationLogo">#LOGO#</td>'||chr(10)||
'    </tr>'||chr(10)||
'    <tr>'||chr(10)||
'        <td class="t6UserName">&APP_USER. <span class="t6NavBar">#NAVIGATION_BAR#</span></td>'||chr(10)||
'        <td align="right" valign="bottom"><br /></td>'||chr(10)||
'    </tr>'||chr(10)||
'    <tr>'||chr(10)||
'        <td colspan="2" class="t6VerticalBar"><img src="#IMA';

c3:=c3||'GE_PREFIX#themes/theme_6/ParentTabBase.gif" alt="" /></td>'||chr(10)||
'    </tr>'||chr(10)||
'    <tr>'||chr(10)||
'        <td colspan="2">#REGION_POSITION_01#</td>'||chr(10)||
'    </tr>'||chr(10)||
'</table>'||chr(10)||
'<table width="100%" cellpadding="0" cellspacing="0" width="100%" summary="" height="80%">'||chr(10)||
'    <tr>'||chr(10)||
'        <td valign="top" class="t6ContentBody"><div class="t6messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION';

c3:=c3||'_POSITION_04##REGION_POSITION_02##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'        <td align="right" valign="top" class="t6ContentBody">#REGION_POSITION_03#<br /></td>'||chr(10)||
'    </tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 1507314976391901 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t6success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t6notification">#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 6,
  p_theme_class_id => 3,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

---------------------------------------
prompt  ...Button Templates
--
prompt  ......Button Template 1507502232391903
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" cellspacing="0" border="0" class="t6ButtonAlternative3" summary="">'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6ButtonAlternative3Left" width="3"></td>'||chr(10)||
'  <td style="padding-left: 10px; padding-right: 10px;"><a href="#LINK#">#LABEL#</a></td>'||chr(10)||
'  <td class="t6ButtonAlternative3Right" width="3"></td>'||chr(10)||
' </tr>'||chr(10)||
'</table>'||chr(10)||
'';

wwv_flow_api.create_button_templates (
  p_id=>1507502232391903 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 3',
  p_translate_this_template => 'N',
  p_theme_id  => 6,
  p_theme_class_id => 2,
  p_template_comment       => '');
end;
/
prompt  ......Button Template 1507618436391903
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t6ButtonAlternative2">#LABEL#</a>';

wwv_flow_api.create_button_templates (
  p_id=>1507618436391903 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 2',
  p_translate_this_template => 'N',
  p_theme_id  => 6,
  p_theme_class_id => 5,
  p_template_comment       => '');
end;
/
prompt  ......Button Template 1507723430391903
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t6Button">#LABEL#</a>';

wwv_flow_api.create_button_templates (
  p_id=>1507723430391903 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button',
  p_translate_this_template => 'N',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_template_comment       => '');
end;
/
prompt  ......Button Template 1507424013391903
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t6ButtonAlternative1">#LABEL#</a>';

wwv_flow_api.create_button_templates (
  p_id=>1507424013391903 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 1',
  p_translate_this_template => 'N',
  p_theme_id  => 6,
  p_theme_class_id => 4,
  p_template_comment       => '');
end;
/
---------------------------------------
prompt  ...Region Templates
--
prompt  ......Region Template 1509911710391910
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6WizardRegion" id="#REGION_ID#" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t6Header">#TITLE#</td>'||chr(10)||
'<td class="t6ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr><td colspan="2" class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1509911710391910 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Wizard Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 6,
  p_theme_class_id => 12,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1509911710391910 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1507815884391903
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ButtonRegionWithTitle" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
'<tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1507815884391903 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Button Region with Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 6,
  p_theme_class_id => 4,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1507815884391903 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1507902131391906
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ListRegionWithIcon" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td colspan="2" class="t6Header">#TITLE#</td></tr>'||chr(10)||
'<tr><td colspan="2" class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr>'||chr(10)||
'  <td valign="top"><img src="#IMAGE_PREFIX#themes/theme_6/ChartList.gif" />&nbsp;</td>'||chr(10)||
'  <td valign="top" class="t6Body">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1507902131391906 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Chart List',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 29,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1507902131391906 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1508003609391906
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6BracketedRegion" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
'<tr><td align="center" style="border:1px solid black;border-bottom:none;">&nbsp;</td></tr>'||chr(10)||
'<tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'<tr><td class="t6Body">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1508003609391906 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Bracketed Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 18,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1508003609391906 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1508119532391906
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6RegionWithoutButtonsAndTitle" id="#REGION_ID#" summary="">'||chr(10)||
' <tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1508119532391906 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Region without Buttons and Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 6,
  p_theme_class_id => 19,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1508119532391906 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1508214574391906
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ReportsRegion100PercentWidth" id="#REGION_ID#" summary="">'||chr(10)||
' <tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
' <tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
' <tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>'||chr(10)||
''||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1508214574391906 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region 100% Width',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 13,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1508214574391906 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1508301897391906
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ButtonRegionWithoutTitle" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1508301897391906 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Button Region without Title',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 17,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1508301897391906 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1508423413391906
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table width="100%" cellpadding="0" cellspacing="0" border="0"  class="t6HideAndShowRegion" id="#REGION_ID#" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t6Header">#TITLE#<a href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#htmldb/builder/rollup_plus_dgray.gif'',''#IMAGE_PREFIX#htmldb/builder/rollup_minus_dgray.gif'');" class="htmldbHideShowMinLink"><img src="#IMAGE_PRE';

t:=t||'FIX#htmldb/builder/rollup_plus_dgray.gif" id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><div class="t6Hide" id="region#REGION_SEQUENCE_ID#">'||chr(10)||
'<div class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</div>'||chr(10)||
'<div class="t6Body">#BODY#</div>'||chr(10)||
'</div></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1508423413391906 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Hide and Show Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1508423413391906 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1508518914391909
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6BorderlessRegion" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
'<tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1508518914391909 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Borderless Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 6,
  p_theme_class_id => 7,
  p_plug_heading_bgcolor   => '#f7f7e7',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => 'Red Theme');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1508518914391909 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1508624283391909
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ListRegionWithIcon" id="#REGION_ID#" summary="">'||chr(10)||
' <tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
' <tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
' <td><td class="t6Body"><img src="#IMAGE_PREFIX#themes/theme_6/provisioning_reports.gif" />#BODY#</td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1508624283391909 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'List Region with Icon',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 29,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1508624283391909 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1508711173391909
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6NavigationRegionAlternative1" id="#REGION_ID#" summary="">'||chr(10)||
' <tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
' <tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1508711173391909 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Navigation Region, Alternative 1',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 6,
  p_theme_class_id => 16,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1508711173391909 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1508800447391909
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ReportsRegion" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
'<tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1508800447391909 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 9,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1508800447391909 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1508920651391909
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6WizardRegionWithIcon" id="#REGION_ID#" summary="">'||chr(10)||
'<tr>'||chr(10)||
'  <td class="t6Header">#TITLE#</td>'||chr(10)||
'  <td class="t6ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
' <td colspan="2" class="t6Body">'||chr(10)||
'  <table width="100%" summary="">'||chr(10)||
'    <tr><td><img src="#IMAGE_PREFIX#themes/theme_6/WizardIcon.gif">&nbsp;</td><td>#BODY#</td></tr>'||chr(10)||
'  <';

t:=t||'/table>'||chr(10)||
' </td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1508920651391909 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Wizard Region with Icon',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 6,
  p_theme_class_id => 20,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1508920651391909 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1509000288391909
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div class="t6BreadcrumbRegion" id="#REGION_ID#">#BODY#</div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1509000288391909 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Breadcrumb Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 6,
  p_theme_class_id => 6,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1509000288391909 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1509120037391909
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6NavigationRegion" id="#REGION_ID#" summary="">'||chr(10)||
' <tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
' <tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1509120037391909 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Navigation Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 6,
  p_theme_class_id => 5,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1509120037391909 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1509231233391909
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ReportsRegionAlternative1" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
'<tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1509231233391909 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region, Alternative 1',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 10,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1509231233391909 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1509311441391909
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6RegionWithoutTitle" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'</table>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1509311441391909 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Region without Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 6,
  p_theme_class_id => 11,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1509311441391909 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1509407426391909
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ListRegionWithIcon" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td colspan="2" class="t6Header">#TITLE#</td></tr>'||chr(10)||
'<tr><td colspan="2" class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr>'||chr(10)||
'  <td valign="top"><img src="#IMAGE_PREFIX#themes/theme_6/ReportList.gif" alt="Reports" /></td>'||chr(10)||
'  <td valign="top" class="t6Body">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1509407426391909 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Report List',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 29,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1509407426391909 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1509519865391909
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6FormRegion" id="#REGION_ID#" summary="">'||chr(10)||
'<tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
'<tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'<tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_6/t.gif" width="400" height="1"></td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1509519865391909 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Form Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 6,
  p_theme_class_id => 8,
  p_plug_heading_bgcolor   => '#f7f7e7',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1509519865391909 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1509602907391909
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6SidebarRegion" id="#REGION_ID#" summary="">'||chr(10)||
' <tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
' <tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
' <tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1509602907391909 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Sidebar Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 6,
  p_theme_class_id => 2,
  p_plug_heading_bgcolor   => '#f7f7e7',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1509602907391909 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1509725416391909
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6SidebarRegionAlternative1" id="#REGION_ID#" summary="">'||chr(10)||
' <tr><td class="t6Header">#TITLE#</td></tr>'||chr(10)||
' <tr><td class="t6Body">#BODY#</td></tr>'||chr(10)||
' <tr><td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td></tr>'||chr(10)||
'</table>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1509725416391909 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Sidebar Region, Alternative 1',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 6,
  p_theme_class_id => 3,
  p_plug_heading_bgcolor   => '#f7f7e7',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1509725416391909 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 1509816643391909
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table class="t6ChartRegion" id="#REGION_ID#" summary="">'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6Header">#TITLE#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6ButtonHolder">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
'  <td class="t6Body">#BODY#</td>'||chr(10)||
' </tr>'||chr(10)||
'</table>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 1509816643391909 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Chart Region',
  p_plug_table_bgcolor     => '#ffffff',
  p_theme_id  => 6,
  p_theme_class_id => 30,
  p_plug_heading_bgcolor   => '#ffffff',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 1509816643391909 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

---------------------------------------
prompt  ...List Templates
--
prompt  ......List Template 1511318861391915
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<img src="#IMAGE_PREFIX#themes/theme_6/WizardDownArrow.gif" width="7" height="12" alt="Down" /><br />'||chr(10)||
'<div class="current">#TEXT#</div>';

t2:=t2||'<img src="#IMAGE_PREFIX#themes/theme_6/WizardDownArrow.gif" width="7" height="12" alt="Down" /><br />'||chr(10)||
'<div class="noncurrent">#TEXT#</div>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1511318861391915 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List',
  p_theme_id  => 6,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="t6WizardProgressList">'||chr(10)||
'<div class="noncurrent">Start</div>',
  p_list_template_after_rows=>'<div>&DONE.</div>'||chr(10)||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 1510325756391914
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="htmldbMIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="htmldbMIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>1510325756391914 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML List (Image) with Sublist',
  p_theme_id  => 6,
  p_theme_class_id => 21,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu" style="display:none;">'||chr(10)||
'<li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 1510427115391914
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><img src="#IMAGE_PREFIX#themes/theme_4/rollup_plus_dgray.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><img src="#IMAGE_PREFIX#themes/theme_4/rollup_plus_dgray.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><img src="#IMAGE_PREFIX#themes/theme_4/rollup_plus_dgray.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><img src="#IMAGE_PREFIX#themes/theme_4/rollup_plus_dgray.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>1510427115391914 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML Tree',
  p_theme_id  => 6,
  p_theme_class_id => 22,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 1510507747391915
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td class="t6current"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a></td>';

t2:=t2||'<td class="t6noncurrent"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1510507747391915 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Images with Label List',
  p_theme_id  => 6,
  p_theme_class_id => 4,
  p_list_template_before_rows=>'<table class="t6HorozontalImagesWithLabelList" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 1510602363391915
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td align="center" class="t6current"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a></td></tr>';

t2:=t2||'<tr><td align="center"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1510602363391915 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List',
  p_theme_id  => 6,
  p_theme_class_id => 5,
  p_list_template_before_rows=>'<table class="t6VerticalImagesList" summary="">',
  p_list_template_after_rows=>'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 1510727934391915
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a class="t6current" href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1510727934391915 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Ordered List',
  p_theme_id  => 6,
  p_theme_class_id => 2,
  p_list_template_before_rows=>'<ol class="t6VerticalOrderedList">',
  p_list_template_after_rows=>'</ol>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 1510825413391915
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td class="t6current"><a href="#LINK#" class="t6current">#TEXT#</a></td>';

t2:=t2||'<td class="t6noncurrent"><a href="#LINK#">#TEXT#</a></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1510825413391915 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Links List',
  p_theme_id  => 6,
  p_theme_class_id => 3,
  p_list_template_before_rows=>'<table class="t6HorizontalLinksList" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 1510921421391915
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a class="t6current" href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a class="t6noncurrent" href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1510921421391915 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="t6VerticalUnorderedListWithBullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 1511004070391915
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t6Button">#TEXT#</a>';

t2:=t2||'<a href="#LINK#" class="t6Button">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1511004070391915 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Button List',
  p_theme_id  => 6,
  p_theme_class_id => 6,
  p_list_template_before_rows=>'<div class="t6ButtonList">',
  p_list_template_after_rows=>'</div><br />',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 1511132177391915
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td><a class="t6current" href="#LINK#">#TEXT#</a></td></tr>';

t2:=t2||'<tr><td><a href="#LINK#">#TEXT#</a></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1511132177391915 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List without Bullets',
  p_theme_id  => 6,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<table class="t6VerticalUnorderedListWithoutBullets" summary="">',
  p_list_template_after_rows=>'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 1511208468391915
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td><a class="t6current" href="#LINK#">#TEXT#</a></td></tr>';

t2:=t2||'<tr><td><a href="#LINK#">#TEXT#</a></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1511208468391915 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Sidebar List',
  p_theme_id  => 6,
  p_theme_class_id => 19,
  p_list_template_before_rows=>'<table class="t6VerticalSidebarList" cellpadding="0" cellspacing="0" width="100%" summary="">',
  p_list_template_after_rows=>'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 1510112775391914
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<li class="dhtmlMenuItem"><a href="#" onclick="javascript:app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)">#TEXT#</a></li>';

t6:=t6||'<li class="dhtmlMenuItem"><a href="#" onclick="javascript:app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)">#TEXT#</a></li>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="htmldbMIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="htmldbMIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>1510112775391914 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML Menu with Sublist',
  p_theme_id  => 6,
  p_theme_class_id => 20,
  p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu" style="display:none;">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 1510222643391914
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td><img src="#IMAGE_PREFIX#themes/theme_6/ListTabCurrentLeft.gif" alt="LeftCurrentTab"></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/ListTabCurrentBackground.gif); background-repeat:repeat;"><a class="t6current" href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/ListTabCurrentRight.gif" alt="RightCurrentTab"></td>';

t2:=t2||'<td><img src="#IMAGE_PREFIX#themes/theme_6/ListTabNonCurrentLeft.gif" alt="LeftNonCurrentTab"></td>'||chr(10)||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_6/ListTabNonCurrentBackground.gif); background-repeat:repeat;"><a class="t6noncurrent" href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_6/ListTabNonCurrentRight.gif" alt="RightNonCurrentTab"></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>1510222643391914 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tabbed Navigation List',
  p_theme_id  => 6,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<table class="t6TabbedNavigationList" cellspacing="0" cellpadding="0" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 1510023014391910
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>1510023014391910 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tree List',
  p_theme_id  => 6,
  p_theme_class_id => 23,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

---------------------------------------
prompt  ...Report Templates
--
prompt  ......Row Template 1511417904391917
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t6data"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1511417904391917 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Borderless',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t6borderless">',
  p_row_template_after_rows =>'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'<tr><td class="t6bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th class="t6header" #ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</td>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'<span class="t6Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextPage.gif"></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousPage.gif"></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextSet.gif"></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousSet.gif"></a>',
  p_row_style_checked=>'#D69F72',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1511417904391917 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 1511532255391926
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t6data"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c2:=c2||'<td class="t6dataalt"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1511532255391926 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard, Alternating Row Colors',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t6standardalternatingrowcolors">',
  p_row_template_after_rows =>'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'<tr><td class="t6bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th class="t6header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_pagination_template=>'<span class="t6Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextPage.gif"></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousPage.gif"></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextSet.gif"></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousSet.gif"></a>',
  p_row_style_checked=>'#D69F72',
  p_theme_id  => 6,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1511532255391926 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 1511622948391926
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t6data"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1511622948391926 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard (PPR)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t6standard">',
  p_row_template_after_rows =>'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'<tr><td class="t6bottom">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||chr(10)||
'</table><script language=JavaScript type=text/javascript>'||chr(10)||
'<!--'||chr(10)||
'init_htmlPPRReport(''#REGION_ID#'');'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>'||chr(10)||
'</htmldb:#REGION_ID#>'||chr(10)||
'</div>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th class="t6header" #ALIGNMENT#>#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'<span class="t6Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_6/NextPage.gif" /></a>',
  p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousPage.gif" /></a>',
  p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_6/NextSet.gif" /></a>',
  p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousSet.gif" /></a>',
  p_row_style_checked=>'#D69F72',
  p_theme_id  => 6,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1511622948391926 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 1511728640391926
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t6data"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1511728640391926 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t6standard">',
  p_row_template_after_rows =>'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'<tr><td class="t6bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th class="t6header" #ALIGNMENT#>#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'<span class="t6Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextPage.gif"></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousPage.gif"></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextSet.gif"></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousSet.gif"></a>',
  p_row_style_checked=>'#D69F72',
  p_theme_id  => 6,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1511728640391926 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 1511815955391928
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<tr><th class="t6header">#COLUMN_HEADER#</th><td class="t6data">#COLUMN_VALUE#</td></tr>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1511815955391928 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t6valueattributepairs">',
  p_row_template_after_rows =>'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'<tr><td class="t6bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'<span class="t6Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextPage.gif"></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousPage.gif"></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextSet.gif"></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousSet.gif"></a>',
  p_theme_id  => 6,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1511815955391928 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'',
  p_row_template_after_last =>'<tr><td colspan="2">&nbsp;</td></tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 1512027292391928
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>#COLUMN_VALUE#</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1512027292391928 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'One Column Unordered List',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellspacing="0" cellpadding="0" width="100%" summary="">'||chr(10)||
'#TOP_PAGINATION#'||chr(10)||
'<tr><td><ul class="t6OneColumnUnorderedList">',
  p_row_template_after_rows =>'</ul></td></tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'<tr><td class="t6bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_pagination_template=>'<span class="t6Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextPage.gif"></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousPage.gif"></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextSet.gif"></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousSet.gif"></a>',
  p_theme_id  => 6,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

prompt  ......Row Template 1511906125391928
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t6data" #ALIGNMENT#>#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 1511906125391928 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Horizontal Border',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div class="t6contentcollapse"><table cellpadding="0" border="0" cellspacing="0" summary="" width="100%">#TOP_PAGINATION#</table><table class="t6bottomborderonly" border="0" cellpadding="0" cellspacing="0" summary="">',
  p_row_template_after_rows =>'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'<tr><td class="t6bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th class="t6header"  id="#COLUMN_HEADER_NAME#" #ALIGNMENT#>#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'<span class="t6Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextPage.gif"></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousPage.gif"></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/NextSet.gif"></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_6/PreviousSet.gif"></a>',
  p_row_style_checked=>'#D69F72',
  p_theme_id  => 6,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 1511906125391928 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

---------------------------------------
prompt  ...Label Templates
--
prompt  ......Field Template 1512209296391929
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 1512209296391929 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><img src="#IMAGE_PREFIX#themes/theme_6/required1.gif" alt="Required Field Icon" /><span class="t6RequiredLabel">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 6,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ......Field Template 1512332723391929
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 1512332723391929 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'No Label',
  p_template_body1=>'<span class="t6NoLabel">',
  p_template_body2=>'</span>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 6,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ......Field Template 1512405483391929
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 1512405483391929 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><span class="t6OptionalLabel">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 6,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ......Field Template 1512512177391929
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 1512512177391929 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><a class="t6OptionalLabelWithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ......Field Template 1512123311391928
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 1512123311391928 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><img src="#IMAGE_PREFIX#themes/theme_6/required1.gif" alt="Required Field Icon" /><a class="t6RequiredLabelWithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 6,
  p_theme_class_id => 2,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

---------------------------------------
prompt  ...Breadcrumb Templates
--
prompt  ......Breadcrumb Template 1512720475391929
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 1512720475391929 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Breadcrumb Menu',
  p_before_first=>'<div class="t6BreadcrumbMenu">',
  p_current_page_option=>'#NAME#',
  p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>',
  p_menu_link_attributes=>'',
  p_between_levels=>'&nbsp;&gt;&nbsp;',
  p_after_last=>'</div>',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

prompt  ......Breadcrumb Template 1512618555391929
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 1512618555391929 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Hierarchical Menu',
  p_before_first=>'<ul class="t6HierarchicalMenu">',
  p_current_page_option=>'<li><a style="font-weight:bold;" href="#LINK#">#NAME#</a></li>',
  p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>',
  p_menu_link_attributes=>'',
  p_between_levels=>'',
  p_after_last=>'</ul>',
  p_max_levels=>11,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 6,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

---------------------------------------
prompt  ...Popup List of Values Templates
--
prompt  ......Popup LOV Template 1513431326391934
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 1513431326391934 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#list_gray.gif',
  p_popup_icon_attr=>'width="13" height="13" alt="Popup Lov"',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_6/theme.css" type="text/css">'||chr(10)||
'',
  p_page_body_attr=>'onloadoad="first_field()" style="margin:0;"',
  p_before_field_text=>'<div class="t6PopupHead">',
  p_page_heading_text=>'',
  p_page_footer_text =>'',
  p_filter_width     =>'20',
  p_filter_max_width =>'100',
  p_filter_text_attr =>'',
  p_find_button_text =>'Search',
  p_find_button_image=>'',
  p_find_button_attr =>'',
  p_close_button_text=>'Close',
  p_close_button_image=>'',
  p_close_button_attr=>'',
  p_next_button_text =>'Next >',
  p_next_button_image=>'',
  p_next_button_attr =>'',
  p_prev_button_text =>'< Previous',
  p_prev_button_image=>'',
  p_prev_button_attr =>'',
  p_after_field_text=>'</div>',
  p_scrollbars=>'1',
  p_resizable=>'1',
  p_width =>'400',
  p_height=>'450',
  p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>',
  p_result_rows_per_pg=>10,
  p_before_result_set=>'<div class="t6PopupBody">',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_after_result_set   =>'</div>');
end;
null;
 
end;
/

---------------------------------------
prompt  ...Calendar Templates
--
prompt  ......Calendar Template 1513219816391932
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 1513219816391932 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar',
  p_translate_this_template=> 'Y',
  p_day_of_week_format=> '<td width="100">#IDAY#</td>',
  p_month_title_format=> '<table class="t6StandardCalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary=""  id="#REGION_SEQUENCE_ID#">'||chr(10)||
'  <tr>'||chr(10)||
'    <td align="middle" class="formRegionHeader">#IMONTH#&nbsp;#YYYY#</td>'||chr(10)||
'  </tr>'||chr(10)||
'</table>',
  p_month_open_format=> '<table class="t6StandardCalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary=""  id="#REGION_SEQUENCE_ID#">'||chr(10)||
'  <tr>'||chr(10)||
'    <td align="center"  class="formRegionHeader"><table cellspacing="2" cellpadding="2" summary="">',
  p_month_close_format=> '    </table></td>'||chr(10)||
'  </tr>'||chr(10)||
'</table>',
  p_day_title_format=> '#DD#<br/><span style="font-weight:bold">'||chr(10)||
'',
  p_day_open_format=> '<td valign="top" width="100" class="formRegionBody">'||chr(10)||
'',
  p_day_close_format=> '</span>&nbsp;</td>',
  p_today_open_format=> '<td valign="top" class="formRegionBodyCurrent">',
  p_weekend_title_format=> '<div>#DD#</div><span style="font-weight:bold">'||chr(10)||
'',
  p_weekend_open_format => '<td valign="top" class="formRegionBodyWE">'||chr(10)||
'',
  p_weekend_close_format => '<span></td>',
  p_nonday_title_format => '<div>&nbsp;</div>',
  p_nonday_open_format => '<td valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr class="formRegionHeader">',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_theme_id  => 6,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ......Calendar Template 1512814319391931
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 1512814319391931 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar, Alternative 1',
  p_translate_this_template=> 'Y',
  p_day_of_week_format=> '<td width="60">#IDY#</td>',
  p_month_title_format=> '<table class="t6StandardCalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary=""  id="#REGION_SEQUENCE_ID#">'||chr(10)||
'  <tr>'||chr(10)||
'    <td align="middle" class="formRegionHeader">#IMONTH#&nbsp;#YYYY#</td>'||chr(10)||
'  </tr>',
  p_month_open_format=> '  <tr>'||chr(10)||
'    <td align="center"  class="formRegionHeader"><table cellspacing="0" cellpadding="0" class="condensedTable" summary="">',
  p_month_close_format=> '    </table></td>'||chr(10)||
'  </tr>'||chr(10)||
'</table>',
  p_day_title_format=> '#DD#<br/><span style="font-weight:bold">'||chr(10)||
'',
  p_day_open_format=> '<td valign="top"  width="60" class="formRegionBody">'||chr(10)||
'',
  p_day_close_format=> '</span>&nbsp;</td>',
  p_today_open_format=> '<td valign="top" class="formRegionBodyCurrent">',
  p_weekend_title_format=> '<div>#DD#</div><span style="font-weight:bold">'||chr(10)||
'',
  p_weekend_open_format => '<td valign="top" class="formRegionBodyWE">'||chr(10)||
'',
  p_weekend_close_format => '<span></td>',
  p_nonday_title_format => '<div>&nbsp;</div>',
  p_nonday_open_format => '<td valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr class="formRegionHeader">',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_theme_id  => 6,
  p_theme_class_id => 2,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ......Calendar Template 1513002058391932
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 1513002058391932 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Small Calendar',
  p_translate_this_template=> 'Y',
  p_day_of_week_format=> '<td width="40" class="simpleHeadings">#IDY#</td>',
  p_month_title_format=> '<table class="t6SimpleCalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary=""  id="#REGION_SEQUENCE_ID#">'||chr(10)||
'  <tr>'||chr(10)||
'    <td align="middle" class="simpleHeader">#IMONTH#&nbsp;#YYYY#</td>'||chr(10)||
'  </tr>'||chr(10)||
'',
  p_month_open_format=> '  <tr>'||chr(10)||
'    <td align="center" class="simpleHeader"><table cellspacing="0" cellpadding="0" class="simpleTable" summary="">',
  p_month_close_format=> '    </table></td>'||chr(10)||
'  </tr>'||chr(10)||
'</table>',
  p_day_title_format=> '#DD#<br/><span style="font-weight:bold;">'||chr(10)||
'',
  p_day_open_format=> '<td valign="top" class="simpleBody">'||chr(10)||
'',
  p_day_close_format=> '</span>&nbsp;</td>',
  p_today_open_format=> '<td valign="top" class="simpleBodyCurrent">',
  p_weekend_title_format=> '<div>#DD#</div><span style="font-weight:bold;">'||chr(10)||
'',
  p_weekend_open_format => '<td valign="top" class="simpleBodyWE">'||chr(10)||
'',
  p_weekend_close_format => '<span></td>',
  p_nonday_title_format => '<div>&nbsp;</div>',
  p_nonday_open_format => '<td valign="top" class="simpleBody">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr class="formRegionHeader">',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_theme_id  => 6,
  p_theme_class_id => 3,
  p_reference_id=> null);
end;
null;
 
end;
/

---------------------------------------
prompt  ...Application Themes
--
prompt  ......Theme 1513523448391934
begin
wwv_flow_api.create_theme (
  p_id                        =>1513523448391934 + wwv_flow_api.g_id_offset,
  p_flow_id                   =>wwv_flow.g_flow_id,
  p_theme_id  => 6,
  p_theme_name=>'Southwest',
  p_default_page_template=>1507130793391900 + wwv_flow_api.g_id_offset,
  p_error_template=>1507130793391900 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>1507221644391901 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'REGION_POSITION_02',
  p_login_template            =>1506705394391896 + wwv_flow_api.g_id_offset,
  p_default_button_template   =>1507723430391903 + wwv_flow_api.g_id_offset,
  p_default_region_template   =>1508800447391909 + wwv_flow_api.g_id_offset,
  p_default_chart_template    =>1509816643391909 + wwv_flow_api.g_id_offset,
  p_default_form_template     =>1509519865391909 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>1508800447391909 + wwv_flow_api.g_id_offset,
  p_default_tabform_template  =>1508800447391909 + wwv_flow_api.g_id_offset,
  p_default_wizard_template   =>1509911710391910 + wwv_flow_api.g_id_offset,
  p_default_menur_template    =>1509000288391909 + wwv_flow_api.g_id_offset,
  p_default_listr_template    =>1509231233391909 + wwv_flow_api.g_id_offset,
  p_default_report_template   =>1511532255391926 + wwv_flow_api.g_id_offset,
  p_default_label_template    =>1512512177391929 + wwv_flow_api.g_id_offset,
  p_default_menu_template     =>1512720475391929 + wwv_flow_api.g_id_offset,
  p_default_calendar_template =>1513219816391932 + wwv_flow_api.g_id_offset,
  p_default_list_template     =>1510921421391915 + wwv_flow_api.g_id_offset,
  p_default_option_label      =>1512512177391929 + wwv_flow_api.g_id_offset,
  p_default_required_label    =>1512123311391928 + wwv_flow_api.g_id_offset);
end;
/
---------------------------------------
prompt  ...Build Options used by APPLICATION 106
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Messages Used by Application: 106
--
---------------------------------------
prompt  ...Language Maps for Application 106
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Shortcuts
--
 
begin
 
declare
  c1 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'Would you like to perform this delete action?';

wwv_flow_api.create_shortcut (
 p_id=> 1519521326391978 + wwv_flow_api.g_id_offset,
 p_flow_id=> wwv_flow.g_flow_id,
 p_shortcut_name=> 'DELETE_CONFIRM_MSG',
 p_shortcut_type=> 'TEXT_ESCAPE_JS',
 p_shortcut=> c1);
end;
 
null;
 
end;
/

---------------------------------------
prompt  ...Configurations for application106
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...WEB SERVICES (9iR2 or better)
--
---------------------------------------
prompt  ...Authorization Schemes
--
prompt  ......Authentication Schemes 1513705655391937
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1:=s1||'-DATABASE-';

s2 := null;
s3 := null;
s4 := null;
s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 1513705655391937 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE',
  p_description=>'Use database authentication (user identified by DAD).',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

prompt  ......Authentication Schemes 1513804307391937
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'return false; end;--';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 1513804307391937 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE ACCOUNT',
  p_description=>'Use database account credentials.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

prompt  ......Authentication Schemes 1513617309391937
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'-BUILTIN-';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 1513617309391937 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'HTML DB',
  p_description=>'Use internal Application Express account credentials and login page in this application.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

---------------------------------------
prompt  ...Application Entry Points
--
 
begin
 
null;
 
end;
/

commit;
commit;
begin 
execute immediate 'alter session set nls_numeric_characters='''||wwv_flow_api.g_nls_numeric_chars||'''';
end;
/
set verify on
set feedback on
prompt  ...done
