prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.10'
,p_default_workspace_id=>10824381990568525
,p_default_application_id=>104
,p_default_id_offset=>0
,p_default_owner=>'WKSP_ACADEMIC'
);
end;
/
 
prompt APPLICATION 104 - Distribución de Notas por Asignatura
--
-- Application Export:
--   Application:     104
--   Name:            Distribución de Notas por Asignatura
--   Date and Time:   19:36 Saturday November 1, 2025
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     34
--       Items:                   74
--       Validations:              1
--       Processes:               49
--       Regions:                 68
--       Buttons:                 76
--       Dynamic Actions:         30
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  3
--         Breadcrumbs:            1
--           Entries:             17
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  12
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.10
--   Instance ID:     8271764830968238
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_ACADEMIC')
,p_name=>nvl(wwv_flow_application_install.get_application_name,unistr('Distribuci\00F3n de Notas por Asignatura'))
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,unistr('DISTRIBUCI\00D3N-DE-NOTAS-POR-ASIGNATURA'))
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'FA7C7F234FF3615096A93010EDEC40F0EA1AED6ACD9C08BE6369E03F2F533A61'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(11889529464985980)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>unistr('Distribuci\00F3n de Notas por Asignatura')
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>unistr('Distribuci\00F3n de Notas por Asignatura')
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101193432Z')
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_version_scn=>39402742383964
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(104)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(11890381861985982)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(11891599839985983)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11890381861985982)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>39402739021469
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11910594250986006)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11912099707986008)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Region'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11922981359986107)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Comuna'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184917Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11935194671986486)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Facultad'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184921Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11945982392986860)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Especialidad'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184925Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11956796361987242)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Tipo Evaluacion'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184928Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11967585545987617)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Carrera'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184932Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11980887370987993)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Asignatura'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184936Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11994946930988371)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Semestre'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184940Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12009093780988746)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Estudiante'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184943Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12028108085989127)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Docente'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12045833707989512)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Carrera Asignatura'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184951Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12056675395989885)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Evaluacion'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184955Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12071368570990265)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Inscripcion'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12087468617990657)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Resultado Evaluacion'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12101033372991043)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Audit Result Evaluaciones'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12123287227991425)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(11891599839985983)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>39402739022220
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12260803949991495)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12261327149991495)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(12260803949991495)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12261747093991496)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(12260803949991495)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(12253729274991492)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
,p_version_scn=>39402739022217
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12254180075991493)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Region'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12254590033991493)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Comuna'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12254943161991493)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Facultad'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12255386412991493)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Especialidad'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12255750546991493)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Tipo Evaluacion'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12256155962991493)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Carrera'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12256553818991493)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Asignatura'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12256982571991494)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Semestre'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12257343432991494)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Estudiante'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12257776279991494)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Docente'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12258127978991494)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Carrera Asignatura'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12258567706991494)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Evaluacion'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12258906958991494)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Inscripcion'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12259315075991494)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Resultado Evaluacion'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12259740665991495)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Audit Result Evaluaciones'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12260182282991495)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000235494441547801EC544B6B135114FE72E74E629BA6C1FA806AC15A0C281850D46C0BBA29882B0517FE05D7E242E81F10C1952888B8F207B8726517BE70619180';
wwv_flow_imp.g_varchar2_table(2) := '8F463182691B2396C963F27226E6DC36D3CE70DB7B1B420B65025FCEF9CEBDE79C2F1F3361679EE43ABB09865DFE840242074207F41CE8B860E522266089882E1FD4DBAB25C0B12B983E3981CC89A32212776A168EB15550DEAF202D01349CB30805F462';
wwv_flow_imp.g_varchar2_table(3) := '6A94E146664A20953440AE8CD8255C19774191B868507C690930861378FBBD88F9FC32DEFDF80DE2A6D95DBA36DCE40CE4CAA36B69CC5E3A0E8AC4D78EB70C5A029C868D957A1B0B7F6CFCADB5C4B29CE5E279B62090B33A6249AC2B84925EA45C05A500';
wwv_flow_imp.g_varchar2_table(4) := 'C72E637A3289EBE7A73CA40F46D1A85AF850280B34BB02593486DB2FBEE1DEEB5F22924BAAE574AE14E0B61A389C18A2BB1EDAAD26EECC9CC6ECCC29815B175318AA95F0A958C5D3F92511C935AF618B442940D67B687418DC586FFDB26CE1FED5B3F878';
wwv_flow_imp.g_varchar2_table(5) := 'F38287879727E1D42BB2765F6D7D8AAFBC3D62D94D9C1B8FFB9A3247E2709B755F4D4694028C7812CF5E6565BD03A92905303306B6CFFFEB5E7E2E60EEEBD2CE08906D090AA23BE9BB73143C1027F7BCC22689D20179DFEABFE2C6B3A028E2E4DEC63BB2';
wwv_flow_imp.g_varchar2_table(6) := '5C4B40C4E0C8FE2C7A88702E9BD5574D4B004F8C21D78E7BE023FB912F55C47340CF42BE54ED6B39356909A08B412CF20378B3121558E46320971EBC2FA0870837832D52DEB780E03472E9F1C23FF4402E05EFC8F8C004C886EBD44201A1037BDF01D59B';
wwv_flow_imp.g_varchar2_table(7) := 'F01F0000FFFF7BBEF7BA000000064944415403006AE1197081DC1EBA0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(11892552628985989)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5D797055D779FF9DFB166D68979090089BF404C880242463833770834DDCC0386993A69DA6201CD725755AB7D34CA6E9A44E3369D3E9249D';
wwv_flow_imp.g_varchar2_table(2) := 'D89E64EC4E6C61B7FF642B4DA89D384E287613B0C15852580C088CC4AA7D5FDED35B6EBEEFBE2790AC85F7EEBD6FB9EF9D3BF7BBCBB9E73BE73BBFEFA7B3DE77A5406E12010308480219004FAA02924092058610900432049F549604921C308480249021';
wwv_flow_imp.g_varchar2_table(3) := 'F8A4B22490E48021047413C850AE5239691090044A1A57C6A7209240F1C13D697295044A1A57C6A7209240F1C13D697295044A1A57C6A7209240F1C13D69728D3D81C2806EF58B67B3EF6CBA545ABFBFADA2EEC57335B52F5DD852DB747EFB86A6B69DA9';
wwv_flow_imp.g_varchar2_table(4) := '205C562E33979D31602C189330A08B7994F8124855457DD3B93504D6EEDAFD6DDFAD696A7BB7B6A96D3243B10D7BE1BBE157714155941608F53780F88502FC341584CBCA65E6B233068C0563C2D88430FA0E63C6D88130441C37F247EC72AF7BA9ADB86E';
wwv_flow_imp.g_varchar2_table(5) := '7FDB2E02E29F6BF75F788364C00FE57D026B3F54EC13403D59E32091FBDC083842187D9E3163EC184392376A5F3AFF75AE9DEFF8DEE982B955A3131A3B02D15F8A0A6C51557C898AF265FACBF9289D7349E46E0C815C0D4B21FE819CF925BBE2D842F7C4';
wwv_flow_imp.g_varchar2_table(6) := '33638986AB4D79861B555FBCFA17DE75D4365D789CFE4ACE42E07F402422917B7410B847087190BA03EF534DFF18631F9D6C6EA51A5502D5BC7CAEDCE7CC3D0AA8FF41595691C83D260888D554D37FCF9F967B84BB0DD1CC326A0422C3AB45407987EA52';
wwv_flow_imp.g_varchar2_table(7) := 'EED744B30C32EDF91050D1A00A1CADD9DF76C77C518C86478540352F5EBC970C3F42C6959398B4CB647422502154FC86FEA01FD0A9BFA09AE9042243AB8512789D72951D64022141F65CFA837E2D1A3591A904AA7FE17A2619FA43022D9344EE89854026';
wwv_flow_imp.g_varchar2_table(8) := 'D544DF671F996996A904F23B47BF4BC65593C83D3111B823E423D3AC338D40B54DE7F7006237E496E00888DD415F9963A62904DAFC832B1980F877C8CD2208886F99D594994220F7D804D73CF916414F9A0914049CA37F660610C609A4AA8296289E32C3';
wwv_flow_imp.g_varchar2_table(9) := '9828A521939D030172DB5F99B1E46198401BF75F7C1810AB21376B2120B036E83B63661B26900A55D63EC67C10376D337C6788405B9B2EA5ABC0F6B8212033368400FB2E3800D29F8C21020DC27737656D280DD2977BFC105026C6DC7719C9DE90F369A1';
wwv_flow_imp.g_varchar2_table(10) := '940964247FA91B67048CFAD01081A80A94048A33018C666FD487FA0944E34032FE5E92A4DD53A460862A01DD04BA737F7B09015C4822776B2350B2E9E5ABBAFDA89B4093C2A73B536BE39D7CD67BD48952BDA5D24D20A106E42B1B7A514F303D23BE3440';
wwv_flow_imp.g_varchar2_table(11) := '20451228C188A0D71CA1EAF7A57E020991A1D760A9976008288A5DAF45BA09E4876CC2F4829E687A42551D7A6DD24D20216CB2069A0F758B851BA90C74130806581B557CD500FCE3C3F00E76C3D3DD81C9DE6BF00DF722E099886AB6564EDC4865A09B40';
wwv_flow_imp.g_varchar2_table(12) := 'AAAAFA120DB4807B0CEE6B6D449CCB1A81FCE323F08D0E60B2BF13EE1B1731D973156AC09F68665BDA1EDD044AB452FB86FBE0EEBC8480CF8B8AF2526CDD588D4F6DDB849DF76CC4A66A17721765C23736A8114CA538909B290824058102936EAA656E20';
wwv_flow_imp.g_varchar2_table(13) := '23CD894736D760F3DA15585A9083349B82DC0C27AACA0AF1F1BB37A0C6B502AADF47CDDAD5B0C0E37459C28A9CA29192824093BD41426C59E74241D6DC7D7B5A75C6FAE5A5282B2E809F9A3ADF48FF9C2EE7BE92FBC607186F3F05F7F50B9AF0B5876B37';
wwv_flow_imp.g_varchar2_table(14) := 'D98F9A8599E50914F08C836B89C5057958929F3DAB801F0EA8732DD7827C2303DA79FAC1479D6DEE2B719A45B9596858BD1CF555CB5094BB48231D3FE338D37552FDDAF204E226899D58947B7BF270BCBCCC3428425053E6E5DB9BE2A33E1477B633D3D3';
wwv_flow_imp.g_varchar2_table(15) := 'B0E7C18D78EA630D78B46E053EB171255DD7E34FB7D5694D24C7E1B837154DBDB05E62D6275020A0A19E9991A69D6F77E0A62C3B2B1308E971FC80D703EF401732883C4F3E5C8FCAC5B3C9B8A624074FEE6800138CE3AABE49569D57029313F08D0E06A7';
wwv_flow_imp.g_varchar2_table(16) := '10A8C94CD6D19FE509A43882C419190B6F9E27A002A3E31310213D6600D7282ACD1FFDC1DDD5C8C97070D09C924BCF766D5A038ECB3A7345F251DF6AE2F2FBD477BAA875D6B9C6E2D1218725E33482F509E40C12A87F78742E7FCE0A1B9A70C34FB58F92';
wwv_flow_imp.g_varchar2_table(17) := '967EF319F779F21665604D69CECDB0F92ED695E5615146BAD6279A118708C81DEDC9BEEB70282A1EA9ABC0D38F6EC2737F721F1A1F5887A585D9989A46E0FC66E85AF8C6F204825060CFCE47EFE010AEF50F63A18D2A1F345FB8AA45B1671768676E5AB8';
wwv_flow_imp.g_varchar2_table(18) := '135E5698A7DD8773585A9CAF75DC59772A3E376B3CBABBBF7A195EFBCBEDF8E6EFAFC11FAD2BC6EFADCAC117EF5B8E9F3D711FFE7E6703EC0868139DD375A7D2B0E2D9FA0422D41DF9A5002D28FF7FEB397CD0357B744551E0F507F0D6A98BB8DEDD0B47';
wwv_flow_imp.g_varchar2_table(19) := '6E31146768B8AF32AD80E09163DE5EA80B1E8C14D2F54F8CC24B9DF015C57978EED17528CB9EBDB86D53043E5B538227B7D75207DE076FDF8D601A163F2605818462435AF147E087C09193E734A25CE8ECC7F5C1315CE91BC6E9ABDD3878B415573A7B60';
wwv_flow_imp.g_varchar2_table(20) := '4BCF82239FDFC685B6099B1D2C9DFD43DA7D38876BBD839A0EEB717CEEF7F0F96B3B6BA9F9127C39AF3C56BF04CB8B72B5E62C196AA1A420107B4B2162A497BB60CFCAC56522CADBA7CEE3D0BB27F166F319349FFD0013933E388BCA9156BA92A3CF1085';
wwv_flow_imp.g_varchar2_table(21) := '3AD40323E338DBB57013C84A673B87313CEE86E2BCD58752BD6E386C366C5C92C5511614AA88705765A91647A5D19F7661FC10B7149286408C20D7444EAA893296AD455AC90A380B4A89344B915E56010EB32FCAE768B3C491B7580B3B70F40C463DF3AF';
wwv_flow_imp.g_varchar2_table(22) := '110F4FF8F0A323A7B4B8533A7CA3FA7C585694032607DFDF4E5616656B51D42458934B2A02695EA183A026CD96B108F69C22D817E5516D9141A1F3EF5C7B39F24A30E6F6E0B99F9F405BF7C8ACC817BA47F1ECCF8EC13DE90537814A1ACD258562098713';
wwv_flow_imp.g_varchar2_table(23) := '977B87C15304A1A0054F1D7DC11123EB2D18D1020FAD4F201A3E6B9DD8C11EED150EEF60F7EDCF433DDA3B4320DD291F39F28AA9B62AC7B8C78B970FBD87675F7F0F3F6D69C7811397F00C916AFFA113F0F8025A1CEE844FE9F159A10EB9D7EFC7A5410F';
wwv_flow_imp.g_varchar2_table(24) := 'DFDE564E5FEBD7E2B09E7661E183750944CEE7A1F378C71978BADA89345D24DDE109CD3A7BBA2F63E2EA79F8C76E759EEDD4C4A52FAD8223A710BDA3933876B60327DA2EA36FCCAB85F1338EF3617FF3340287BD74EC329F169496AE719CBAD28D299D05';
wwv_flow_imp.g_varchar2_table(25) := '235BE0A16509E4E9EA80976A125E5DDFBC7E35B6DFB91E0F85295B37DE81EA55CB906613F0F45C01BF7436E52B6EFE1C054BC01DF28CA5AB91F19135DA3587F1B3A978D3CFDC9C31B10E1C3F8F575ABAA63F9A717D65C48BBFFEC1310A53A8192C45326C';
wwv_flow_imp.g_varchar2_table(26) := '9624100F9B79D26E2D91E0C19A2A5494E4A38456CF1787294B0BB2B17155191EA85B0B41A36E6F7F27B566FE59FE14760784CD3E2B7CAE00EE1771DC7FFDDF77F1859F9CC2E99E090CBAFDF0F855B40F4FE23F5BBBB1EB3BBF42CFD0181C854B301F19E7';
wwv_flow_imp.g_varchar2_table(27) := '4A3B91C32C49206E766C34E4A923121801B7303B132585051A7978AD6ABCFD94F61E5038677E75D6DB7F43D3651B983C5C6BD9B3F2F0AB931DF8D40B87B0E59B3F47DD375EC323CFBE816F1C3C0E2F14A42F5905AEAD582711C4A80D962450C03381ECCC';
wwv_flow_imp.g_varchar2_table(28) := '4C7287FEE28FB82771E0D7CDE8ECED47669A13CB4B0A5151561C962C2BA165105A8DE7D96726528056DED91241A33F67F1522249853685C044B16566C341D304698B97694DA1326DF4C63A5617C58A05E0D570BBCDA6DB743F2D411C6A7E1F019F1F7F7C';
wwv_flow_imp.g_varchar2_table(29) := '7F0DBEFC89CD787CDB3A34DE5F1D96FCF9B6F5F8C73FBC171F6BA09579BF8F3AF11D336C51D232B429046DE272F1728D40B6CC1C50BB8564DB2C4920A34E387FBD17FCFAC78E86D5B8A32CFC45D4E9F9DA6D0AEEA92CC18655E5DADA16AFC2873585A04D';
wwv_flow_imp.g_varchar2_table(30) := '33F480A71EA8FD83D5B7942450CF6070A2D055926BC87F6DDDC3E81A08A6C51DFBF009D445B5563B780A82F50C191167E59424D038F57F18F7DC743B9F74C9D9CE21BCF27FCD6032F22B1C9FDBBA1E5F78A8362CE115F9471B5C28CAC98256730D74EAB2';
wwv_flow_imp.g_varchar2_table(31) := '2111945292402AF581187C21049F2216B7D78F1F1F390327F5C3FEEB735BF1FC27D7E36FEF5D867D9BCAC392CFDF558E7FD95185D7FEE27EDCED2A8777A817FCA3C8880D49008594249051DC4F5E1FA4D5FD49ECFBE806D496DC5A138B34DD454E05FFB6';
wwv_flow_imp.g_varchar2_table(32) := '739DA6E61DEED5CE9639840C95040A0111C9696074428B5EBB844656DA95FE4351A61DE585D9E0A909FDA9C44F53124807F66E6FF0958F1C037DA8E9D9E667666823B9E96156B99604B28AA712D44E49A004758C55CCB22481845030E6F1E06447D74DE9';
wwv_flow_imp.g_varchar2_table(33) := '0FF3776156718C55ECB424816C8B7231E1F6A0B5EDD24DE91F09766CAD027CB2D8694902390BCBB55F6138689192172B93C519562C47E4044A9052DAB272838B9419D90962516A9A615902DD7497CED964D66F7AEB0CA6E4E8C5F9DF24E4B833459D799B';
wwv_flow_imp.g_varchar2_table(34) := 'C277D627506859428F0F2F5EEFC194F446D487D2B704A2C7C644D7B13E810C209CB9621DF837630692487955EB13C8401336D3FB91D72AA7BBC770E24650CEF6B96726B7C05DEFB8EFA61EEB8F79667EEC6A01D5847B647D021968C2667A23F27ECD577E';
wwv_flow_imp.g_varchar2_table(35) := 'FC363EFBE2614D9E7EF5E4CCE416B87BB37D50D399D2BDD43D00FE21E4022A09FBC8FA048A630DC49F88E1A98488BD1BB299A720583FF8EAEBB288934904851812284AC58D630DC43F0E6402445CB290CDFC9E34EBF3CBF7A0D9F588D3490005EB132801';
wwv_flow_imp.g_varchar2_table(36) := '404C6513248152D9FB26945D12C8041053390949A054F6BE096597043201C4544EC2FA0412C109C0917137BA87C6C2129F2FF84AEA4CC707D3991916A5BB90CD514A3DA6C95A81400B02624BCFD29E9FFEE0327E71FC645832343A36C7C45DE413895AC6';
wwv_flow_imp.g_varchar2_table(37) := '7A0EA161BC1ED544D3B13C8184DD09FE2A067F5E85E754C291B927EE640DA4879C8A1EA544D3511C69E0CFCE85431E8E33F7C49DAC81F4F8352908A4A7E037754233C0577B8771F8DC8DB0E41AC5D5F443BADA752407D9078A04ADC48ECBB5177FB3E75A';
wwv_flow_imp.g_varchar2_table(38) := 'EF007ED97C3E2CE1B8DCF762DDC42E5DF4AD93351061CC5F0DE3F782D24B57222C29AB98F383E59454CAED92402197F32777F97BD161893323A4A5F32447613A818BB15AACB2539CE93879B91BD55F7F352CF9CA7FBFA399A6386EFDBB042DC082075903';
wwv_flow_imp.g_varchar2_table(39) := '99E0349E16E08F6BDA684E2A2CC958A47DB09C3F856742F6714D423F81843A1E57CB132873859A3467F152AD5FC4FFCCE5B652B222A1BED4AAAA7EDDBFCAD44D201B1449A00422B111538CF852D19BB1AAAABA59AB374FA9171D048CF8523F814440D640';
wwv_flow_imp.g_varchar2_table(40) := 'D1F167CC53550DF8D20081641316734F47294355E8F7A56E02050249DC8445C951899AAC115FEA2650BA70C8262C511911A15D467CA99B4081C9BE3E1508FFE79811164A468F0D02EC43F6A5DEDC7413E8C4130D5E0104A754F5E62EF5E28E00FB907DA9';
wwv_flow_imp.g_varchar2_table(41) := 'D710DD040A657838749627EB2260C8879240D675BC5996C78F4079B0BFCD6DA8592591E9C41601F61DFBD048AE866AA0C38D2BDD94C04F8C18905CBAD62A0DFB8E7D68C46A4AC3883A409DB06F436E9644C00CDF1926D07B8DAEB7093D391A23102CB6BF';
wwv_flow_imp.g_varchar2_table(42) := '13F29D21B30D1388731710B21662202C24C2249F9942A0DC8E2B3FA2B6ECAA85F04B7553AF03A3E80D0000028B49444154693E330105530874F8ABDB7C08E04913EC9149C4008100B04FF3990979994220B6A365AF8B4663E219BE9692C80888677EDBE8';
wwv_flow_imp.g_varchar2_table(43) := '3A689685A611880DB24D0E7E11508FF3B59488108855E4C3411F99979DA9040AAEA9F83F4DE60D92C83DB110E8F2F96C9F09FAC83CC34C25109BD5D2B8B65D55F02020DA21B74441A04304020F9F7A7C5524FFCF212CDB4D2710E7DABADBD5EC54BC0D10';
wwv_flow_imp.g_varchar2_table(44) := 'E2977C2F257E0808E09053F1D5373FB6BA351A564485406CE8B1DD6BFB5C99153B5488E7F95E4AEC1150557CAB32ABF221F645B4728F1A81D8E01F7E5AF85B1B2BF709A8FBE87E9244EEB141604255C5675AF7BAFE8E7D10CD2CA34AA029C39B1BAB9E57';
wwv_flow_imp.g_varchar2_table(45) := '95C02A21F03455A957A6C2E5D96404047832F7AB84B5AB756FE5F74D4E7DCEE4624220CEB975F7EA6BCD7B5C5FA32A75A5AA884F12915EA7709544EE061020553F61791042FDB82BB372454BA3EB9F186B0A8FC91E33024D9586ABD4D6DD95079A1B5D3B';
wwv_flow_imp.g_varchar2_table(46) := '6C934ABE10EA033477F414C9CB04C44908CCF505CC29F5D43E13361A462A5E2120FE46A8D83A11F0E71396BB5AF654BDCAD852784CF79813687AE94E3C5131D4BCA7EAAD96C6AA6748F610101B5AF6B81C044A8E03F62536814A1A7ED64215F700EA4334';
wwv_flow_imp.g_varchar2_table(47) := '05BF2B1584CBCA65E6B233068C0563C2D86818ED75EDA69AE6DBCD7B5D6F9E7B6CCDC8744C637D1D5702CD575806E578E3CACE137B5C1779F8D9B2B7F20811EC0D9E824F05E1B27299B9EC8C0163C198CC87573CC3139240F10444E61D1902924091E125';
wwv_flow_imp.g_varchar2_table(48) := '637F080149A00F01226F234340122832BC9227B6492591043209C8544D461228553D6F52B925814C0232559391044A55CF9B546E492093804CD564248152D5F326955B12C82420532799992595049A8987BC8B100149A0080193D16722F03B000000FFFF';
wwv_flow_imp.g_varchar2_table(49) := '390E8D88000000064944415403006E1B54992AEC147F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(11892851878985991)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D69701C47157EBBABDB3AACC3926549F8506CCBB1139F120E71B05D21C409144542B84D715FA1A8024251FCC84FA08AAA504085BB0A0224';
wwv_flow_imp.g_varchar2_table(2) := '14A448023FC801A4E238CE451C3BA71D3BB612DBB2A3C3B27559C76A7725FA8D353DA3D5EE6A767766343DF3B9DCEA9E3E5EBFFE5E7F33DD6F5AA3F0A67B4E4C230083A0CE8130E11F100830022040808D8FA113810098058146000408B4F931F8001300';
wwv_flow_imp.g_varchar2_table(3) := 'C607025802610E041C013C01023E01823E7C1020E83320E0E30701023E01823E7C10208833006396088000120A24828800081044AB63CC12011040428144101100018268758C59220002482890080202C96304019211C175A010000102656E0C36190110';
wwv_flow_imp.g_varchar2_table(4) := '2019115C070A01102050E6C660931100019211C175A0100810010265570CD62202208045A050CD9F088000FEB42B4665110110C02250A8E64F0440007FDA15A3B2880008601128A5AB41F9B408800069A14141101000018260658C312D0220405A685010';
wwv_flow_imp.g_varchar2_table(5) := '04044080205819634C8B000890161A14F80181F9C60002CC8710CA7D8D0008E06BF36270F3210002CC8710CA7D8D0008E06BF36270F3210002CC8710CA7D8D808F09E06BBB617036210002D80424C4A8890008A0A6DDA0B54D088000360109316A220002';
wwv_flow_imp.g_varchar2_table(6) := 'A86937686D130220804D407A4A0C94B18C000860192A54F4230220801FAD8A3159460004B00C152AFA110110C08F56C5982C23000258860A155540205B1D034F80E9A904C52F0D50B4EF344D9C3B41E3A78F6A81D39CC765343D952DAEA8AF08028125C0';
wwv_flow_imp.g_varchar2_table(7) := '74224EB18BDD34D1759C26FBCF51626C84A662519A16939D03A7398FCBC6CF1CA3D8400F315914B12BD4B48840200990181FA189B36F526CF802F1649F0F2BAE131BEAD7DA24C62FCD571DE50A21103802C487FB29DA7B7AD6C4AFAEAAA00DADCB69D7E6';
wwv_flow_imp.g_varchar2_table(8) := '2BE9B69DED5AD8B9691DAD17798B2BCB49FFC74F8068EF298A0BE2E87988D546205004488C0ED1E4C51E69B148384CDBD6B5D2CDEDEB69D3CA466AAEADA492C288165AEAAA68B3C8FB40C706DADCB68A226103AA49B1746259521012CA22605855D921E8';
wwv_flow_imp.g_varchar2_table(9) := '8A678E794D1F3DDF252B555594D3CDD76CA4B6A6251492B973135CB6BEB99E6EDA7E3555952F92155816CB9419482889406008101BE895060A8742B46BE31AAA2A2D9679F325169795D0AE4D6B89DBEA75E383E7F5A4A5989750EC5562EF127B99E071B2';
wwv_flow_imp.g_varchar2_table(10) := '049BA395024100F6F824C68625905BC4B2A7A2A4485E5B4D701B5E0EE9F5E3A383C4935ABF4E1773FFF038A5436761F3034100F37ABDBEB69ADA96D5E58CFA3AB164AAAF592CDB9B65CB4C53021E2713181E4C068300A6BBFFDAE686BCCDB0A6A551CAC8';
wwv_flow_imp.g_varchar2_table(11) := '4480780A8F53634D15EDBCAA953EBD73137DFF966BB5C0E9F75E75052D1565BA607EB2C0E3A4A3E15C1C08024C45C72582E5622D2F2F724C949BF60E53931329A53031CC1EA7824858789BDAE8F61B36D20DEB9B695D63159517176881D3EF5FDF44DF10';
wwv_flow_imp.g_varchar2_table(12) := '65376E5D4B05D97A9C526A804C2B0884AD5452BD0EBFC8D2C750619ABC7A5EB6714549A16CC2776A79319360EF107B89662EA9BEBA926EDFD34EEF696DA05088FD4A7AC9EC38140AD175AB97D2D7F774D092C515B29065B14C9981846D08048200A19031';
wwv_flow_imp.g_varchar2_table(13) := 'CCC454FEE77ACC1242E1C81C63983D4E917088F6EEB892EA2B4AE6D44B97D150594C9FB96EBD78F76090051EA77468E5976FCC8CFCE478BA75A8A040EA377029F5924556B09018B8642CA94291D904608F8FD9E3B467DB3AAA59546C41EAEC2ADC668F58';
wwv_flow_imp.g_varchar2_table(14) := '0EE9B9F038E948D81B07830085C6DD77E0D268DE085E1C1E9332C245A532CD095EFB73CC6179432D6D5F99BBC769FBAA7A5AB1D4686F96CDF293033C4EC988CC7F1D0802444ACB251227BB7A28313D2DAFB34D4C89B69DE78CE31461936C9665BEFB5FB3';
wwv_flow_imp.g_varchar2_table(15) := 'B69942216319C3E5D9845028441DAB97C926990890CAE3D4D654475FD97D35DDFDE9EBE8C01D376AE1EE4FEDA02F8BBC35CB6AA55CDEC7A8EA719283C831110802844B8C230C23A363F4FA696302678BDBABA77A8865E8ED2226D99C67F638F13286F3F2';
wwv_flow_imp.g_varchar2_table(16) := '093565C6F2C9AAC7A9A82042DFFBE0567AE073EFA66F5DDB42D7AFACA4DAD2022D5CBFAA8ABE2DF21EFAFC76BAE3E62D54685AC205F18C53300850584C91B20A390F8F749EA1A1F1A8BCB69A181A8BD291B74ECBEA2C33545024AF3961F638D52E9A5DC6';
wwv_flow_imp.g_varchar2_table(17) := 'E5D9869AF262D984EFD4F26226C1DE21F612CD5CD2150DD5F4E05777D3E7362D25B1FFD6B3E7C45CF6C52D8DF4E0D776D3AAFA6A59CEB258A6CCF079221004601B16D53472A4055EC6EC7FE5CDAC4830383641FB5F3D4E6205A4C90809CF52518DB13CD1';
wwv_flow_imp.g_varchar2_table(18) := '32C50FCE1791F63F96C87DA9A509103FA6A60C19A1793C4E859130FDF213EDD45A6D904688C8F8FF0A51F7D79F6C174F02632A64EB71CAD881C70B8D517B5CD17CD5E33B75F192162966586C861F79EE153A7AB68F8C29268B6582CB8E883A8F3EFF2A0D';
wwv_flow_imp.g_varchar2_table(19) := '5F3236BF454BC4FABEC0781FA037307B9C7A86F2F738750F197DCEE771FAAE58D2B454CCD549D72D5DCC6DEEB8698B2CB6EA71920D144E0486006CA3C8A22A2AAA59CA492DF03B81C3C7DEA2470E1EA197DF7E87CE5E1CA6683C41639371911ED1F21E7E';
wwv_flow_imp.g_varchar2_table(20) := 'E108BD24EA705DAD91F851249E2691B24A919AFB3F64F238750FE5EF71EA1E340890C9E3B475D532DABBB161AE4216733EB3A981B6B51A4FB44C1B6E8B2295A8A6300172C3B7A0B28E8A1B9653482C617409034323F4BAD8173C79F828FDFDC983F4D053';
wwv_flow_imp.g_varchar2_table(21) := '2FD293878F687983C3237A35E2254871C30A2AA8343C28B2702661F638BD78B28B12A625CC4C15CB11B77DF1C45959DFBC99E74CB3C7696FC74A0A71668E81DB7E6CEB0AD91A049050F82F1129ADA092A6D514497261661A296F78ADB4314FD20BE209F0';
wwv_flow_imp.g_varchar2_table(22) := 'E4B1EE4C6233963DF1C639BA38623C4592F5357B9C5A161BEF3A320ACD50F82E938C741EA70CCD952C0ADC1340B75248ACDFF96E5EB27425152EAED7C81016DEA290783270E0344F382E2B695C45C5F5E2A91131DE28EB729263AD9DC9E3B4FFB593D437';
wwv_flow_imp.g_varchar2_table(23) := '92FD5EE0FCA5281D78FD2D299E09C8FB18992112668FD3F2AAFC3D4E2D95868CE9A984E8C1FFFF034B00DDB47CC7E649AE91413C154A975F491CF86ECF795C162E2ED3AB5B8A798FA057648FD35F9F79232B12F48E44E92F075E236ECB729890F3799CC6';
wwv_flow_imp.g_varchar2_table(24) := 'E3E6134ADC2AFB607E41C8CBBDEC25A8D722F00470C2647CA7367B9CCE0F0ED3AF1E3D484F9FEC116E54F62BA5EE755AF8580F9CE8A15F3FFA02F58BE5935EABC882C7E9CD7EE37C92DE2EDBF8984946B2C7295B59AAD407011CB254B2C7293E35458FBD';
wwv_flow_imp.g_varchar2_table(25) := '789C7EF5F82BF4DF2367E978EF308DC512343211A36322CD79BFF8CFCBF4EF43C789EBEA6AF1D3648EC769A6D0EC713ADA97FFF78A8EF61A1BFE648FD34C97BE8B7C4F00DECCC586CE53B4EF0C8D771DA3B153AFDB125856B4E76DE2DFF59D9A3036AAE6';
wwv_flow_imp.g_varchar2_table(26) := '1992CAE3D47D6188F6BFD649F7EE7B897EF4E0D3F4E37F3E4BF78934E7F50E18BFB7CC4B105E8259F5383D70B09326F378F11613DEAA070F9E94EAF3D2505EF838E16B02F0B9FC89774E12C7EC32E4A3CA76D9926525C4C4E7AFCB4D0822F0571E527D35';
wwv_flow_imp.g_varchar2_table(27) := '2EE292C7E94CFF10FDF68573390FEF97CF9DA5AE0BC613209285872CE74E3DD0D09704E0B32CDAC417777EB730E63E27C553662A6ABCB8D2FB0EB9E471FADDBE57A97320FB334E9D8393F4FBFDAFE9EA6AE7A6781F23337C9CF02501B48968FA5DDDD6A6';
wwv_flow_imp.g_varchar2_table(28) := 'A5B46BCB7AED93877BDFB79DEC081FDBDD41376DDF48EB561AC72BA6A7A728CA9F5D8C4FA69C32BCAC60AF122F6DD8CBC4DE260E9CE63C2ECBC7E3C42FCEBEF5C0A1AC48704210E69BF7BF205FD8A5F338A51C900F327D4780D8408FF69567B64D697131';
wwv_flow_imp.g_varchar2_table(29) := 'DDD07E155DB36E0535D788975F85B37F7B8BEBE41A8A2261AA2D2FA5ADAD4DF4A11D5BA9B2FCB2AB94FDE7B101E3235CB9CAB7DA8EEFD4668F5367EF00DDFA9B7DF487C3DDC28D9A5E8A58F2D3EF459DDB44DD53E78764C5741E27596181137677EF2B02';
wwv_flow_imp.g_varchar2_table(30) := 'F0F283BFE2AC83B473731B35542DD22F1D8B2B4B0AE9FA2DEB281C0A697DC447878837DFDA850B3F923D4EB14482EE7AE4307DE48FFFA39F3DD345FB4F8FD0C04482FA4613B4EFD4B09677CB3DCFD34F441DAEABAB98C9E3A4D7F15BEC2B02C4872F4AFB';
wwv_flow_imp.g_varchar2_table(31) := 'AC7ED732AA13776899E17062515121AD144B2DBD1BDE832CB4C7E9F8B97EE27DC1D7EF7D8AAEBDEB31DAF5D3C7E81BF71DD0F24EBC7341579542E108F1122C93C7897CFACF5704E08DA86EA796FAF407D6F43A76C5231393F4DCB1D3F4D6B96EBB44CE92';
wwv_flow_imp.g_varchar2_table(32) := 'E3058FD32C857C74E12B024C9B369F7515A5AE98E9FCC818FDEBD997A9F36CB778CBEB4A97C4449FEC3B4DBCE44BEED1298F53723F7EB9F617014C07B87893EAB49186C6A3F4C4A1378407C53887B3E58A16DABB7BB3F6C9C31F7C6227D911EEFCC80EBA';
wwv_flow_imp.g_varchar2_table(33) := 'FDA60EDAB17E951CD2F4F4B4EB1E27D9B98F120A11C07BA81F106F7463F198A6584559097DE9866D74EBB655D4D650A97DF2502BB0E14789F05E2DAB2AA53D57B5D0B73FB89DEA6636F66E7B9C6C188AE7448000399AA47B709406878DA30B9FBA6E03AD';
wwv_flow_imp.g_varchar2_table(34) := 'A875DEE3545B5E4C9FDD793545C2974DE7B6C72947B83CDBEC328A9E55CFBB8A75F5191EA76D6B97534BB5F3935F47A3BAAC8836B536EB9764B7C769F27C17F1778678AF213BF1690204C8D1B043A3C691870D4DC6D7DB721467B9D9C5D149FAC7A1B7E9';
wwv_flow_imp.g_varchar2_table(35) := 'A593C69F7BB2DCD84245F638F15385BF6C1D9D3947E5DAEEDE827E765701017244F4C2B071FCB8B9BA344729D9353B73718C7EFEF0F374E8C419F19637FDEF156427357D6DDE68F349DA89EE4ECDF394BEA6BA2520408EB68BC72E6F7EB9396F5239762C';
wwv_flow_imp.g_varchar2_table(36) := '08C1FC6B957FDEF792F0381913FF96F6D5DA670FF77F670F1DBDF303B60496C59F52FCF0B6D5A2D7CBFFF9AD369FAFBA7CE5AF9F208022F6BCFFD96334118B6BDAD6552EA23F7D6117FDF0C635DA670F9794D977C689655DBFB2927EB4670DFDE1F33B89';
wwv_flow_imp.g_varchar2_table(37) := 'FBE24E793F101BC8FD93922CC38B21EC45A5A0D36C043AFB2F51EF807160EDEE8F7750FB32E737DDDB9BCAE9AEDBDAA5327CCE6ACAF4D7766481C209104001E31D3D6B9CDBF9E8BBD7D2C686CB274FDD50BD4310EDD68E35B2ABF888E1FD92990A274000';
wwv_flow_imp.g_varchar2_table(38) := '058CD737686CB86F6C6B705DE3F7AF35BEA6C74B21D71570B04310C04170ED12FD4EFF8014757583F34B1FD9D94CA26D89F1C4319FB79A297634725A3808E034C236C8E7EF95EA62CA8BDC3759BD6993CDEF09745DFC10BB8FA61F50C3187C830008E01B';
wwv_flow_imp.g_varchar2_table(39) := '536220B9200002E4821ADAF8060110C037A6C4407241C0C304C86538680304B243C0570408458CCF97DFF7F8F3942A64070F6AFB1D015F1120F94F96FADD78185FFE08F88A0085358D54B06831999F04F94304097E46C05704E0895FB4A4994A5BDAA86C';
wwv_flow_imp.g_varchar2_table(40) := 'C50619FC6C408C2D3F047C4580FCA0F0506BA8E21A0220806B50A3232F220002D860953BFFB69F52051B444384C30880000E030CF1DE460004F0B67DA09DC308800036000C8F930D20CE88703B0201DC461CFD790A0110C053E680326E230002B88D789E';
wwv_flow_imp.g_varchar2_table(41) := 'FD5DF983872955C853AC6C9E4A36E7E915F865A39EF6430C02F8C18A2E8E215252EE626FCE770502388FB12F7AE03B7F41793515D636FA623CFA203C44005D25C4991070D3E364EE8BCF5715D53511FF3DB14CFAA9560602A86631E86B2B022080AD7042';
wwv_flow_imp.g_varchar2_table(42) := '986A088000AA590CFADA8A0008602B9C10A61A022080172C061D160C011060C1A047C75E4084F4EC20000002C4494441540004F08215A0C3822100022C18F4E8D80B0880005EB00274583004408005831E1D33020B1D408085B600FA5F50040241003EC8';
wwv_flow_imp.g_varchar2_table(43) := 'A5A39CEA7389B9E4E9F2CCB2F53CC4EA2010080238F9C944BF1D0F5667EADAA3692008E0C42713F9CEEFC7E3C1F64C2B75A40482003C59537D32D17CDC37DBB45F8F07AB3375EDD174010960CF00200508E4830008900F7A68AB3C022080CD26E4E5962E';
wwv_flow_imp.g_varchar2_table(44) := '32D5E71273C9D3E59965EB7988F3430004C80FBF39ADE1719A0389A73340009BCD038F93CD803A2C0E04B019605EA6CCEB7132FDF10E2BDE27789C6C3692491C08600203C9E021000204CFE618B1090110C004866A495E6EE93AF3E70BED08BA3CB36C3D';
wwv_flow_imp.g_varchar2_table(45) := 'CF8F3108A0B055E171CADF782040FE182E9804153D4E0B06569A8E418034C0A890CDCB14789CF2B31408901F7E68AD38022080E20684FAF9210002E4871F5A2B8E0008A0B801A17E7E08B84880FC14456B20E00402208013A842A632088000CA980A8A3A';
wwv_flow_imp.g_varchar2_table(46) := '810008E004AA90A90C02208032A682A24E20000238816AB24C5C7B160110C0B3A681626E200002B88132FAF02C022080674D03C5DC400004700365F4E159044000CF9AC61F8A797D142080D72D04FD1C45000470145E08F73A022080D72D04FD1C450004';
wwv_flow_imp.g_varchar2_table(47) := '70145E08F73A022080D72D04FD1C45C0410238AA378403015B1000016C8111425445000450D572D0DB160440005B6084105511000154B51CF4B6050110C016189384E05219044000654C05459D400004700255C8540601104019534151271000019C4015';
wwv_flow_imp.g_varchar2_table(48) := '329541000450C6546A28AA9A9620806A1683BEB6220002D80A2784A9860008A09AC5A0AFAD088000B6C20961AA210002A86631E86B2B023612C056BD200C08B8820008E00ACCE8C4AB0880005EB50CF472050110C01598D18957110001BC6A19E8E50A02';
wwv_flow_imp.g_varchar2_table(49) := '20801D304386B2088000CA9A0E8ADB81000860078A90A12C022080B2A683E276200002D8812264288B0008A0ACE9BCA1B8EA5AFC1F0000FFFF5AE2F026000000064944415403008920E2B9C08B4E790000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(11893185817985991)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D09741CC779E7BFEEB97011076F122401120729F0024891BA4949D64AB2A3CBF2AE9FB3CF2B11B4B45AC51B276B3B4F6BAFE5289112EB39';
wwv_flow_imp.g_varchar2_table(2) := 'D9B7F67AD7765E2C8296E3388E641D8E1DCB8EF224D1A22447A20890E28583F7019E38080218CCD1A96F88E9690003608EEEEA9EE93FDE14BABABAEAABAA5F75FDA7BAAABB4725FC810008B8960004C0B54D8F8A8300110400670108B8980004C0C58D8F';
wwv_flow_imp.g_varchar2_table(3) := 'AABB9B00D71E02C014E040C0A50420002E6D78541B049800048029C081804B0940005CDAF0A8B6BB09C46B0F018893C016045C480002E0C246479541204E00021027812D08B8900004C0858D8E2ABB9B80B1F61000230DF841C0650420002E6B70541704';
wwv_flow_imp.g_varchar2_table(4) := '8C042000461AF08380CB0840005CD6E0A8AEBB098CAF3D04603C11EC83808B0840005CD4D8A82A088C270001184F04FB20E022021000173536AAEA6E02C96A0F014846056120E012021000973434AA0902C90840009251411808B8840004C0250D8D6ABA';
wwv_flow_imp.g_varchar2_table(5) := '9BC064B587004C4606E120E002021080718D5CFB7F3B028D2D47CA1B5A8ECCDFB0AD73F19AE78F2E6D6CE9AA6BDAD6D1B0EE8707D7ACD9D6B16EDDF6CEF570CE63106B1BD146DC56DC66DC76DC86DC96DCA6DCB6E39ADBF5BBAE1480F5DB3B6AD6B6B43F';
wwv_flow_imp.g_varchar2_table(6) := 'B8765BC79F35B674BC22DC6EE14E09A795CCA061A2708F9FC267428A765C8D840E1345DB3585F645A39E3655A15D514DFB00CE790C626D23DA88DB8ADB4C156DC76DC86DC96DCA6DCB6D2C1CB735B7F92B7C0EF0B9B07A5BFB3237AA812B04A0B1A5BDB1';
wwv_flow_imp.g_varchar2_table(7) := 'A9A5FDC9C6968EB7841B8868D4A990F23345A1AF8B46BF5FB846E1160A878F3B08705B739BDFCFE7009F0B1E45E9E27343B837D76E6BFF5AD37387D6E60B8AA9EA919702D0F08FFBFC6208F889C6ED1DDF6D6AE9384EA4ECD648F97322DA245CB170F880';
wwv_flow_imp.g_varchar2_table(8) := '4032027C6E6C5614E5694D555B85181C6E6CE9FC56D3F6AE8FF139952C41AE87E59500ACFB4167ADE8F47FE9BFE2E761FB2F49A3C735A2C5B9DE4828BF6D049612697FA469D1D7F99C1282F0177C8ED9561A0B32CE790168F8FFFB4AD6B6746C6DDCDEFE';
wwv_flow_imp.g_varchar2_table(9) := 'DBA847EB109DFE2B8253A570F880809904F89CFA2A9F634D2D9D3B1A5BDAB7F0B967660676D8CA690158FBC3CE4FFA8BFCEF2944CF91A6DC6C0740E4E93E021A69B710292DBE22BF982FE8B88B1CFC375DD17252001A5B3A6E15DFFAEF2A51ED2551C195';
wwv_flow_imp.g_varchar2_table(10) := 'C2E10302D209882F9EF58A42AFF1B9C8E7A4F4029890614E09000FB9D6B6B4FF44D4FB0D01FF7AB1C507046C27307A2EBED1B8BDE3477C8EDA5EA0340A903302D0B8ADF34631DC6F5348F94C1AF5435410904740A3CF8A73B4956F129397697639E58400';
wwv_flow_imp.g_varchar2_table(11) := '346DEF7C8814ED0D515557DEAC21EA8D4FEE10A8896ADA3BB173D6E632A792BDB30540D314716DF5179AA6FD5054C62F1C3E20900B04FC7CCE0A1178DAE98575AC00F08D174DDBBB5E1400BF2A1C3E2090730484087CAD715BC70FF95C766AE11D2900B7';
wwv_flow_imp.g_varchar2_table(12) := '3EF586D73FE8FF99586E79D0A9E0502E10488980420FF907FC2FF0399D527CC9911C2900BDD58B9F278DEE91CC02D98180350414BAAFB77A518B35C6935B4D35D47102D0D4D2F12C69DAEFA75A01C403819C2020560862E7B6C30AEB280110137E7FAC11';
wwv_flow_imp.g_varchar2_table(13) := '3DE13046280E08984280CF6D3EC74D31669211C70840E3F6CE9B449DFEB770F880403E13F8EBB5CF7539E6B6754708406C96F4EA529F23CA93CF671FEA663B018FE289B6C4CE798B8A928E594774B8C0153F3FAB5F934EC111170472968046B5A3E7BCED';
wwv_flow_imp.g_varchar2_table(14) := '55B05D00D6FCA07395B836FAB2ED24500010904880CFF9D52D5DAB256699342BDB0540F568CF88927984C30704DC44C0E3A1A8ED770ADA2A00FC808F68717E279FD8E00302AE2370BFD91382E912B4550048D1FE2ADD02233E08E41301458DF208D8B62A';
wwv_flow_imp.g_varchar2_table(15) := 'D926008D2D9D0F885ADF281C3E20E066029BD7B574DE6D1700DB048048FB63BB2A8D7C41C04904A2A4FD4FBBCA638B0034FDE07095A830BFA25B6CF00101D713D8B4E6F9834BB3A590497A5B0440F3449A456115E1F00101102052D488E761B2E14FBE00';
wwv_flow_imp.g_varchar2_table(16) := '681A77FC2D36D41559828093093C4457FB86D4324A178075DB3BAF1335E44B00B1C10704406094C0D2D1BE31BA2B67235D0034229EFD27FC8100088C251025CA783560ACA5D4F7EC1000E9954C1D07628280AD04A4F70DA902D0F4DCC18502EF1AE1F001';
wwv_flow_imp.g_varchar2_table(17) := '0110984860E3FABFE92A9B186C5D885401D054F54E51159E04141B7C400004C61150A27EEDE3E3C22CDD952A000AA9F8351FC21F084C49E0D6298F2639984D905401D0486BCCA6B0480B02F94E40761F9127004F699C17AEFFF3FD0C46FDB225B09AAEF6';
wwv_flow_imp.g_varchar2_table(18) := '956CEDA4949E3B654A11B38DD458D5C19DBF305B3B480F02794EA0687D557BBDAC3A4A130031F387EB7F59AD8A7C729A40943C295F2A675B51690240A44AAB54B650901E04EC25A049EB2BAABC8A6AD5F2F2424E2090BB0434A215B24A2F4D0044A5E6CB';
wwv_flow_imp.g_varchar2_table(19) := 'AA14F201811C2720EDCB529A00880681000808F880400A0452EA2B29D899368A1C0178EA2995149A356D69100104408009CC94B514A8726E56BBE58B3F534C1A79ADCE07F641204F08F8D62FD85520A32E5204A0500D78645406798040BE1088F867F965';
wwv_flow_imp.g_varchar2_table(20) := 'D4458A00443D11299591010C7980800C02D3F519B3CA2045007C8A172300B35A0C765C4140569F912200C15018D7FFAE386D5149B308C8EA335204C0AB84300230EBCC801D571090D567A40880079700AE38695149F3084CD567CCCB85488A0068AA0F93';
wwv_flow_imp.g_varchar2_table(21) := '8053B49A168D50746498A2C121D2C2A12962E2905B08841555CAA8598A00108DB8A5DD52AE6764B09F46CE9FA4A1E307626EF874270D9FE9A2A1938768F0E84714EC3E42E1FE0BA445C229DB44C4FC21E01989E49300E44FC3645B93F0E54B342C3A79F0';
wwv_flow_imp.g_varchar2_table(22) := 'DC710A5FE925FEF64F6633327C85462E75D3D089833472E1146164908C12C2B225206904906D31F320BD16A5E0B9633472F13445D31CE687077A62A383E8C8501E804015B22160765A0880D94493D9139D7FB8FB2845062F8F393AB3AC94562E5B429B1A';
wwv_flow_imp.g_varchar2_table(23) := 'AFA1076E59479FBEFD3ABAE3DA55B46EC5325A327FCE98B87C29103C7344CC130C8E09C70E0864430002900DBD14D306C5B57E3498E8B83EAF8FAE5F554F9FD8D0404DCB16D292D9655412F0935F55687E7909352C9A4B9B56D5D0BD37ADA3D94224E2D9';
wwv_flow_imp.g_varchar2_table(24) := '684248F8D2410B634E25CE04DBEC084000B2E3376D6A9EC88B8809BF78C4857366D27D373752EDFC99F1A049B765857EBA5B88C4B5D7D4E871622301317FA007C003025910800064016FBAA4DC59433DE7F468A52545B4794D1D15A67967F48ACA39B4B6';
wwv_flow_imp.g_varchar2_table(25) := '6EA96E87970CC3FD17F5FD743C3C8F10EA3D2FE6224EC5E624AECE4B9C220EE363E9D8425CB904ACC84DB5C2286C5E2510EA3D473C6CE73D4521BA79551D79D8C30169BA9555F36866E90C3D55A8EF3C4DB682A0471AF570BC90E8F4BCFA307CBA4B74F6';
wwv_flow_imp.g_varchar2_table(26) := 'B314BEDC139B9388887909F6877ACF121FE3381C97D38C26C7268F0940002C6CDCC840AF6E7DD5B22A9A5952A8EFA7EBE186BA69751DA9A302C2A30BEEBCD3D989AD209C3814EBF4A9AC3E709C981888346143F9A7CB07C77393009F57B9597287979A27';
wwv_flow_imp.g_varchar2_table(27) := 'FDE2DFFE5CD4FAC5737993952B1373020BE6245EAC141DBE32A5BD901881C4EE21109387E32356CE2EA78D2BAA638EFDE38F73D9472E9C14C2717EFC21ECE711010880458DC9D7E971D301BF3FEDEBFE78DAF1DB72318F100F33E6110F8B6FF912810520';
wwv_flow_imp.g_varchar2_table(28) := 'BECFDBEAF9B3E9B1BBAEA5673EB3991EBF632DDDD7581573ECE7B0FF7AE706AA9A9710184EC3A38170FF05F6C2D948C0AAAC55AB0CBBDD2E0FD1E30C2A6614C7BD596FCB8A1397115A24F9730391A1010AF59CD5F32AF0FBE8FEEB57D2E73637D0E28AC9';
wwv_flow_imp.g_varchar2_table(29) := 'CBB26466113D72EB4ABA776303050C13957C47E274A30D3D3378728A0004C0AAE68A4674CB458505BA3F5B4F4991C156343AD19C18EEF3D03D7E803BFFE7EFBE963654CF2645113391F103936C1545A1EB96CDA1FFFE898DC469E3D182E74F9098758CEF';
wwv_flow_imp.g_varchar2_table(30) := 'A6B715656251E239051E9984C50A46E44A1F61D5213D8C56C486005841956D1A1EE6EABF62DE2DBC636CA9139B2F2466FB8DA38FFBAF6BA08AA2F41FC6E4349C96ABC28E6D86FAD2BB14E04ECECB8C83C7F653F0EC516261E291C9C8A533C482C2AB0EFC';
wwv_flow_imp.g_varchar2_table(31) := 'AC43A8A79B7073135396EF269E41F2CB9097392A9EC44B907AFA2E9366522D7B2E2726FE148F6F82D5F0E54B7A5843F5025A5D59AEEFA7EBE1B40D550BF46446DB7A60124F64B09F864FB5C73A79442C332689A207C58565E8647BECE9482C3FEA68748F';
wwv_flow_imp.g_varchar2_table(32) := '951E08804574557FE25A3D222E07FA8782A6E474A93F21006AC0703920ACF375BAB1036D5ABE588466F7D9B462916E803B2BE7A10724F1F0F09E6F578E8692DFAECCB7392F98641E829F8E0C9EE9C268200957AB8220001691550385A41846019DA7D31B';
wwv_flow_imp.g_varchar2_table(33) := '3E272B569F10910BBDBDFA214FE10CDDCF9EC8B0E17903917765F95881E038E9BACAF242F2095BF17411C3330DF1B0F8362C560B78781FDFE76DD5EC327AF2FE0DF4C263B7D3FEAFFD1EBDB86503FDEBE76FA51D5FBA8BBEFFD02DF4F02D2B399AEE5838';
wwv_flow_imp.g_varchar2_table(34) := '86CF1C8608E844ACF540002CE4EB2DA9D0AD1F3872827A0787F5FD4C3CEFEC131D63F45A82C565BC006891C4B76ED5BC8A9426FDA62B87A228B4786EE232429BE451669EE4E3D582B83DAF989F78ECF6B5F4CAA337D1EFAF9E4B2BE714C60FC5B6B30BBD';
wwv_flow_imp.g_varchar2_table(35) := 'B46949293DB1B99A7EFEF93BE89A457362E1FC8F471A3C8AC878D2918DC0A54400029012A6CC2279CB78E63D81F83DD18133B344D4D17D892EF6F6E9C97D65A2C388CEA907088F66187657CDAD1021E67CAAE6CED40D69499E44E4CB8E115E25188D5526';
wwv_flow_imp.g_varchar2_table(36) := '562A5E78EC36FAA31B1751C033FDCA436D45807EB665233DFEB1C4AF62F33D0EE34713A3E65DB5B1BAB2AAD519B8D9BE225602BCA5891B6B2EF4F553DBD1336923E91123870F0F1CD6D3F1B7BFD1AE7EC0E05194E93B9E21FA945E8FF12CD14687208614';
wwv_flow_imp.g_varchar2_table(37) := 'A19EB3E2CB3AB1ECF98D0737D2F259E95F7EFCE10D9574437D62CE217CB9472C1566376A321413DE24048C4D9BE43082B225E02B9F43AA3FD119F6761EA3D7771FA22BC1E437F118F38B8ABEB6F7F8397AEDBD3D1432BC1B303067B1319AEE676188EF9C';
wwv_flow_imp.g_varchar2_table(38) := 'BED41FF766BD3DDD93789189310F36CCDFFE91811EF6C6DC7DEBEBE8D6EAB17313B10329FE7BF69E5534A330A0C70EF767F6D4A36E009E29094000A6C463C24145A5C0DC2564EC38DD177BE817EFEEA14E31AC9F2C87FEE110BDF6FE3E6A6B3F4C11C30D';
wwv_flow_imp.g_varchar2_table(39) := '3FFE990B482D284E9ACC98C7998B89CB85A491D30834DA32E6C126A24303A48D8E0A66CD28A227EFA8E5E08CDD9C220F7DED9EF57AFA885852D477E0319D0004C074A4130D2A5E3F152C5846AAD7A71F0C89C9B4F73E6AA7BF7BFD3D7AE59D36FAD50707';
wwv_flow_imp.g_varchar2_table(40) := 'E8376264F04FE2DBFE85B776D1CFDFDE4597FA13DFBC9CD03FBB92A61AFAAB81228E16733D0383140C27B953307634F57FC3A108F55C4EAC2E18F3602BBC74C75B76F7362DA3629FCADEACDCBDCB2BC8EBF1C46CC446184264623B2EFB27A3BAD9B7968C';
wwv_flow_imp.g_varchar2_table(41) := '52E6411E2C028185B5E42D2E9B509B81C1A1D804DF393132E8E38E1B1A7B79A0FAFC14985745C6558509464480A7688698F94F34E98E43E9CF370833633E3BDA133614319AE13C8C11A2C1C45D8E0BC592A1F15836FEAAD9A57A72DC32ACA330DD93385B';
wwv_flow_imp.g_varchar2_table(42) := '4C370D83E309F0A4A05F5CBF172EAA279F981C540CEBEBE3E3F23E7736BEDE2FA8ACA7F14B8697E6E600001000494441547E7C7C82131DD45B9A98B1DFF151271DBE3030215AAA019DE72ED38EBD5D7A74AF2833893CF400F6182E4F2A4B13731D7C281B';
wwv_flow_imp.g_varchar2_table(43) := 'B770E68C4472431E8940F8CC2000013083629A367834E013D7F2858B5750C1C21AE24ECED7F6BE8A79E49F2D96CEE6555351550305E6569127C98861AAECBC6279908586E3F0A5F94FDFFE88FA86D3FF7191BEA110FDE33BFBD84CCCB15879C5B2666CC7';
wwv_flow_imp.g_varchar2_table(44) := 'F04FD312971915626DDF70282B6F45516222900C7964651489271080004C40223740F517C63A397FBBF2DABEB7A45C7CDB97D0846F5A4AED8F3B3FCF15C4635F190ED277FEF9DFA8F56462A63E7E6CB26DEB891EFACEAFDEA74191361E8785896DC7F7E3';
wwv_flow_imp.g_varchar2_table(45) := '5B1686B8FF704FE272201E96E9F6C879C324A6584ECDD44EAEA693556E08802CD212F3F11495128F26E2590E8F84E8C5B7F7D0DFBF2B961F47261F0D0C04C3F4A39D87E8C59D7B88D3C4D3B32D4F61497C77CCD6280007CF98B3F4C8CB9F074F2596FF8C';
wwv_flow_imp.g_varchar2_table(46) := '798CC91C3B59138000648D707203F1196C7E063ED47B8ECC72FC9EBF6870508C8C1337DF8C2F058F267CE5F3C604EF3FD64DDF7869277DFBB55DF4FCDB07E8D77B8FD3AFF69E88F9BFF5AB0FE8D99777D2A113DD63D2B00DB63526D0B0C32398F8EEFE33';
wwv_flow_imp.g_varchar2_table(47) := 'A98F32E269926D0FF706291449D4CD9847B2F808CB9C000420737693A60CF75FA0E1938768E8F881D873F07CA79C599D9FED8C5C3845FCC04CCCFEB963149DE427C37CE57362730A3C7B6F2CECF9DE016A3F798E7EBBEF08EDDC7738E6BFD09778CA90E3';
wwv_flow_imp.g_varchar2_table(48) := '721A1EF6B30DDE9FCC1947066D47BBA9FD52F64F3DFEF8C3937A76FCEDCF0F56E901F0984A00026022CED8432CFCE28B4BDD69FFFE5FA6C5880C5E267EB1C6C8F944A731DAE2398582C5CB89BFC98DF72118E318FD1CC73F733E711A4E6B3C96CCCF9394';
wwv_flow_imp.g_varchar2_table(49) := 'DC49F958448CDDFFE4A50F89B7BC9F897BFFF415FAE9BB07F5A4DE1989550D3D30CF3D32AB07013089367F0B0F9FEE247E2ACE68D2EBF1D09C8A729A3FABC234575E52ACDF2813CF8B6FC8E1B7EE88EB827890BEE5C93BFE262F58B43CB6EAC062E09D51';
wwv_flow_imp.g_varchar2_table(50) := '41BCCCC88EFD1CC62B121CC75B3A5BCC415EBD1147373285C77889C00F2D7DEFDF4E4F117BF24343E1283DF1F2077A042E374F8EEA01F0984E0002600652B14CC5DFC03C02889B5B387716FDDE8D4DF499DB36D05DEB57D01D4DCB4D73F75CBF3A667753';
wwv_flow_imp.g_varchar2_table(51) := '530395CD484CCEB1F8847AA77E8D375F4FB318F86755C6961979A991FD1CC6C7E2E54F67CB9D5431DCD3F0DDD75BE9277B13BF88948AADDEE1087DE1958FA8BB2771DF42CC2E560052C197711C0840C6E812094362822F1A4A5CFB6E68A8A5DBD7D4D198';
wwv_flow_imp.g_varchar2_table(52) := 'B5EC4474D37C4B6695D2C73734D0DC99E5BACD70FF453108484CA0E9072CF604F87907C34D424FBFFA3E3DF2421B9DBB327D59DE3ADA4F9FF8FE5BB4F3E009BD947CCBB12FC97D077A04784C210001C81223CFC61B5F96D9B06C092D5F383B4BABA927F7';
wwv_flow_imp.g_varchar2_table(53) := 'AA2A6D5E5B4F7EAF3796886FCC090B418AED48FCC71DD63F4E04DE3974923EF6ED5FD37FFEF12EFA3F3B4FD05BC72E535F30425DBD23F4E2FE0BF495D70ED11DDF7D8B1EFFBBDF52EF40E21E024F413115CCAF26711D426EFB935D5F084096C4C3FD8997';
wwv_flow_imp.g_varchar2_table(54) := '70969514D3DAA50BB2B4987EF28047A53575557AC29018050C1EFD88CC74B1977C8A15075ED1E09775E899193CBC221058B0948C97033C21D87AA49BFEF68D3DF4F88F76D00D7FF51ADDFBFFFE85BEFED2EFE8D50F3AE9F4A5C4909F4DF13D0C8179E8FC';
wwv_flow_imp.g_varchar2_table(55) := 'CC4286830064495933FC3847CDA27919FFF867A6C5E01B710F9C3C4F7B3A8E656A22A574FCAE3E5E71E07B1A78B273F87417257B4128CF23142CA8219E584CC9F068A4D8EAC3AC85625E620991A210FEE410800064C9D978ED5F5A5498A5B5F4920F8E84';
wwv_flow_imp.g_varchar2_table(56) := 'E917EFEDA15D07BB68243CF91D7EE9594D2D36AF7A04CF1EA3A8E169C0784AC5EB239E58E4671D78499187F4F163C66D6C96BFA422D6E963AB0F58F233E291E287006489D938F35F18F065692DF5E4C150845EFF703FF50F249ED52F0CF8697DDD62BA67';
wwv_flow_imp.g_varchar2_table(57) := 'E335F4C87FB8961EBDD31CC7B63E7DCB1ABABDB19E661415E885E4F986E0D9A334D925015F0AF0926260FE522AAA5E45858BC432A4181D142CACA5C225D7C41C3FB7C0C37EDDA88B3D76541D02602275C5B49FFF98BE506FEEE918D3F937ACA8A22FDEB3';
wwv_flow_imp.g_varchar2_table(58) := '913EB97E195DBF6C2E55CF2AA6AA99E638B6B5A6B2826E5FB1809EB8EF3ABA65758D5E40BEDD79E4E2697D7F2A0F8F0CF8AE3ED55F40FCED3F555C1C934300022087B3A9B974F70FD2F99EC4EF036C161DF2FEC66A2AF4A57EF34E3605BA6BE522DA24F2';
wwv_flow_imp.g_varchar2_table(59) := '8CDB880607C52820318B1F0FC7D6F9042000CE6FA30925DCD795582F9F5B514AB75F5339218ED501B7AF58486525457A36A14BDDA63DECC4F755F06423DFD8C4230C3D13784C270001301DA9B50679D6FFCCC51E3D931B962F268F2A7FD6BCFDEC65F219';
wwv_flow_imp.g_varchar2_table(60) := 'F28D0C5F3157007ACEC61EA4E2079E7809920541AF741E7AECAA1204C02EF219E63B2C66FE8D492B27F99D3D631C33FD832311DAF6D63EFAFB1DAD74C1F03B8566E631DE162F41F2FD07C3A73B71A9311E4E96FB10802C01CA4E1E1CB7DCB7B0AC505A11';
wwv_flow_imp.g_varchar2_table(61) := 'F80DC1CFBDB1870E9F19FB3B87B5F32AE8816BEBE80B7736D11FDED9688AE39F15DB74CD12E25F198A5790571B864F7751E44A5F3C08DB2C094000B204283BB9C62FFA939DE9687EDB77ECA7B33D89B7FE54CF29A357FEE00EFAF9A337D25FDE5D4FFF6D';
wwv_flow_imp.g_varchar2_table(62) := 'E3427A7C63A5298E7F56ECFB9F5A4D3BFFC7C7E88B1F5F37E63287571D8CCBAFA3C5C326030210800CA0B931C947A77BE9E4F9C46DCFFCEDFCF2233751FDCC80A538789AE191F50BE8278FDE4645FEABF759F0C4E0C8C55396E62BD3B89D794100ECA49F';
wwv_flow_imp.g_varchar2_table(63) := '2379F3A8E38DBD47F4D2CE9A5144DFBCA781021E79938FABE614D257EE5DAF97816F4B36DE85A91F80272D021080B470B933727F303266E8FFCD4F6DA0D280473A8C4F5D338B36AFACD2F3E5FB0FF41D7832220001C8089BBB12F50D8EE8159E5D5A4C37';
wwv_flow_imp.g_varchar2_table(64) := '2C2AD1F7657B1E5CB358CF323A7445F7C3931901084066DC5C95AA6F28210056BFE4643AB0C61F1F8906735F00A6ABAFD5C721005613CE03FBC6270D0BFC5E5B6B546CB8F4888643B696251F328700E4432BA20E20902101084086E0900C04F281000420';
wwv_flow_imp.g_varchar2_table(65) := '1F5A1175C849024E283404C009AD803280804D042000368147B620E004021000135BA1E3D479DA7BECEC0477AAE7B289B9D8604A9177C79F0DB573759610802C9B9FDF661B37D171FC34B5751C99E04E9D4F3CBF1F8F9B535B1B1F40CA294E6914D62951';
wwv_flow_imp.g_varchar2_table(66) := '210059B684A7A4224B0B480E02F611800064C9DE573E97027316136F8D4EF51B9FD3CFF121342E01B23C4B9C9B1C026042DB788ACB260A40A0C0605933F873D08B4B801C6CB4D48A0C01488D1362818069049C64080220A535ACBB043876E90A25730341';
wwv_flow_imp.g_varchar2_table(67) := 'F37E2948C3258094B3C48E4C200052A85B7709F0B7BFF98092B9436713AFEECAB68A0A2E01B245E8D8F41000C7360D0A0602D613800058CF183980804EC0691E0880D35A24CDF21455AFA2B81BBBF498A6214477250108802B9B1D950681AB0420005739';
wwv_flow_imp.g_varchar2_table(68) := 'E03F08B8920004404AB35BB70C28A7F889F21F39DB4B5B7FDA9AD41DEB37EF155DCFB79E4D9AC79FFE62AF5E6545C9ADD3572FB8833C20E8A0C6C885A20C0447E8BD8E5349DD5028625A158E5E1C489AC74727CEE979283EBFEE872733021080CCB82195';
wwv_flow_imp.g_varchar2_table(69) := '0308F0B3170E28464E1701026059F32586CD9665618361C5E31DF3DC83754548F0E3D50DEEEC71E79FBD880A17AF204F51A975D9BBC43204C0B28636DEFD67F45B96A175860D77022A1E9F2401483053030563F2F49694932284C8BA0A9B6FD9A9162100';
wwv_flow_imp.g_varchar2_table(70) := '4E6D19940B042410800048808C2C40C0A90420004E6D19940B042410800048808C2CDC4DC0C9B5870038B975503610B0980004C062C0300F024E2600017072EBA06C206031010880C58061DEDD049C5E7B0880D35B08E503010B0940002C840BD320E074';
wwv_flow_imp.g_varchar2_table(71) := '021000A7B710CA0702161280005804D7F8ACFA897317E9F5DD874C71BF3B70542FB1310F3DD00A8F927830C70AF3D3DBB43BFFE94B982C462E8441002C6A25C5EBD72D0F0D07A9FB628F29EE626F9F6E17CFC3EB28E0C9900004204370D325F3CEA820D5';
wwv_flow_imp.g_varchar2_table(72) := 'E21756F8CAE74E570C1C078129094000A6C493C54145A582CA7A0ACCAB225FC53CE2CE6A96C3F3F059B40B928E2100011883C3FC1D4FE10CF295CD315500A43F0F6F781F80F98452B1987837402AB19D102757CA0001C89596423941C0020210000BA0DA';
wwv_flow_imp.g_varchar2_table(73) := '66D2305B7FE8D4797AF3D01953DCC15317135532E49108B4DA875500AB084300AC226B835DE36BB2F61FEB16CB8EEDA6B803C7BBF5DAA85E9FEE97E7C1258055AC21005691B5C12ECF0D589DAD77C64CABB3C879FBB9540108402EB5D63465E5B7E406E6';
wwv_flow_imp.g_varchar2_table(74) := '551377524F413199E97CA5B3A860C1325285DD698A61C1615C0258003566120210C3903FFF3C8525E49FB59002F3979AEA7C3317901A28B209142E01AC020F01B08A2CEC82400E108000E44023A188B94320D74A0A01C8B51673587915D5A397E8C1EFFD';
wwv_flow_imp.g_varchar2_table(75) := '2B353CF34B53DC3FBC7B50B7ABA85EDD0F8FB9042000E6F2749D35D55F60799D65E46179251C9A0104C0A10D932BC58A4D0EFA029615D75B52419EE232CBECBBDD3004C0ED674096F5E76FE782CA3A2A5C544F0562E5C134B7A0868AAA1AC83FBB32CB12';
wwv_flow_imp.g_varchar2_table(76) := 'CA4B9E8B3949118088E689E4221C943975028AD71FBB4780EF1330C5050A891429A72739F14FF1292332CA2585B0578B420064B426F2C81B02112D2CA5CF4811005995C99BD647455C4F20ACF9F247006455C6F5670D00D846C0EC8C033E6FD86C9BC9EC';
wwv_flow_imp.g_varchar2_table(77) := '491901C8AA4CB20A220C0472914028AF2E01C2DA502E3602CA0C02761150239EFC99041C291E1CB40B24F205815C2420ABCF48B904D8FFE995AC66C15C6C08941904A62360C1F1E0689FB1C0F4589352046034CBC46B654603B0010110484A405A5F8100';
wwv_flow_imp.g_varchar2_table(78) := '24E58F4010B09540E2E79F2C2E0604C062C0300F02E9125088F26F04202A9578BE335D22880F020E256051B1F27104A0B45A040B664120CF08C8EB2BD22E01548A4000F2EC344575AC2120B3AF4813805DC7EADB05AEA870F88000084C4E6070B4AF4C1E';
wwv_flow_imp.g_varchar2_table(79) := 'C3C423D204809E5244E7D73A087F209027042CAAC65E8AF51592F2274F004475145270192038E0030293115024F711A90240A4BD3959C5110E0220C004A252BF24A50A4024ACFC425451130E1F1000818904348A467F3E31D8BA10A902B0E7D1BA93A22A';
wwv_flow_imp.g_varchar2_table(80) := '7B84C30704729A804585DFB3FB732B4E5B643BA959A902C02550885EE32D1C0880C0580276F40DE90220C6FF1080B1ED8E3D1088111002F04ACC23F19F7401F08CF4ED14F53B261C3E2000020902C74B8F9DFC20B12BC7275D00763D766D48546DBB70F8';
wwv_flow_imp.g_varchar2_table(81) := '80404E12B0A8D02D6F3E759B94F7001ACB2F5D00387325E269115B713520FEE303026E27A050D8A3AADBECC0608B00EC7E64D93171BDF31B3B2A8C3C41C0710434FAE5AE876B8EDB512E5B04802B2ABEFE9FE52D1C0880007D8B6CFAB34D005A9BEBDE14';
wwv_flow_imp.g_varchar2_table(82) := 'A3805FDB546F640B021911303B11F701EE0B66DB4DD59E6D02102B6034FA446C8B7F20E052026152FFC4CEAADB2A00BB3FB7BC4D54FE55E1F00101371278756F73CD5E3B2B6EAB0070C5D588F265526880FD7020E02202573C0A7DC9EEFADA2E001F3E52';
wwv_flow_imp.g_varchar2_table(83) := 'DB491A3D693708E40F02D31130F3B842DA97776DA9EB32D36626B66C17002E745D71ED7748D1DE663F1C08B8807A95F2670000049049444154C0CEDDCDF5DF77423D1D21002F7C5A89A861B51997024E382550068B09F0D0FF618BF348D9BC2304804BCB';
wwv_flow_imp.g_varchar2_table(84) := '97026258B445F8A3C2E10302F94820AAA9CA7F71C2D03F0ED73102C005DABDA5FE67625DF47FB11F0E049C44C0A4B27CA9EDE1DA974DB2658A19470900D7687773DDB3E252809F15E05D3810C81302CAB75B9BEB6CBBE36F32888E13002EA827D8F798D8';
wwv_flow_imp.g_varchar2_table(85) := 'FE8B70F88040EE13D0B4975B8FD57CD1891571A400F023C39E91E20714525E722234940904D220F0AA2754F25992F8AA6F4AE3CF9102C0E5DFF5D8C2C1DD5B6AFEA3A228CFF03E1C08D84520E37C15FA46EB96DA4FF2B99CB10D8B133A560062F556146D';
wwv_flow_imp.g_varchar2_table(86) := 'F796DA278508F0B2492416867F20E07C0223621EEBB3AD5BEABE4AE21C7672719D2D00A3E484083C1FD5B49B88B443A341D88080230928447B95A87A93E8FC3F766401C7152A270480CBBC676BFDEFCAC9D728FC7F261CBF564C6CF00101C7100869A43C';
wwv_flow_imp.g_varchar2_table(87) := 'AD8EF4ADDFFDB91AE9EFF6CB9442CE080057F0CDE6A5C36229E5294D555709A5FD270E8303012B09A4605BF47B7A518D280D6DCDB55FE709EC14D238264A4E09409C5ADBC335EDBB9BEBEE13D757378B307ECBB0D8E00302D209BCA9A9B45E0CF7FF13DF';
wwv_flow_imp.g_varchar2_table(88) := 'C92A3D771332CC490188D7BB754BED4E3122B85954E2068DE847223C281C3E206025013EC77ECC5F3EE2DCBBADEDE1BADD566666B56DD177ACCEC27AFB1F36D7BDD7D65CF7906724BA883485DFB0D2657DAEC8C165040E93A23DC1E798E8F86286BF362F';
wwv_flow_imp.g_varchar2_table(89) := '469E792100F11371D763CB2FB46EADFD6BD140B59A46778BF0EF8AB98213628B0F08A44D2076EE28F43DB1FA74A738A76A5AB7D47F93CFB1B40D3938415E09809173DBD6BA5F8B46FBBC982B58A244A38D9AA6F14B477688385784C307049211E0736387';
wwv_flow_imp.g_varchar2_table(90) := '42DAD745A76FE273A7754BDD1FB436D7E7ED6DE9792B00C6D6E5770FB66DAD7FA6B5B96EB37025114DABD148FB941825FCB988C7EF246C155BA9BFCA2AF2C3C73E02DCD6DCE6AFF239C0E78247A15A3E3784DBBCBBB9FE69D1E9F9B87D259494B32B0460';
wwv_flow_imp.g_varchar2_table(91) := '3CCBBD5BEB0FB735D7BF2446097FDADA5CF780704DC2550AA70C5CA602226FC5087917F8346549D4E35B46A4D62B1AAD54D5C8DAA846EB5545B916CE790C626D23DA88DB8ADB8CDB8EDB90DB92DB94DB96DB58386EEB26B17D80CF8136712EEC72C0EBB9';
wwv_flow_imp.g_varchar2_table(92) := 'C69FA732F6551999E4521E9D5FA80BB6362FEDDDDFBCB4FBFDADB527F63C547DA4B5B9A663F7D6BAFD1F3EBC62CF9EAD751F7EB8A576179CF318C4DA46B411B715B719B71DB721B725B729B76DAAE7A25BE24100DCD2D2A82708242100014802054120E0';
wwv_flow_imp.g_varchar2_table(93) := '16021000B7B434EA09024908400092404190BB09B8A9F6100037B536EA0A02E3084000C601C12E08B8890004C04DAD8DBA82C0380210807140B0EB6E026EAB3D04C06D2D8EFA8280810004C000035E10701B010880DB5A1CF50501030108800106BCEE26';
wwv_flow_imp.g_varchar2_table(94) := 'E0C6DA4300DCD8EAA833088C1280008C82C00604DC480002E0C656479D416094000460140436EE26E0D6DA4300DCDAF2A837080802100001011F10702B0108805B5B1EF506014100022020E0E36E026EAE3D04C0CDAD8FBABB9E0004C0F5A70000B89900';
wwv_flow_imp.g_varchar2_table(95) := '04C0CDAD8FBABB9E0004C0F5A780BB01B8BDF6FF0E0000FFFFB6CEEC7300000006494441540300431B20E2F43077DA0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(11893428836985992)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD09941DD779D8F9AFDEDA7BA3BBD10B1A3B0112244082101771154591922859B263399222CB8E2D8FEDC8CA58766227B6C7679CD8F1CC39';
wwv_flow_imp.g_varchar2_table(2) := '3327939949668E774BF68997C4B6642992652D312989122992A2B8821B00626FA0D1007A5FDE9EFB3D0864A3D1B5BCEEB754D5FD3759DDEF55DDBA75BFDF6D747D756B7989039F3E5461C280DF017E07F81DE07780DF01BB7E0712C21702082080000208';
wwv_flow_imp.g_varchar2_table(3) := '5826204202605D9713300208208000022400FC0E208000020820609D8006CC08802A302180000208206099000980651D4EB80820800002B60B5C8A9F04E09203DF114000010410B04A8004C0AAEE26580410400001DB052EC74F027059829F0820800002';
wwv_flow_imp.g_varchar2_table(4) := '0858244002605167132A0208208080ED026FC64F02F0A605AF104000010410B0468004C09AAE26500410400001DB0596C74F02B05C83D70820800002085822400260494713260208208080ED0257C64F0270A507EF104000010410B0428004C08A6E2648';
wwv_flow_imp.g_varchar2_table(5) := '0410400001DB0556C64F02B05284F70820800002085820400260412713220208208080ED0257C74F0270B5097310400001041088BD000940ECBB980011400001046C17582D7E1280D5549887000208208040CC05480062DEC184870002082060BBC0EAF1';
wwv_flow_imp.g_varchar2_table(6) := '9300ACEEC25C041040000104622D400210EBEE25380410400001DB05DCE227017093613E020820800002311620018871E7121A0208208080ED02EEF19300B8DBB004010410400081D80A9000C4B66B090C01041040C07601AFF84900BC74588600020820';
wwv_flow_imp.g_varchar2_table(7) := '80404C05480062DAB184850002082060BB8077FC2400DE3E2C4500010410402096022400B1EC56824200010410B05DC02F7E12003F2196238000020820104301128018762A212180000208D82EE01F3F0980BF1125104000010410889D000940ECBA9480';
wwv_flow_imp.g_varchar2_table(8) := '10400001046C1708123F09401025CA2080000208201033011280987528E12080000208D82E102C7E1280604E944200010410402056022400B1EA4E824100010410B05D2068FC240041A528870002082080408C04480062D49984820002082060BB40F0F8';
wwv_flow_imp.g_varchar2_table(9) := '4900825B5112010410400081D8089000C4A62B090401041040C076815AE22701A8458BB2082080000208C444800420261D49180820800002B60BD4163F09406D5E944600010410402016022400B1E846824000010410B05DA0D6F849006A15A33C020820';
wwv_flow_imp.g_varchar2_table(10) := '8000023110200188412712020208208080ED02B5C74F0250BB196B2080000208201079011280C87721012080000208D82EB096F84900D6A2C63A082080000208445C800420E21D48F311400001046C17585BFC24006B73632D041040000104222D400210';
wwv_flow_imp.g_varchar2_table(11) := 'E9EEA3F10820800002B60BAC357E1280B5CAB11E020820800002111620018870E7D1740410400001DB05D61E3F09C0DAED5813010410400081C80A900044B6EB68380208208080ED02EB899F04603D7AAC8B0002082080404405480022DA71341B010410';
wwv_flow_imp.g_varchar2_table(12) := '40C07681F5C54F02B03E3FD6460001041040209202240091EC361A8D0002082060BBC07AE3270158AF20EB238000020820104101128008761A4D4600010410B05D60FDF19300ACDF901A104000010410889C000940E4BA8C062380000208D82E508FF849';
wwv_flow_imp.g_varchar2_table(13) := '00EAA1481D082080000208444C800420621D467311400001046C17A84FFC2400F571A4160410400001042225400210A9EEA2B10820800002B60BD42B7E12807A49520F02082080000211122001885067D1540410400001DB05EA173F0940FD2CA9090104';
wwv_flow_imp.g_varchar2_table(14) := '10400081C808900044A6AB68280208208080ED02F58C9F04A09E9AD4850002082080404404480022D251341301041040C07681FAC64F02505F4F6A430001041040201202240091E8261A890002082060BB40BDE32701A8B728F521800002082010010112';
wwv_flow_imp.g_varchar2_table(15) := '800874124D4400010410B05DA0FEF19300D4DF941A11400001041008BD000940E8BB88062280000208D82ED088F849001AA14A9D082080000208845C800420E41D44F310400001046C17684CFC24008D71A556041040000104422D400210EAEEA1710820';
wwv_flow_imp.g_varchar2_table(16) := '800002B60B342A7E128046C9522F020820800002211620010871E7D0340410400001DB051A173F0940E36CA919010410400081D00A900084B66B68180208208080ED028D8C9F04A091BAD48D0002082080404805480042DA31340B01041040C07681C6C6';
wwv_flow_imp.g_varchar2_table(17) := '4F02D0585F6A4700010410402094022400A1EC161A850002082060BB40A3E3270168B430F5238000020820104201128010760A4D4200010410B05DA0F1F1930034DE982D208000020820103A011280D075090D4200010410B05DA019F193003443996D20';
wwv_flow_imp.g_varchar2_table(18) := '80000208201032011280907508CD4100010410B05DA039F1930034C799AD208000020820102A0112805075078D4100010410B05DA059F19300344B9AED20800002082010220112801075064D4100010410B05DA079F1930034CF9A2D218000020820101A';
wwv_flow_imp.g_varchar2_table(19) := '011280D074050D4100010410B05DA099F1930034539B6D2180000208201012011280907404CD4000010410B05DA0B9F1930034D79BAD218000020820100A0112805074038D4000010410B05DA0D9F19300345B9CED21800002082010020112801074024D';
wwv_flow_imp.g_varchar2_table(20) := '4000010410B05DA0F9F1930034DF9C2D228000020820D0720112809677010D4000010410B05DA015F19300B4429D6D228000020820D0620112801677009B4700010410B05DA035F19300B4C69DAD228000020820D05201128096F2B3710410400001DB05';
wwv_flow_imp.g_varchar2_table(21) := '5A153F0940ABE4D92E0208208000022D14200168213E9B4600010410B05DA075F19300B4CE9E2D238000020820D03201128096D1B3610410400001DB055A193F09402BF5D9360208208000022D12200168113C9B4500010410B05DA0B5F19300B4D69FAD';
wwv_flow_imp.g_varchar2_table(22) := '238000020820D01201128096B0B3510410400001DB055A1D3F0940AB7B80EDAF5DA052964A312FA5851929CE5C90C2D439C95F1893FCC449C98D1F93DCD9A39726F33A3F71AABA4CCB68D9D2E26C75DDB56F9C3511400081680B900044BBFFAC6B7DA55C';
wwv_flow_imp.g_varchar2_table(23) := '92722127A5F969B3433F23B97366677FEE84E42F9EA92600C5D98B5234CB4A8B73525A9ABF3499D7C5F929D165054D124C594D0874DDFCF9D3529C9BACD6A9755B074AC00820D02281D66F9604A0F57D400B820898A37DDD79E7CE1E93A5D38724678EF2';
wwv_flow_imp.g_varchar2_table(24) := 'AB3BEEFC6290B5AF2AA33BFBB25957EBD024A05AA7A95B93045D76D50ACC400001046226400210B30E8D5B38BA332E4C4DC8E2A9D7AA47F8BAD36E548C5AB79E42D064A0303D21BAED466D8B7A1140C06E8130444F0210865EA00D5709E8CE57CFD5E7C6';
wwv_flow_imp.g_varchar2_table(25) := '0E9B1DFFB8544AC5ABCA346A866EAB30392EB9334744DBA06D69D4B6A8170104106895000940ABE4D9AEAB805EA0A717F01526CF4AB958702DD7E805E542BE7A6D41FEDC09D136357A7BD48F0002B60884234E128070F403ADF8BE40716E4AF2E74E4A39';
wwv_flow_imp.g_varchar2_table(26) := 'BF24954AE5FB735BFB432F26CC4F9CAA5E78D8DA96B075041040A07E022400F5B3A4A6750A14F40AFDF3A7CC8EBFBCCE9AEABFBA9E06C84D9C14BD36A0FEB553230208D8241096584900C2D21336B7A35296FC85D3A209C05A187ABA3A64CFF6CD72D7FE';
wwv_flow_imp.g_varchar2_table(27) := '3DF2E06D37C97BEF3C20EFBFE72DF281B7DD2A3F72DF6DF2FEBB0FC87BEED82F0FDCBA4FEEBC698FECD9B1457ABBBBD6B22929E8B501E69480C952D6B43E2B2180000261112001084B4FD8DA0E33CCAFF7F01767276B1218E8ED91FDD7EE9087EEBC59DE';
wwv_flow_imp.g_varchar2_table(28) := '75EB5EB965F716D935D4279B3674CA40579B6C68CF4A67362D1D99946CE868938DDD1D32DAD72DBB87FBE4965D9BE581037BAA89C22D7B764ABFA9CB7124F0973E784847034802029351100104DE1008CF8B44789A424B6C1428CC9C975A76FEED998C1C';
wwv_flow_imp.g_varchar2_table(29) := 'D8738DDC7FE03AD9BF7D4406BBDAA53D9D92640D7B702DABC981260A7BB70E9BBAF6C86D37EC96AE8EF6C05DA0494061F26CE0F21444000104C22690085B83688F3D02FA109E8219520F12712A913047FC3BE507EEDA2F376E1DAAEEF483AC17A44C473A';
wwv_flow_imp.g_varchar2_table(30) := '297B4637CA7BEFB8496EDCB55D32A95490D5A43073810B030349510801042E0B84E9270940987AC3A2B694738B52B8301628E2DEAECEEA50FFFEEDC375DDF1AFDC78369990033B37C9432611E86E6F5BB978D5F7FA14C1F2D2FCAACB9889000208845980';
wwv_flow_imp.g_varchar2_table(31) := '0420CCBD13D3B6E907F8E4CE1D37A7D0FD6FF31B19E893B7DFBC47FA3AB24DD3E86DCFCA436FBD4906FB7A7DB759A95EC03856BD6DD1B730051040C0728170854F0210AEFE887F6BBE7FD19F3E6DCF2FD82D238372F7BE5DD2D39EF12B5AF7E56DE6B4C0';
wwv_flow_imp.g_varchar2_table(32) := 'FD07F6C8E8D0806FDDFAE144C5E909DF721440000104C224400210A6DEB0A02DFA509DD2C2AC6FA4A31BFBE49E1B7656AFE2F72DDCA0027A4AE05E93800449024AFA91C473B5DDC9D0A0667B576B123031A316FA5C83E593CE135DE6BD364B1140601D02';
wwv_flow_imp.g_varchar2_table(33) := '615B9504206C3D12E3F6E8517F908BFE7A3ADAE49E7DBB256DCEC9B79A2363DA70CF8DBBA5B7A7DBB32915B3F32C4E9F9730EE442BC582E8750AD58B2ECD4885DE76993F7742F471CB3AE5274E561F795C30EDD732A5C539A914F39EF1B2100104A22F40';
wwv_flow_imp.g_varchar2_table(34) := '0210FD3E8C4C04BA73D14FDCF36A707B362BF7ECDF23593304EF55AE99CBB20947EEBB69B764D269CFCD564F05846014A0DA8E990B92333BF9A553AF5EFAF8E4F163D58B2EF5614B7ADBA58EC4E8E39675D21DBECE2B4C8D57CBE4CF1DAFAEB374FAB56A';
wwv_flow_imp.g_varchar2_table(35) := '1DFA81485ACE3378162280808F40F816930084AF4F62D9221D6E2E05D839DE7EC33532D015FC7EFC6661F5B667E58EBDBB7D37A73B588DD5B7609D0BE811BBEEA897C68E548FEC0B9367454F4BE887295574C8DF8C5054CCE4B7592D7379D20F43D23AB4';
wwv_flow_imp.g_varchar2_table(36) := 'AE9C492096AA9FCC38C1E8801F22CB118888000940443A2AEACD2CCE5C14DDA178C5B163D3906C19F0BFF2DEAB8E462EDB3ED8EB7B67809EE62805B8C6A15EEDD4644377FCB9F1E3D5617C1D61D136E84EBC6EDB308983D6A9A3003A4AA0230BBA4D3189';
wwv_flow_imp.g_varchar2_table(37) := '45BDB6413D08C45D208CF1910084B15762D8A6D2C2B46F54FB768C8A196DF72DD7CA0207766FF33D15509A9F32FBC652C39BA99F9C583D877FF18C49AE720DDFDEE50D6822A0D7112C9D3D561D651093205C5EC64F0410888E00094074FA2AB22DAD140B';
wwv_flow_imp.g_varchar2_table(38) := '522978EFA0AEDDBE59FA3ADB421FE3706FA76C1F1DF26CA73EE4A8D2C08BE8F4A85F9FA3903F7F4A7467ECD998062E2CE716AAD708683BB44D0DDC14552310718170369F04209CFD12AB56951667CD41A2FB437F5289A4DCB86D2432315F3BBAD1F37303';
wwv_flow_imp.g_varchar2_table(39) := '7467A857DD3722A0726ED19CE3D7236FFF5B291BB1FDD5EA2CCE4F4BEECC91962623ABB58B790820E02D4002E0EDC3D2F50A98E1E192D941785533D8DF5BFDE43EAF32615AD6DFD92E9B36F67936A9B4B4E0B97C2D0BD5313F71C2EC6817D7B27A43D729';
wwv_flow_imp.g_varchar2_table(40) := '17F2921B3F56BDDDB0A11BA27204222810D626930084B56762D2AEEAC563E6A8D52D9C5422213B360DBA2D0EEDFC5193B47835AE5258323BEA25AF22C1979924AAA0F7EF9F3F2D7A557FF01545D4B7A32D2BBB4707E5DE7DD7C843B75E2F3F74C75EF9E0';
wwv_flow_imp.g_varchar2_table(41) := 'BDFBE5A3F71D901F7BFB01F9F0DB6E92F7BF75AFBCF32D7BE4EEBDD7C89EAD23D2D9DE565D576AF8D2BED624A038A3CF4328D7B026451140A0150289566C946DDA2350BD2ADDE36AF18E8E36D9D8D319399001D366DDB9BA35BC522C9804A00E47EAC64E';
wwv_flow_imp.g_varchar2_table(42) := '2FB82B4C8E9BD328C177AA99544AEEB861BBFCC40307E4577FE80EF9D87D7BE53D376D95B70700A81600001000494441545D3B2C6FDD392807B6F4C9DED15EB96153AFECDFDC2F775E3328F7EF19911FD8BF55FEE93D7BE45FBDFF76F9B1FB0FC8ED7BB6';
wwv_flow_imp.g_varchar2_table(43) := '579301B73857CED7BB0FF217CF56EF48300D5EB998F708582810DE9013E16D1A2D8B834039EF7DF15F5F5797F4B6E059FFEBB5D50715793D2258778495FCFA47000A5313529CBD18B8B91BCCE989F7DDBE577EE907EF901FBC79875CB3B15B926BB8B542';
wwv_flow_imp.g_varchar2_table(44) := '9FC278ED50B7FCA3B7EC905F7EDFEDD51182FEEE8EC0ED28CE4E4A616A3C70790A228040F30548009A6F6ED716CB45CF78FB7BBB3C97877561C27164C8E73440ADC3F52B63D5272716672EAC9CBDEA7B1DB2BF77DF4EF9C4BB6F91BB760D4A5736B56AB9';
wwv_flow_imp.g_varchar2_table(45) := 'B5CCCCA412D51102ADFBC103D74A8739A510A41E6DBB5EB710A42C651088AB4098E322010873EFC4A06D95B2F7B07567C09D49D8281CD3A0EEF6ACF9EEF17F79EDCF02D053274187FDB70DF5CB87EFD96786F8B74967B67E3BFE9591B5A793F28EEB47E5';
wwv_flow_imp.g_varchar2_table(46) := '4377EF93D18D1B562EBEEABD8E82E4F5BA059F5B40AF5A91190820D014011280A630DBB9113D0FAEB7C479459F4C46F757B02D9D121D09708B4F77806ECBBCE6AB997E588F5E54E7554E97DDB473B37CF49E1B64D7C6E68DA4E8A9817F7AEF5ED9B3D5FB';
wwv_flow_imp.g_varchar2_table(47) := '7908DABE8A5EC370EE84E8EF82BE6742C02E8170471BDDBFBEE176A57546407764E273149C4E44F757B03D9316C7D1B10013EC6AFF9B9DDF6AB3FDE61526CF4A90D307EFD87FADFC933B76D775B8DFAF6D979777B7A5E5C7EFBE5EEE376DB83CCFEDA77E';
wwv_flow_imp.g_varchar2_table(48) := '38915EC8E8B69CF90820D01A81E8FEF56D8D175BAD49A022FAC7DF6D9564222189088F00E885728E386EE199F96659C5FD0148A6C055FFEB27F395E6FC1F9B7CDF4DBBE4C1BDA357ADDFCC198EE3C883376C9207DE72BDEF66F5C1481A9B6FC1B01430C9';
wwv_flow_imp.g_varchar2_table(49) := '9B26B03A89791D9666D18E680984BDB589B03790F64559C011C7ECE4DD22A8E8CE5127B702219F7FE9EA069F1DBCE3048E427736C5D90B52F1D9E11CD8B5D5EC783707AEB791051DC7917B760DCA81DD5B3C37538D6D7AC2B34CB3176A9BF4C98A7AB165';
wwv_flow_imp.g_varchar2_table(50) := '61725CF47A05FDA0237D96817ECE817ECE824E4B678E8AFED4655AA6604668741DBD4E43EB6876BBD91E02F5122001A89724F55C25E02492E2A43257CDBF3CA36C76FE459F8B042F970DE3CF62B1249EBB7FB373ACA5DDA5B929F1FB24C1EDC3FDF2D04D';
wwv_flow_imp.g_varchar2_table(51) := 'DBD6746B5F2D6DA9A56C36959077EFDB26A31BFB3C572B2DCD4BCBEF0A30C95539BF247A8742FEFC29D19D7DFEFC69D1072DE94EBDB430233A5251CE2D8896BB342D4AB5ED669996294C9FBF942C9C3D667E9E92E2EC45A98E7499DF674F00165A2610FE';
wwv_flow_imp.g_varchar2_table(52) := '704900C2DF47D16DA139FA7712DE57A5EB4E34AA01E68A4573B4EE9E02384EF0A37F313BA6C2D4394F0ABDEBE003B7EF91EE366F53CF4A1AB4B0A73D2D1FBEEB7A694FA73DB7E017A3E7CAEB596876CEBAA3D6A3F9A5B1C3D507159516660DFBDAEFD4D0';
wwv_flow_imp.g_varchar2_table(53) := 'A37FAD237F614C964E1FAA2613FA098D62B6B59EA6B22E02CD1220016896B485DBB93402E0BD432896DD77A061275BCA17454731DCDAE92483EFA88BB393A23B14B7BA74FE3BDF72AD6CEC721F51D132AD9C367666E4ED375FE3D9043D526EEA288049AC';
wwv_flow_imp.g_varchar2_table(54) := '8AE6087D69EC90E88E5A87ED3D1BB88E853A4A9037A30ABA2D1D29301DBA8EDA5835EA0251683F0940147A29C26D749249CFD6CFCCD7E171B99E5B68DCC28BB33E6D37A740826EBDBAC3F028DCD3D12607B6F47B9408C7A25BB70FCA80CFC39D7487DCF0';
wwv_flow_imp.g_varchar2_table(55) := '9DA3D9F16BA2B13476440A17CF9821FA7CD380CA85BC147454E0CCEBD5531E7E895DD31AC6861058214002B00284B7F5157092DE23001767E7EABBC126D5562C9765FCE294E7D69C9477EC9757D6FBFD2B3E0FCBB975F7D6509DF7BFDCF6953FDBD349D9';
wwv_flow_imp.g_varchar2_table(56) := 'BB6D78E5EC2BDE57CFAF9B9DE41533EBF8A69C5B94DCC429D1A3711D71A8B460485EB7A9D70FE4264E5E6A47AEFE9F0E594732AAAABB40342A240188463F45B6954EDA7BC87A767E41A616D6FFCCFC66032D154A3231E97EBB9E934C4922D31EA8597AD1';
wwv_flow_imp.g_varchar2_table(57) := '99EE30DC0AEBB9FF3B760DB92D0EDDFC03DB36CA86AE0ED77669ACBA73742DB08E057AD49F3B775C4A0B33A2DB594755755BB5B4302BB971D3A679F7DF97BA6D8C8A10A8418004A0062C8AD62EE0A43292F038125E5CCCCBC44CF48E8E2666E6A55872BF';
wwv_flow_imp.g_varchar2_table(58) := '80AC1A773AEB0FA643D56667E55570F7E6E1963CECC7AB4D5ECB063BB3B26378C0AB889417CDC84F9D8FCCF5D4821E71EB888AE7C63D16EA759B995442BADAB2B2B1BB43067B3AA4BB3D239994F7A92CF1F9D2D300DA366DA34F5116C740202A21900044';
wwv_flow_imp.g_varchar2_table(59) := 'A5A722DA4EC7494822DBE9DAFA62B924E726675C978775C1B84F9B1399AC381E89CFE5B82A2689A8EE0C2FCF58E5E78EA1DE55E686775622E1C8BE2D3E09407ED19C97F7FEA4C85A222C4C4D885EE457CB3A5AB62393963BAEDD2CBFF6FEDBE52F7EF61D';
wwv_flow_imp.g_varchar2_table(60) := 'F2D55F7848BEF2C977C9DFFDCFEF90CFFCB3FBE46F7EF63EF9E227DE215FFEE483F2D55F7C97FCF9CF3C20BFFAFEDBE4ADBB378B9EEED03A6A99B48D05BDDBA3CEC94F2D6DA02C02970548002E4BF0B33102E6902AD9D1ED59F7D9F393528AD0DD009366';
wwv_flow_imp.g_varchar2_table(61) := 'D442DBEC159457D2B37CBD4A316F86AA2F3D5268F9FCCBAF073774C9960DEE09D4E57261FB396C8E9CB3A9946BB3AAE7E67DAE7B705D79C58282D9F9176AFCE8E16D033DF2E3F7EC953FFED8DBE4FFFDE19BE4270E0CC981E10ED9DC9D92E1CE940CB627';
wwv_flow_imp.g_varchar2_table(62) := 'DF9C3A5232D299962DDD1979CB48BBFCE48161F98F1FD82F9FFAD8DBE527EFDB275B37F6AC6891F7DB82490074F22EC5D2E80A44A7E589E8349596465520D1D6298E1909706BFF622E27CF1D3BE3B63874F38F9DBD20730BEE7700388E23894C9B04F9D2';
wwv_flow_imp.g_varchar2_table(63) := '1DA157B94DFDBD32DC93F52A12CA65DD6D49B96EEBB067DB2AA582E7F2200BF5013EB5ECFC7528FF130FDE2C7FF86377CAAFBF63A7DC3CD42EBDD964904D5D51A6379B909B87DBE557EFDB217FF0A377CAC71FD86F4604D25794F17A73A9DDE17A32A257';
wwv_flow_imp.g_varchar2_table(64) := '7B59164F01128078F66BA8A2D20BE2FC86C35F3B765AE6F3C550B57BB5C64CCE2FC9E193DEC94AA2BD4BFCE2BD5CB79E02B8FC7AB59FDB36F6AE363BF4F3D2C9845C37EA7DDB62A5B4BEFED60BFE0A93E3812C52A63D1FBE6B8FFCFDCF3F289FBC6B8B6C';
wwv_flow_imp.g_varchar2_table(65) := 'ED09BEB3F6DBC0F6DEB4FCE2DD5BE5F3FFFC1DF283B75E2BBA2DBF7574B9262E259FEB3FB41C53B404A2D45A128028F55684DB9AECDCE0D9FA62B924AF9E0CF6C7DCB3A2062F7CF9E439C9E5BDEF294FB6778B3E042950532AEE1712EAFA035DC14612B4';
wwv_flow_imp.g_varchar2_table(66) := '6CD8A6A16EEFB6578A6B4F002EDDEA773250C83B877AE52F7EFA7EF9CD0777CBA6AEFAEDF865C5D796EEB4FC9FEFBD4E3EFD53F7CBA6BEAE154B577F9B3F7F5A1AF970A2D5B7CA5C042E0990005C72E07B830552DD7D92487B0F65BF767C4C4E5D9C6D70';
wwv_flow_imp.g_varchar2_table(67) := '4BD65EFDD9E9453931E69DA4E86847B233F8517BA5E49D00E890F5DA5BDCDA35DBD329CF06547C921FB795F5BA89FCF9536E8BAF987FEF9E2DF2FB3F7A87DC6886FAAF58D0C037B78EB4CB9FFEC43D72D7755B7CB7A27707E4CF8F89C6E45B9802111088';
wwv_flow_imp.g_varchar2_table(68) := '56134900A2D55F916DADEE183509F00A4047019E3D7C422E86F0E980F3B9823CFAEC4BA26DF48A21DD3B18FCE8DF545429BB1F053B8E8819B936A5A2F97F2AE17837BCEC7EF1A3EB8A95B214A626C4EFDA89A4D9F68FDDBD57FEC33FBA49F4C8DCB5BE06';
wwv_flow_imp.g_varchar2_table(69) := '2DD8D29D92FFF4819BE49FDC79BDA412DE7F66750440AF0910135B839A43B508AC2AE0FD9BB9EA2ACC44606D02C92E330A90757F408CD63A35332BDF3B745272A535EC1CB482064C8B85A27CF3F943922B785FB47629C9E90FDE02BD15CC632798D40B27';
wwv_flow_imp.g_varchar2_table(70) := 'A3FB5109267971CCE4FE27A6FAA01E3590E05FA58559F17B6CB2D6F6C1B7EE915F7F60A77467DCB7AFE51A3975A613F26FDEB95BFEF11DD7F96EA6383B291A9B6F410A845A206A8D6BDDBF8EA849D1DE750BE879F174CF806F3D67CF5F94275E3E2A35EE';
wwv_flow_imp.g_varchar2_table(71) := '1B7CEB5D4B017DE4EF379F3B2417A6BD9F55E0388EA4FB4644CC4FA9D357D900388ECF51749DB6D5886A12E6C8B7BA9377A9DC716A8BAD522E99A37FEF4F4CD44DDD7FC356F9576FDF29B5D5AE6BD67F72A422BF6ADAF2C0BEEDBE95EB4581C22880AF13';
wwv_flow_imp.g_varchar2_table(72) := '05EA274002503F4B6A0A20A057C827DB3A7D4B9E383B218F3CFF9AE8D0BB6FE10615D023FF479E7D4D26A6FC1FE19A30231BA9CE9EDA5AA23B40B393745B49138082CF35026EEB8661BE3E2E5963F06C8B1A7816787361696ED2F75CF92D3B46E4B7DEBB';
wwv_flow_imp.g_varchar2_table(73) := '4FF4E8FBCD355BFBAA2D9590DF7CCFF572C39641CF86548A0529F2B8604FA3702F8C5EEB4800A2D767916E717514A07F441C1DDEF689646CE2A27CEB85C33231E77ECFBD4F156B5E7C717E49BEF6F44BBE1FF8A31BA80EFD9B73FF1220262DBF7C729CE4';
wwv_flow_imp.g_varchar2_table(74) := 'F2B757BD2E94A27B0E603EE77E7D4335508FE4A7BA7CF937331A529CBD285E230A7AFBDD6FFCC08D32D8E16DBABCDA66BDDED89E927FFF81039E8F14D6D88AD31362826C56B3D88EE502240096FF02B422FC44A6DD0C970F8BE3F80FD2EAD1F7B79E7D45';
wwv_flow_imp.g_varchar2_table(75) := '8E4E787FF25EBDE2D007121E3F3F2D5F7BEAA0CCCC05FB8C8274DFB024DB83DDF6B5B29D7E1F979C2B7ADF25B0B2BE30BD9FCBFB5C33E193FC2C8FA5383F25659F4F10FCC85DD7CB9E7EEF3B4D96D7D9ECD7D7F466E4876EDDEDB9598DB1C4B3013C8DC2';
wwv_flow_imp.g_varchar2_table(76) := 'BA308AED22018862AFC5A0CDA99E0149F56C0C14C9FC524EBEFDDC2BF2ED978E35F494C0DC525E1E7FF9A83CFAECCB5230C3B1411A97DE302CA9AEBE2045572F93F4BE556ECEEF287AF55A43317776C9270148063C52D7A3FF990B9E31A54D5D1FBB6DAB';
wwv_flow_imp.g_varchar2_table(77) := '6799302CFC993BB68B7EFE80575B74A443B816C08B886575122001A81324D5D42E90DE3024A9EEE057CD1F1D3B2B7FF7C40BF2C2F17129999D42ED5B5C7D8D7CA96CEA3C2B5F78EC5939EA739FFFF21A529D1B24BD6170F9AC9A5FEB2911AF9526A6E7BD';
wwv_flow_imp.g_varchar2_table(78) := '16877659C50CA59C999CF36E9F4FF27379E54AA928159FCF0DF8C7775C2BA35DDEC9D4E5FA5AF9735B4F5A7EF836EF5180D2D2BC54227CED472B7D5BB7ED686E9904209AFD168F569B53003A7C5ECB11743E9F97E70E1D952F3D79505E38312EA7CD4E66';
wwv_flow_imp.g_varchar2_table(79) := '2D170AEAD0FA99A97979FAC829F9CA13CF9B3A8F49C9E396BC95E09AB86406FD1FF4B272BD95EF1319EFA7E59D32A723A617BD8FA457D61986F73366E4E2E859EFA3F6442A13A8A9E5DC82E8F971B7C283BD1DF2D1B7ACBF2FDCEAAFF7FC0FEC1F95C1DE';
wwv_flow_imp.g_varchar2_table(80) := '4ECF6A3566CF022C44A00E0224007540A48AB50BE81170BA7F44D2BD1B035D1370794BD3B373F2DC6B47ABA7061E7DE1B03CF9DA49796DEC42F549826393B3326E8E9C27661745A7B3330B3236352727CCCE54CB3C7DF8947CFDB943F22D735AE1E5A3A7';
wwv_flow_imp.g_varchar2_table(81) := '647A61E972B5817E6A5B33FD9B0295F52BE4989DA01AB8953B7D7E524E9B44C56D7958E79F9931F653EE4F75D4A7423A3EC94F353633145E5A70AF47CBDCBA734476F785F7DCBFB671F9B46F639BDCB1DBFBF7A7B468464F4CECCBD7E3757805A2DA3212';
wwv_flow_imp.g_varchar2_table(82) := '80A8F65C8CDAAD3B40BD873E3D302AFABA96D0F2C5A29C9F9A96D74E9C96275F3A245FFFDE4179F8E983F2B5A75E3047F6CFC9579F7C4EFEFB93CFCBC3DF7D51BE69CEED6B99978F9D9289C929DF07FBACD60E1DB1D0B69A6C65B5C535CF731209F1BB80';
wwv_flow_imp.g_varchar2_table(83) := 'F0D0D9E65C005973E33D5678EDCC458FA5227ADBA426019E85CCC28A19FE2F2D999DA179EDF6FFBDBB86DD16853005E770000010004944415476FEDB760D79B6AD6C622E07BC0EC5B3221622E0214002E081C3A2E60AE8A980ECC84E71029E1B0ED2BA7A';
wwv_flow_imp.g_varchar2_table(84) := '5D2AA06D6ADB748D19A958DF39FFABDAEC9804A0A3E7AAD9CB67BC644E75CC2CF9DC52B77C8516BFBE389F9723BE09407BA056960B79733EDC3D76FDB4C49B46BC87D3036DA8C985F60E75CAF006F73B4774E75FF1B9EE41F80A8940749B410210DDBE8B';
wwv_flow_imp.g_varchar2_table(85) := '65CBF59C78DBE86ED1CF0D70CCCE310C41EAF97EDDF9EB516B23DAA30F47F28A757E71491E3B7CB6119B6E489D4F1E3D2717A6DD87ED35D64480874169E3CA39EF6740ECDF3628A30DFC843F6D4323A691CE941CD8E1330A90AFEDD45423DA499DF11620';
wwv_flow_imp.g_varchar2_table(86) := '018877FF46323A3DDACEF48F4AD61C71EBF0B8E3384D8FC3711C499A9D54767887E8F97E3D572F0DFA7212493324EE7D44FCD4AB27240AB7049E3747FFCFBF7EDA534A139EA01700564ADE1740DE38BA21544FFDF30C7CD9427D52E1FECD7DCBE65CFDD2';
wwv_flow_imp.g_varchar2_table(87) := '2FF6ABD7604E2B04A2BCCD44941B4FDB632C6076C03A1A901DDA2E7ADE3D910E76C5783D4412A9B4E8F50899A16DA2098898B6D4A35EAF3A7494C16BB97E10D1D75F392DE572B89F0CF8F0C16332E3735165F5F320829AFA9CC3D9B6C13B71F2326DF5B2';
wwv_flow_imp.g_varchar2_table(88) := 'ED7D3E6D0F795FB7DA8FEDAF5F800460FD86D4D04801B3A3D007066547CCF9F79E01D1D181466D4EEB4EF70E4A564F4174F5891E99376A5B2BEB4D76F488261E2BE72F7FAFA30047CE7B5F10B7BC7CB35FBF72665A9E7FFD8CE766139976093AFCAF1555';
wwv_flow_imp.g_varchar2_table(89) := 'CADE4F42EC6D0BFFBDFF1AC76A537F7B7AB5D96FCCAB7017C01B16E17D11ED96910044BBFFAC697D75E7DCBF49DAB7EC113D1F9FEEDD28F51815D09DAED6A5756ADD3ADAD0CC1DFF1B1DE83866A463C40C36B89FEED0E7147CFEC957E4EC4CF8CE0D9F9A';
wwv_flow_imp.g_varchar2_table(90) := '5C94CF7CE7A537C2717B91EE1B725BB4FA7C9F04A02D15DD3F611BDA92ABC77C79AE4FEC978BF11381B50A44F75FCF5A2366BD680B981DA55E8CA7B7E26537ED12BD6050CFD1EBB0B25E38A84FE7D3A3691DBAD773F8D5A9A35B749E2ED332BAC34F6F18';
wwv_flow_imp.g_varchar2_table(91) := '3689C4AEEAD1BED6A5759ABD6F4B6D92A69D89F66ECF364CCD2DC8179E3E2CF379F72BE33D2B68C0C2A9C5827CE999C3B298CB7BD6AEF1257DE2BBA2029FE1FF543221E6FF2B5689D29B64222109F3FBECD9661F03CF7559D87081A86F800420EA3D6871';
wwv_flow_imp.g_varchar2_table(92) := 'FB1DBD782ED326FAB90269333A9019D82C99C12D9235E7EEF5E2BD37A6A1EDD579BA4CCBE80E3FBD615012D976D13A4243E82402DDFD707CFC827CEEE923A28FDB95167FE58A65F9DAC15372E29CF77DFFEA9CEA1EA86F6BAB9743B88F98D477630DA8CD';
wwv_flow_imp.g_varchar2_table(93) := 'B4DF370170221C5F03C8A8B2BE022400F5F5A4B63009E81F4F9DC2D4269FB6E81172B26B834F2991978F9F95FFF2E46129957D8B36AC803E4EF9BF3D73549E3B7CC2771BD5B86AFDC444ED3B7394EC5679B15C967A7E2684DB761A355FAFF1D3185CEBF7';
wwv_flow_imp.g_varchar2_table(94) := '88DD751D16345120FA9B2201887E1F1241CC04D27DC3A2D726F88575F0D898FCFEC3CFCBE482F7AD727EF5AC65F985B99CFCEED79E95E78E9CF25D3D614669D2039B7CCBAD56C07192ABCD7E635EAE680EA3DF7817AD17B379EF0B1C1D332214AD88686D';
wwv_flow_imp.g_varchar2_table(95) := 'D4044800A2D663B437F6023A5C9E19DC26FAD32FD8B1F393F2A9479E958363CD7B5CF04B63D3F2470F3F2BE7A7FDEF48D09D5866E3E640B1AC1A6BC2FB4FD4E4A2F77507ABD6199299E7E67DDAEE137B48C2B0B6197108DCFB5F571C222406042228A0D7';
wwv_flow_imp.g_varchar2_table(96) := '27A4370C89E3F89F039E9C5D90CF7DE765F9AA39177F61212F95065C38A675EA48C3975F38299F7DFCA0CCFADCEBAFE48EE3487A60541299767DBBA6C92F093A3119BE3B2282067AFCE28267512711DD5B1C3D0363616804480042D3153404812B05F4E2';
wwv_flow_imp.g_varchar2_table(97) := 'C620D703E85A8BF9BC7CF38523F2A97F7856BEFCE269393DB520C5D2FA87C78BA5B29C9BCD99E4624CFEE41BCFC9B70EBE2E4B8560A71C925D7D920A703D83B6DF6D7252DEF7CABF74664A1623781A60C1B4D96FD4C62F763733E63743201EDB20018847';
wwv_flow_imp.g_varchar2_table(98) := '3F12454C05F491C87AFB5CD0F0A6E717E5DB078FC8EF7EF929F9CBEFBC2A8FBF3E2117CC507359AF380B58891EED8FCF2CC9E347CEC99F3FF68AFCCEDF3F298FBE78582E4CCF07AC412461CEFB67FA470297772B98F0193D78E6C4849C9EF5194A77ABBC';
wwv_flow_imp.g_varchar2_table(99) := '85F3C7E70AF2DDA3EE9FEFE0380949A4B32D6C219BB6418004C0865E0E638C3A4C5D9DCA22FAC4B3484EE6085B6368A4AF1946CF0E6E3347D27D356FE5D593E3F2774FBE24FFCF171E97FFEB8B4F5677E67ACBDE53C72EC8E18959D14FED9B5E2C545F3F';
wwv_flow_imp.g_varchar2_table(100) := '75ECBC7CF98513F2A7DF7A59FEC3DF7D57FEBF2F3D217FF7D4CB72E8F484785EA9BE4AABF4590BFAA98E627662AB2CAE69961E057BED084F9D9F962317BC87D26BDA60930A1F9B5A94731E099563122827D5BCC75F3729ECD86C262E819000C4A527431C';
wwv_flow_imp.g_varchar2_table(101) := '47A59897E2CC79C94F9C94A5336608F9F421593CF5AA2C9E7C45164F44797A593486A5B1C3923B775C0A9367A5383729E5A57993D3785FE15D5377398E64CCB9747D80911E19D6B4EEF70BEBF3F95F3E312EDF30A709BEF4D42BF257DF3E58BD78F08F1F';
wwv_flow_imp.g_varchar2_table(102) := '79CEBC7E51BEF4D4AB6678FFA81C3A754EA6E6D6B643D5B6693B33FD9BC4EFDCFDF79BE5FB43EBF11B01F9C6E109DF7AC256E0D1D72F783629A9CFA8F039FDE159010B110820900850862208D42C502916AA3B43DDE9E7CE1E353BC77129CE4F4B39B720';
wwv_flow_imp.g_varchar2_table(103) := 'E5424E2AA5627527593147FE919ECA2529E797A4B4302B85E9F352B870467226D1C9994447E32E2DCE5E1AE1A85970C50A8E23FA0023BDA23E915EDF9161C1D82F2CE5CC8E7E512ECECCCBC2525E74DE8A2DD6F4566F5BCC0C6D955477BF481D8EFCE5F2';
wwv_flow_imp.g_varchar2_table(104) := '97E348A2AD4BBCBE9E7C7D5CCECC85E7C9885E6DD56527660AF29DC367F4A5EBE4F74448D71559D00481F86C8204203E7D198A482A6687589CBD28B9B3AF4BFEFCE94B3B7D930C541A3D541E8AE8CDBE5E131AB383D524A764460272E3C74D42704A7454';
wwv_flow_imp.g_varchar2_table(105) := 'A01E4D4C76F64A6670AB24DB3AEB515D5DEAD0F3F419739A421FF653970A5754A27744388EB362EE9B6FC72ECEC85F3FEF7E3EFDCD92E178F5D917CECAB173EEB76D3A8E231AB3F08540830548001A0C6C53F54533FC9D33C3E1F90B6352363B7D9B62F7';
wwv_flow_imp.g_varchar2_table(106) := '8AB5B430234B66146469EC88544704BC0A0758A63B5C3DC79E358940A285178A25326DA26D681BDDD5D01D969E0648643B3C65FEFCF157643A57C7D32E9E5B5BFBC20B8B25F9D3470F7A56A09F96A8A7533C0BB1B0650271DA3009409C7AB345B1E851BF';
wwv_flow_imp.g_varchar2_table(107) := '9EFFD6237E76FCEE9D50CE2F4AFEDC49C98D1F133D45E25E32D8121D0D68DB7CAD6487B737754420D9DE7569C7BF6997681B82B5767DA5AAA7163CAA985DCCC9EF3DE9FF54428F2A9AB2E8FF7FEC98E82394BD36A6B77F8A1905F02AC33204EA21400250';
wwv_flow_imp.g_varchar2_table(108) := '0F458BEBD0A1EE9C19E6D6F3DF1633040EBD624E119416E72477EE84A85DE0153D0A26DBBB2533B44DDA46768A7EE261BD47051CC7A9DE92A6756BB2513D05614E45347327A58946C2E796C03F7BF42579767C51C2FAF5F28525F9CC93AF79362F614655';
wwv_flow_imp.g_varchar2_table(109) := 'B43F3D0BB1B08502F1DA340940BCFAB3A9D114E7A6246786B5F5C2BEA66E38061BD3D100BD50B01E2301CA511D266FEB94CCE0966A3290D9B8E55232904A8B2E731CF773E8BAFEF2C9711CD17512E98CA9A357D2039BABA30C5AB7EE9C74D9F2F2CD7A7D';
wwv_flow_imp.g_varchar2_table(110) := 'E92E08C77573A572597EFB4BCFC9A9D9600F2A72ADA8010BC6E68AF26B9FFB9EE88395DCAA771C47D2BD836E8B998F40DD054800EA4E6A47857AA15FE1E219D123DA5A23367FE7443F0655A764C291284F09138CF97F4D07C37AEA6469ECB09473F53D6A';
wwv_flow_imp.g_varchar2_table(111) := '4DA4B3A24FE0D31D76DBE6EB4C52B055521B864487D19366F83E618EA41366E7EE2492A293BED673EC7ABB9DDEC39FEA1D32EB6C91B6D16BCD4FB36ED70609C33DE9C98E1E714CDBC5E3EBE5D317E47FFFF24B32932F7B946AEE226DCBBFF9D28B72E8CC';
wwv_flow_imp.g_varchar2_table(112) := 'A4E7861DD36F1AA3672116B654206E1B2701885B8F36211EDD611526C74577604137974E2665F3408FDCB67B8BBCFBC0B5F2436FBD413E74CFFEEAF4C17B6E96684EFBE547EEDE2FEFBBED7A79C78DD7C85B776F96EB46364847261594A56A989F30A703';
wwv_flow_imp.g_varchar2_table(113) := 'F20D7AA6BDE388EEF4D3E6C852EFD1CF0E6D97B64DD75477EEED5BAF97F6AD7BAAAFF5F44176709B64CCD17E7AC3A059A75BD694D54803BF4C2C99BE61D3AC84E746BEF1EA29F93F1E3E22A51A9E7EE859E13A16164D1B7EEBABAFCA63AF9DF6ACC5711C';
wwv_flow_imp.g_varchar2_table(114) := 'D14F8134C17996632102F514F0FE9754CF2D51572C042AC5BCE80E2BE8CEBFAFB35DDEB2E71A79FFDD07E4BE037BE5FA1D5B64706040BABA7B24DDD62EA96CBBA4B36D119DDAA5ADBD5D36F46E90D1E121B96EC756B9EDC6EBE57D77DD2C775EBF5D3676';
wwv_flow_imp.g_varchar2_table(115) := 'B605FA7BAE174EAA69537E41CC8EA6DAA8377E9A3F016FBC769AD284F56C44472A523DFDBE557CFEE9D7E457FEFE55B9B8D4BA3B03A67365F9E52FBE227FFFECEBBEED4DF50C48D2E77907BE9550A0C102F1ABDEFCEB8F5F5044D420814A590A93E702DD';
wwv_flow_imp.g_varchar2_table(116) := 'E2D79649CB816B77C83B6EDB27FBB60E4967362DC9F0EF5F64BD5FFA0F2A9B4ECBEE2D9B4CEC37C93D7BAF31230269DF6ACB85BC94E6A77DCB595FC0242BA99E8DA2898097853E76E2EF9F3922FFE26F9F97D727735E451BB2ECF84C5E7EEEAF9F91AF3D';
wwv_flow_imp.g_varchar2_table(117) := 'EFBFF3D75834A66A62D690D6502902AB0BE8DFABD59730178115027ADEBF38EFFE0093CBC5DBB35979DBFE3D72E3F611E948A72ECFB6EE67369D941D9B86E45DB75E2F3DED6DBEF117A6C6C59C13F02D677B01279932A72A46CDFED2FFCFD7778F8CC927';
wwv_flow_imp.g_varchar2_table(118) := 'FFE669796A6CBE696CCF8C2FC8CFFDE593F2DC31FF8713394EC2C4B24934A6A635900DAD49208E2BF9FF0B8A63D4C454B3800EF9EBD1BFDF8A9D5DDDF2CEDB6F94E10D5D7E45AD59DEDDD929EFBA6DAFF4767578C6ACA3009A64791662615520916993F4';
wwv_flow_imp.g_varchar2_table(119) := 'C068F5B5DFB7A3E393F2B14F7F5D7EE54BAF8A5E8DEF577EADCBB5EE5FFDD26BF2E37FF4881C9F08369AA331247C2E6C5C6B7B580F013F0112003F219657058A53E7C4EF8AFFB66C46EEDB7F9DF4B6F90F79572BB5E85BBBB179BBB1E9E9F01E09D00440';
wwv_flow_imp.g_varchar2_table(120) := 'AFB3B08866CDA1EA9D0E7A7163900AF494C017BF7758DEFD1FBF2ABFF1B5C3A2F7E407592F489997CE2FC9AF7FE5903CF49FBE265FF8DE21F3EF24C85A22E9DE8DA231042B4DA9D60AC473EB8978864554F514D00FEE29CE7ADFC2944AA5E5D67D7B64A0';
wwv_flow_imp.g_varchar2_table(121) := '839DBF9BBDEEFCEFBC61A7DBE2EAFC4BA300DED6D5827CAB0AA47427DAB9A1FA3AC8B7B2C9043EF3C4ABF2CFFEEC71F9F9CF1D94FFF2C2843C7376B1A68B052797CAF2BDB30BF2972F9C934F9A3A3EFE678FC9E79E7A4D4AE5E0B71EEA439552BD83419A';
wwv_flow_imp.g_varchar2_table(122) := '4C19041A264002D030DAF8545C9A9F324735DE7FDCF6ECDA213BFB3BE31374832219EAEB95AD231B3D6B2FCE5C107D5A60A558103DF512E5C904E019EB7A17EA730CD2039BAA47D3B5D4756176411E7EF198FCBBCF3F29FFFC2F1E935FF96F2FC8BFFFD6';
wwv_flow_imp.g_varchar2_table(123) := '71F9CCCB17E459730E5F8FEA5FBB9893572FE4E4E0C4927CE3F88CFCF5C1F3F27F7FEB84FCDA175F949FFFCBEFC86F7FFE29F90753C785B9DA9EE3A0CF63D0366BDB6B6933655B2710D72D9300C4B567EB1897DEF7EF555D4F4F8FEC1DEDF32AC2B26502';
wwv_flow_imp.g_varchar2_table(124) := 'B75FB7431249F78B23F5544BFEDC71593A734472119F96C68E884EB9F16392BF705A0AD313D5BB1DAABF5315EFA4721999E74BDD91FF6855710000100049444154A6FB4624BD61D8B39CDBC2E985A5EA7DFA9FFEFA8BF21B9FF98E7CF40F1F910FFEDE3F';
wwv_flow_imp.g_varchar2_table(125) := '98E961F9D01F98E9F7FF413EF19F1F957FFBB74FC81F7DFD0579F4959332355FDB4EFFF2B6B58D998151D1365F9EC74F045A254002D02AF9886C571F59AB935773F7ED18956C925F252FA3E5CB3A3249D936E83D6C5D3143D57AEA454F09447BCA89FEFE';
wwv_flow_imp.g_varchar2_table(126) := 'E888869E46D20748E5264E4ACE2438B98953D564404CACCB7DD6FA3ABD6150B243DBA45E57D417CD90BED7A37B6B69A7B649DBA66DAC653DCA864120BE6DE0AF767CFBB62E9195F34B9E9F5C974EA765EB46EF9D595D1A12934AE68B1579797C564E4DAD';
wwv_flow_imp.g_varchar2_table(127) := 'ED0832260CA2C94D6961463419581A3B2CFABA1EB1E9A374B3C3DB45CFB13B8E538F2AD75587E33892EAEA136D93B66D5D95B1320275162001A83368DCAAD3A15A3D1A758B6BD3C67EC9F05BE4C6F3C6FC5245E4F0857979E4F923F2F40B2F497169FE8D';
wwv_flow_imp.g_varchar2_table(128) := '65B6BFD04F45D44F47AC2602FA30A4759E1AD0DBEA321B472533B45D926D9DE238CD4F041C2721FA08E6ECF00EC90C6C126D93EDFD1CD5F8E3DC6EFE74C7B977EB105BA59877AD2561FEB00EF5F5B82E67C12581D97C49BEFDDA983CF9C22B3275F1FCA5';
wwv_flow_imp.g_varchar2_table(129) := '997CBF4A40479BF2E74F49FEC219D1A4E0AA02B5CC58BE03DEB8A5A93B60DDD967366E96AC494012260111D3965A9A4E59049A254002D02CE9886EA762CE83BA353D994C49BFCFC36DDCD6B565FEF87C41BEF2CC213971F244A04728DBE2E216A78E3615';
wwv_flow_imp.g_varchar2_table(130) := 'E726452F82AC140B6EC582CF771C4976F64ADBE82EC90E6E95468D08388ED94E47B7E811BF6E4BB729669EF015718178379F0420DEFDBBFEE83C86639349473AB2A9F56F23A6359C98C9CB379E7B559666FD1F9F1C53823587A5173EE6CEBE2EE5DCC29A';
wwv_flow_imp.g_varchar2_table(131) := 'EB58B9A2EE94B3233BA56DCB9E6A32A0E7E61D93C4AE2C17F4BDAEAB756862D1B6F57AD1237E1DF60FBA3EE51068B5000940AB7B20CCDBF7B93A3B914C4A3A950C73042D6BDB89E99C3CF9E26B925F98ABB90D8EE388DE26D6D3D126A3FDDDD58F51DE3C';
wwv_flow_imp.g_varchar2_table(132) := 'D013B99F9B4CDBFBBB3BCC8170C24C8ED4FA55FD94C40B63754D02B40D8ED9E96B32A0E7E6F5A391B3C3DB25D3BF49D2BD83A2F7E8EB0584BA23D7D182CB53CA8C22A4BAFBAA6532FD23A2EBE8BA5A87D6A5FDA57533C54B20EED124E21E20F1AD47A0E2';
wwv_flow_imp.g_varchar2_table(133) := 'B9722291909453FB1F7689F9D7C442519E7EE9902CD5B0F36F4FA764D7A67E79FB4DBBE487EFBA513E72DFCDF2C17BF7CB0FDCBE4F3E78F73EF9A9FB6F8ED4F4A36FBB49DE77FB5EF9A13B6F940F9938DE73EB1E79DBDE1D72F3F621E96DCF988440027D';
wwv_flow_imp.g_varchar2_table(134) := '55AF0B9838B9FE6B0256DB9A3937EFA432926CEF9654CF80A4FB8645EFD1CF0C6E313BF81D6F4E66D42033B8D52CDB2C5A26D5B3B1BA8EAE2BA68ED5AA661E025110200188422FB5B28D1EA3008E38AD6C5928B75D2C95E489E75F96F9F96047FEED1D9D';
wwv_flow_imp.g_varchar2_table(135) := 'F2C02D7BE5A7DF7DBBFCD47D37CABBF66D915BB7F5CBBE916EB9A6BF5D76F46565B033236DE944A4A60D6D29D3F636D93DD02EFB37F7CA3DBB87E5A19BB6C987EEBC5E3EF19EDBE5A15BF6486F5767A03EAC8E048C1F137D2262A015EA55C831BFDF3AD5';
wwv_flow_imp.g_varchar2_table(136) := 'AB3EEA899840FC9B9B887F8844B85601BD206BADEBDABADEB70FBE2E5373FEB7F8B56733F25E7354FCCBEF7D8B3C70DDA08C746744E2BEB3D1F8CCD4954DC9BDD78EC82FBDE72DF2C377EC959E3613BB787F6912509AE33312BC95588A406D022400B579';
wwv_flow_imp.g_varchar2_table(137) := '511A015781B18B3372F2DC05D7E597176C1EE8958FBFEB16B9C7EC04DBD2C9CBB3ADFB994C25E5B69D83F2B1076F912D033DBEF1EB6724E82901DF821440A00E023654410260432F1363C305160B2579FEE898EF76766C1E918FDDBF5F3676657DCBDA52';
wwv_flow_imp.g_varchar2_table(138) := '60A83B2B1FBA7BAFEC1E1DF40C5947018AB3173DCBB0100104820B900004B7A22402AE02C727A6E4FCA4F7ED7EA38303F2E3775E2BEDE67CBE6B45962E18E8CCCA07DF7AAD5CBBA9DF53401F195C97E703786E858508D821400260473F13650305168A15';
wwv_flow_imp.g_varchar2_table(139) := '397CF28CE716BACD79EE0FBE7577F5423ECF82162FEC6A4BCB8FDCB1C718B93F5B423F43403F50C862264247A06E02240075A3A4225B05C62E4CCBECBCF7036BDE7DCBB532D4DD662B51E0B8BBB26979EB0D3B3CCB17E7A7A4307956CAB945292DCE467A';
wwv_flow_imp.g_varchar2_table(140) := 'D26B1AAA773778DC6DE389C1C28608D8522909802D3D4D9C0D133836362E258F47266F1BEA93BDA3DE43DB0D6B5CC42A761C47EEDE35246D1D5D9E2D2F4C9F97FCC409295C3C23F9732724377E3C3253FEDC49D3EEB366326D9F3829B9B3C72437FEFDC9';
wwv_flow_imp.g_varchar2_table(141) := 'C4529834BF4F8B73CDBFEDD1539C85711420018863AF1253D304964A65999C9E71DD9EE338F2D0FE9D924DF14FCD1569C5828E744A4687FB57CCBDFAAD5E14A88F0C8EDAEDAA954AB9FA60236DBB7EE85139BF28A5A579339231277A8D43617AE2524260';
wwv_flow_imp.g_varchar2_table(142) := '12037D5D1D21B83A7CE6344CC09E8AF9AB644F5F13690304C66696A4609200B7AA7BBABB647B7FB007DEB8D561D3FC8A190A3F343E254B535CEDAF89818E062C9D7A4DF2FA48E442CEA65F05626D820009401390D9447C05A6160A5231FFB945B863B84F';
wwv_flow_imp.g_varchar2_table(143) := '24C13F33379FE5F3C7A696E44F1F7D59FEEC9B2FCAD864B027292E5F3FAEAF7504406F7FCC9D3D2AFA2C04736E20AEA186222E9B1AC15F269B7A9B58EB2AA09F9430BDB028E6A075D57A93094746FBFC1F70B3EACA16CD9C5C2CCAE79E3D2E9FFE87A7E5';
wwv_flow_imp.g_varchar2_table(144) := 'F0D884F12C5B147DF050F50E88FCC533E6F4C071A914F3C157A424022E0224002E30CC462088C0D2E2926BB1743221233D3CF0C70D4887FB0F8ECFC9A71F7E56BEFBCA31592C14DD8A327F99805E2FB074E67529CE793F7762D92ABC0C2C6057411200BB';
wwv_flow_imp.g_varchar2_table(145) := 'FA9B68EB28502997259F773F124B991180BEF6541DB718AFAA5E3E372F7FFDF82B7271763E5E8135211A1D0D285C382D79333561736C22A602240031ED58C26ABC40A56212809CFB8559D95452DACCD4F896446F0BC72717E5B34FBC2AC5A5B5EFFC1DC7';
wwv_flow_imp.g_varchar2_table(146) := '91849388F0E488E35C9A640D5F1573EEA9383B297AA7C01A56679555046C9B4502605B8F136FDD042A260128795C999D32A700D249A76EDB8B4B45A766F2F2E7DF7A499616E60287944867E5E65D5BE5930FDD2ABFF3136F97CF7CE29DF2CD5F7AB77CE3';
wwv_flow_imp.g_varchar2_table(147) := '971E32D3BB22393DF22FDF2D5FFD8577CBDFFCDC83F2FB26A67FF19E5B65FFAEAD9248FB7F3AE27238BD5380D301CB45781D54800420A814E5105821600EC044AADF562CF8FE5B472EFDF7FDB7FC3002930B05F9F3C75E9185F9603BFF1D231BE5A7EE3F';
wwv_flow_imp.g_varchar2_table(148) := '209FFBF87DF27B3FB24F3E7EDB88DCBFAD4B6E18C8CA407BCA4C0933E9CFE84D831D29D9DC9DAAC6F23613D3CFDC3A22BF6F62FCECCFDE273FFD8E03B27DA8CF8805FBBF38352EE5758CA604DB4ADC4BD9171F09807D7D4EC408B44460A95896BF79FAA8';
wwv_flow_imp.g_varchar2_table(149) := 'CC4E4DFA6EBF2D9D343BC19BE5773E748BFCEB7B37CBEE0D19E9CD26CD70BFEFAA912D9070A41AE375FD59F9E57B36CBEF7EE476F9F88307A42DED7F1D893E14297FF1ACE82D839105A0E14D1748347D8B6C100104AC1478F6F4949C181BF78D7DB4BF5B';
wwv_flow_imp.g_varchar2_table(150) := '3EF5B1FBCC4E708BECE84DFB968F6B811D3D69F9C5BB36CB1FFEE47D32DCDBE91BE6E50707F916A4C0AA0236CE2401B0B1D7891981260B4C2E95E4B1974F8A5E37E1B5E9DB760EC95FFDD43D7260B8C3AB9855CB6E1D6997FFFA3FDD23B76C1FF48DBB38';
wwv_flow_imp.g_varchar2_table(151) := '7B51CA39EF0FA6F2AD8402D608900058D3D5048A40EB041E3F312D17A7A63C1BB077A4577EEB7DFBA5BF3DE959CEC685439D69F9ED1FBC59AE1FD9E01B7E71D6FF148B6F25D615B0336012003BFB9DA811689AC0C585A2BC72FC8CE7F67ADAD3F22F1FBA';
wwv_flow_imp.g_varchar2_table(152) := '59766EC87A96B379A1DAFC6B63D495F5BE26A0BC3427E5BCFB03AA6C3624F62B054800AEF4E01D0208D459E0E0F88C5CBC70DEB3D65F78E77EB9676BB76719168ADCB5B54B7EE15DFB3D29F482C0327704781AAD5C68EB7B12005B7B9EB8116892C00BC7';
wwv_flow_imp.g_varchar2_table(153) := 'CE796E69DBC61EF9C8FE11CF322C7C5340ADB6F675BE3963955725330AB0CA6C662170850009C0151CBC4100817A0A5C5C2CCAE4ECAC6795FFCB7BF6C7FAF63ECFE0D7B0309570E457DE73B331735CD72E2F2D08B704BAF2AC5860EF5B12007BFB9EC811';
wwv_flow_imp.g_varchar2_table(154) := '68B8C0F1C90529E40BAEDBD9DEDF2DF76EEB755DCE82D5051ED8D5273B077B565FA8732B65A9701D804A307908900078E0B0080104D62E50A954E49449004AA5926B2577ED1E91247F855C7DDC163866C12D3BBC6F0BE442408314E07F9B8BF04FCFE6DE';
wwv_flow_imp.g_varchar2_table(155) := '2776041A2860F6FF7261665E2AE66874B5CDB4A79372C368F0C7DDAE5687CDF3760DB9DF125831F89562DEF351D536DB11FB250112804B0E7C4700813A0B942A228B4BEE9F96A8B7B36DEE6DAFF356EDA96E736F9B0C74665C032E6B0220A6135C4BB040';
wwv_flow_imp.g_varchar2_table(156) := 'C46E031200BBFB9FE81168A8C0C292FBFDE89D1DEDB283FBFED7ECDF914E4A5736EDBA7EA55830A32F2400AE402C1012007E091040A02102A57245963C4600D2A9B4F464130DD9B60D956EEEC94A36E5FED4C44AA928522EDB40B1E6186D5F917F7DB6FF';
wwv_flow_imp.g_varchar2_table(157) := '06103F020D12289BE1E752C97D07944A3AA2B7B43568F3B1AF76B023259954D23D4EB3F3AFB85C7FE1BE124B6C122001B0A9B7891581660A98D1E772C57C73D9663AA17F7E1C97A5CCF6134818BA8CE72D14C6DEC3DFAFFEF82F2742FD17880202082080';
wwv_flow_imp.g_varchar2_table(158) := '00020858264002605987132E02082080800806C24580FC1220800002082060A300230036F63A3123800002560B10BC0A9000A802130208208000029609900058D6E1848B000208D82E40FC970448002E39F01D010410400001AB044800ACEA6E82450001';
wwv_flow_imp.g_varchar2_table(159) := '046C1720FECB0224009725F88900020820808045022400167536A122800002B60B10FF9B0224006F5AF00A0104104000016B044800ACE9EAFA07CA078DD4DF941A1140A09102D4BD5C800460B906AF6B1228168B52F4F8B4B79A2AA33002082080405305';
wwv_flow_imp.g_varchar2_table(160) := '48009ACA1DAD8D398EE3D9E05C3E2F672F4EC9CCDCBCCC2D2E9969B1866949F2C59267FD2C44000104EA29405D570A90005CE9C1BBE5028EF9F5D069F9BC65AF2B15916FBD7848BEFCDD83F295275F90AF3CF562A0E9CB4FBE285F7CFC7979F2D563922B';
wwv_flow_imp.g_varchar2_table(161) := '994A96D5C94B0410400081E60898BFF0CDD9105B89A680934C7A365C93807CB12C8B85922CE6834D4BA66CB15C96B3131764D1ACEBB90116228000027511A092950224002B45787F854022D37EC5FB7ABED17D3F0300F514A52E04104020B8000940702B';
wwv_flow_imp.g_varchar2_table(162) := '2B4B263BBAC549A61A14BBF735060DDA28D52280808502847CB50009C0D526CC592690C87648AAB377D91C5E2280000208C4418004200EBDD8E018D27D23926CEB6CF056A81E010410689400F5AE264002B09A0AF3AE14701CC90E6F9754779F381E7705';
wwv_flow_imp.g_varchar2_table(163) := '5CB912EF1040000104C22C900873E3685B8804CC8E3F33B0593243DB24D9DE25897456F4DA00C771C431CBAE9C9C10359CA6208080ED02C4BFBA0009C0EA2ECC7511D09D7F767887B46DBE56DAB7EC91F66D3798E9FA15D35EE9D8BE4F3203A3E298E4C0';
wwv_flow_imp.g_varchar2_table(164) := 'A52A662380000208B4508004A085F891DFB439FA17DDC15F35991100C79164478F38E98CF085000208B44E802DBB099000B8C9307FDD024E22214EC2FB4142EBDE08152080000208AC4920B1A6B558090104104000810808D04477011200771B96208000';
wwv_flow_imp.g_varchar2_table(165) := '020820105B011280D8762D818541C071C2D00ADA8080AD02C4ED254002E0A5C33204D621B0542A49AEB48E0A581501041068A00009400371A9DA6E81B9A92AF7BD0000100049444154C582BC38362967E7F2727A66494E4C069B4E4E2DCA99999C2C15CA';
wwv_flow_imp.g_varchar2_table(166) := '7603123D02EB1460756F0112006F1F9622B0668162B92C5F7CE225F9DDAF3C2D7FF8DF9F954F3D126CFAE3475E903FFCFA41F9C28B6392D38F4C5C730B58110104107017200170B7610902EB1628572A522AE4A598CF059F728B925F9895574F9C91A985';
wwv_flow_imp.g_varchar2_table(167) := 'FCBADB400508D82940D47E0224007E422C47A04502E55251348168D1E6D92C0208C45C800420E61D4C78111630A7102A660421C211D074045A26C086FD054800FC8D2881000208208040EC04480062D7A50484000208D82E40FC41044800822851060104';
wwv_flow_imp.g_varchar2_table(168) := '1040008198099000C4AC4309275C028EE388934CAD3E394EB81A4B6B10888900610413200108E6442904D6249019DC2AED5BAE93B64DD75C31E93C5DB6A64A5909010410A8830009401D10A90281D5041C272189B64E11F3D3496564F9A4F374999611BE';
wwv_flow_imp.g_varchar2_table(169) := '1040A08E02541554800420A814E510588340A558705DEBD2B28AEB7216208000028D14200168A42E7523800002083455808D05172001086E454904104000010462234002109BAE241004A225C0671DAEAFBF8AA5B254CC7FEBAB256E6B134F2D022400B5';
wwv_flow_imp.g_varchar2_table(170) := '6851160104EA26B0942F48A14C1AB056D089C5229F16B9563CD6AB0A90005419F8860002CD16189F9A95AF1F9D96B97C59E60B155928946B9ACC6ACD6E72DDB737AF31176B8B5DD799582CC9F7C666E5CCF482479B1C711276FD89F7C060D12A02FC76AC';
wwv_flow_imp.g_varchar2_table(171) := '82C22C041068BCC0EC625EFEEDE79E920F7DEADBF2914F7F5B7EF44F1E0F34FDC81F7D4B7EF00F1E95FFEDE1D7CD084274EFA2289BA6FFAF5F3D221FFEF463F2C14F3D16287635FAC89F3C261F355EFFEEF3DF95C985BC7B47E9CEDFE14FBC3B104BF8ED';
wwv_flow_imp.g_varchar2_table(172) := 'E0770001045A26B05428CAF1F33372E4DCB41C1A9F0A349DB8608E7C27E7E49BAF9E918B8BD13D8530932BC91347C7E57513F7B189E0F11F199F96D31767255F2C79F65B229DB56C04C0938385AB089000AC82C22C041008BFC0423E27F3C5E82600F366';
wwv_flow_imp.g_varchar2_table(173) := 'E83F6F12A04649273B7BC56400C217026E0224006E32CC470081700BC46078DB49241B62AC9F3F514D001A527B382BA555B50B9000D46EC61A08208040A805D27DC3E6E0BF31C945A803A77135099000D4C4456104104020DC02E9DE4149756E087723EB';
wwv_flow_imp.g_varchar2_table(174) := 'DE3A2A5C8B0009C05AD458070104100899807EB054A67F44F4E85F1C2764ADA339611420010863AFD026042C11701C4712A9B424D2992B263D87EDC4E01CBFACF34B0D56DA24D25949B67749B2A3A77AA49FEE19904CFF26C98EEE9254CFC6756E319AAB';
wwv_flow_imp.g_varchar2_table(175) := 'D3EAB5099000ACCD8DB51040609D027A015CBA6F44B29B76497678A76486B657A7ECC835921DD929E98151711CBB8F643343DBAEB0C9548DB649DAECF033E6683FB371B4FA3A6592004D0CD6D925AC6E99000980651D4EB8088445C04965AA47B1D5A3FD';
wwv_flow_imp.g_varchar2_table(176) := 'EA2840D68C026445DFEBCE2CD9D15D7D1D96F636BB1D8EE3548FF49D6536EA7279523F6194444484AF350A9000AC118ED51040609D028E39BA4FF8FC09B27A07677C2A957522B33A02EE023EFFFADC576409020820B01E01C771AC1FE2F7F72301F03362';
wwv_flow_imp.g_varchar2_table(177) := 'F9DA054800D66EC79A0820800002084456800420B25D47C311400001DB05887F3D022400EBD1635D041040000104222A400210D18EA3D908208080ED02C4BF3E011280F5F9B136020820800002911420018864B7D168041040C07601E25FAF0009C07A05';
wwv_flow_imp.g_varchar2_table(178) := '591F010410400081080A900044B0D3683202082060BB00F1AF5F800460FD86D480000208208040E404480022D7653418010410B05D80F8EB214002500F45EA400001041040206202240011EB309A8B000208D82E40FCF5112001A88F23B5208000020820';
wwv_flow_imp.g_varchar2_table(179) := '10290112804875178D450001046C1720FE7A099000D44B927A1040000104108890000940843A8BA622800002B60B107FFD044800EA67494D0820800002084446800420325D454311400001DB0588BF9E022400F5D4A42E0410400001042222400210918E';
wwv_flow_imp.g_varchar2_table(180) := 'A29908208080ED02C45F5F011280FA7A521B02082080000291102001884437D148041040C07601E2AFB7000940BD45A90F0104104000810808900044A093682202082060BB00F1D75F8004A0FEA6D488000208208040E805480042DF453410010410B05D';
wwv_flow_imp.g_varchar2_table(181) := '80F81B214002D00855EA0C26E05424E938C1CA86B0543291904A25840DA349082080400001128000481459AB80F7CEBD62F69EC972C1EC442B522997223589983617725232EDF6D2714C92E0B59C650820E02F4089C608900034C6955A55C0E7E8BE54AE';
wwv_flow_imp.g_varchar2_table(182) := 'C8171E7B4EFEE6D167E4B38F3D1FA9E9AFBFF98CFCD56307354AF74977FE0EFFC4DC8158820002AD14E0AF532BF56DD87622E91965B952965C3E2F8B4BB9484DDAE652B9EC195B22D3268C007812B110810002146994000940A364A9B72A906CEFAAFEB4';
wwv_flow_imp.g_varchar2_table(183) := 'F15BB2B3574C06207C21800002611420010863AFC4A84DC98E1E7192A91845142C148D59630F569A520820E026C0FCC609900034CE969A8D80EE08D37D23E6955DFFA7FB86C5F139FD619708D1228040D8044800C2D623316C4FAA6B83A474383C86B1AD';
wwv_flow_imp.g_varchar2_table(184) := '1652BA77D0C4BB61B545CC4300819A0428DC4801128046EA52F71B02998D5B24BD61489C185F15AFB165FA47448FFEC5F1BE05F20D185E208000022D1220016811BC759B353B444D00B29BAE11DD49A6BAFBAB47C9C98E6E4964DA2591CE4468CA8A5EDC';
wwv_flow_imp.g_varchar2_table(185) := 'A8E7F8539D1B24DD336062DA24D9D15D92EAD9685DD71230028D12A0DEC60A900034D697DA570824326DD59D64666054D2E66839D3BF4932835B2433B43D42D336D376D36E6DFF468D63938969C02430D915D1F21601041008AF00094078FB26F62DD30B';
wwv_flow_imp.g_varchar2_table(186) := '049D54A6BAE34CA4B391FBA96D97189FD288FD2F2001865C80E6355A8004A0D1C2D48F0002082080400805480042D8293409010410B05D80F81B2F4002D07863B680000208208040E804480042D7253408010410B05D80F89B214002D00C65B681C06A02';
wwv_flow_imp.g_varchar2_table(187) := '8EFFB3023A33DE1FA6B45AB56199D7964A48C223C44AA51296A6D20E04AC142001B0B2DB093A0C028EA37B479D566F4DB1549213938B522A9B1DA5EE2C2334E9CEFDF45CC1B4DDFB1313578F9CB9B60B107F730448009AE3CC5610B85A406F214CB8FF13';
wwv_flow_imp.g_varchar2_table(188) := '2C9B1DFED7BEF78AFCE7479E913FFBC673919AFEF4E167E433DF7CC624002679B93AF2EA1CC731C98F1A54DFF10D01049A2DE0FED7A7D92D617B085826E0989DBF3EFFC02BEC8BF339393C312BAF9C9D8ED4A46D3E3FB7E4159AE873203C0BB0D05201C2';
wwv_flow_imp.g_varchar2_table(189) := '6E96000940B3A4D90E022B05CCD16FA2BD6BE55C6BDE3B99366B62255004C228400210C65EA14DD608A4BAFAAC3C12D6A37F8DDD9A8E26D0C002146C9E000940F3ACD9120257095477843D0357CD8FF30CC771443F0342638F739CC48640D80512616F20';
wwv_flow_imp.g_varchar2_table(190) := 'ED4320EE02E9DE414975F7C53DCC6A7C8EE39858FB25D9D95B7DCF3704AE14E05D330548009AA9CDB6107011C80C6C96CCC62D12E7A3622791ACC698EEDF247C218040EB0548005ADF07B40081AA40AA6B83B48DEE363BC9CD92ECE816FDE864BD4B2091';
wwv_flow_imp.g_varchar2_table(191) := '4A579747E99BA31738EA273C66DAABB1A4370C5563E3C83F4ABDD8FCB6B2C5E60A900034D79BAD21E029A02300A9AE3EC90E6D37D336C90C8C4ADA4CD961F33E425366686BB5ED99C12D268EEDA2098013C144C6B3B3588840C405480022DE81343FBE02';
wwv_flow_imp.g_varchar2_table(192) := '4E2A2389B64E49B6774772D2B6EB08467C7B88C8EA2B406DCD16200168B638DB430001041040200402240021E8049A80000208D82E40FCCD17200168BE395B440001041040A0E50224002DEF021A8000026B12A85424EBF579C36BAAB4792B65928EE8A7';
wwv_flow_imp.g_varchar2_table(193) := '26366F8B61DE126D6B850009402BD4D9260208F80A388EE359A65C2A99E5EE9F36681686FAFF52C9B4BD1A43A89B49E3622C400210E3CE253404E22C502A16E5B193337262A62067E78B919A4E9A363F76724A8AC5824717990441BC93208F9523B588C6';
wwv_flow_imp.g_varchar2_table(194) := 'B6468004A035EE6C150104FC041CF3E7C9631420572CC96FFEED77E4437FF44DF9E89F3C169DE9D3DF960FFFF1A3F21B9F7D42F205F704409F09211EF1FBF1B11C013F01F32FCCAF08CB11400081D6085477821E9BAE9883E4D98525393B391B9D696A4E';
wwv_flow_imp.g_varchar2_table(195) := 'A6E71745DBEE119AE87320BC96C7671991B44A8004A055F26C1701047C05F471C8BE85625A20916D8F6964841516011280B0F404ED400081AB04F4B303FC4601AE5A29063312E98C24BBECF884C818745764432001886CD7D17004E22F90C8B44BBA6F38';
wwv_flow_imp.g_varchar2_table(196) := 'FE81AE8830D53D20897476C55CDE22505F011280FA7A521B0208D459403F1C29DD3B58E75AC35B9DC69AEA19086F03EBDA322A6BA50009402BF5D93602080412D05180ECD0364964DA02958F62213DE2AF7EFAA385231E51ECAF38B49904200EBD480C08';
wwv_flow_imp.g_varchar2_table(197) := '582090ECE8A97EB470A67F4492ED5DD521F2442A6D7E66A23D653BAAA739F4239F53DDFD16F4E49B21F2AAB5022400ADF567EB08205083806376F8A99E8D921DDE216DA3BB25ABD3A65D928DE8D4367AADB46DBA4674D89FDBFE6AF845A0685D044800EA';
wwv_flow_imp.g_varchar2_table(198) := 'C248250820D07401C71127918CF464F7837E9AFE1BC30657089000AC00E12D02082080000236089000D8D0CBC488000208844C80E6B45E8004A0F57D400B10400001041068BA000940D3C9D92002082060BB00F187418004200CBD401B10400001041068';
wwv_flow_imp.g_varchar2_table(199) := 'B200094093C1D91C02082060BB00F187438004201CFD402B10400001041068AA00094053B9D91802082060BB00F187458004202C3D413B10400001041068A200094013B1D91402082060BB00F187478004203C7D414B104000010410689A000940D3A8D9';
wwv_flow_imp.g_varchar2_table(200) := '1002082060BB00F187498004204CBD415B104000010410689200094093A0D90C02082060BB00F1874B8004205CFD416B104000010410688A0009405398D90802082060BB00F1874D8004206C3D427B10400001041068820009401390D90402082060BB00';
wwv_flow_imp.g_varchar2_table(201) := 'F1874F8004207C7D428B10400001041068B8000940C389D90002082060BB00F187518004208CBD429B10400001041068B00009408381A91E010410B05D80F8C329400210CE7EA15508208000020834548004A0A1BC548E000208D82E40FC61152001086B';
wwv_flow_imp.g_varchar2_table(202) := 'CFD02E0410400001041A284002D0405CAA460001046C1720FEF00A900084B76F68190208208000020D13200168182D1523800002B60B107F98054800C2DC3BB40D010410400081060990003408966A11400001DB05883FDC022400E1EE1F5A8700020820';
wwv_flow_imp.g_varchar2_table(203) := '8040430448001AC24AA508208080ED02C41F76011280B0F710ED430001041040A0010224000D40A54A041040C07601E20FBF000940F8FB88162280000208205077011280BA93522102082060BB00F147418004200ABD441B114000010410A8B30009409D';
wwv_flow_imp.g_varchar2_table(204) := '41A90E010410B05D80F8A3214002108D7EA295082080000208D4558004A0AE9C5486000208D82E40FC51112001884A4FD14E041040000104EA28400250474CAA420001046C1720FEE808900044A7AF682902082080000275132001A81B251521800002B6';
wwv_flow_imp.g_varchar2_table(205) := '0B107F94044800A2D45BB4150104104000813A099000D409926A10400001DB05883F5A022400D1EA2F5A8B0002082080405D044800EAC2482508208080ED02C41F35011280A8F518ED450001041040A00E0224007540A40A041040C07601E28F9E000940';
wwv_flow_imp.g_varchar2_table(206) := 'F4FA8C16238000020820B06E0112807513520102082060BB00F147518004208ABD469B11400001041058A70009C03A01591D010410B05D80F8A329400210CD7EA3D50820805C8CD04C0000043049444154000208AC4B8004605D7CAC8C000208D82E40FC';
wwv_flow_imp.g_varchar2_table(207) := '51152001886ACFD16E041040000104D6214002B00E3C56450001046C1720FEE80A900044B7EF68390208208000026B16200158331D2B22800002B60B107F94054800A2DC7BB41D010410400081350A9000AC118ED510400001DB05883FDA022400D1EE3F';
wwv_flow_imp.g_varchar2_table(208) := '5A8F0002082080C09A044800D6C4C64A08208080ED02C41F75011280A8F720ED470001041040600D0224006B406315041040C07601E28FBE000940F4FB9008104000010410A8598004A0663256400001046C1720FE38089000C4A1178901010410400081';
wwv_flow_imp.g_varchar2_table(209) := '1A0548006A04A33802082060BB00F1C7438004201EFD4814082080000208D42440025013178511400001DB05883F2E02240071E949E2400001041040A0060112801AB0288A000208D82E40FCF1112001884F5F1209020820800002810548000253511001';
wwv_flow_imp.g_varchar2_table(210) := '0410B05D80F8E324400210A7DE2416041040000104020A90000484A21802082060BB00F1C74B8004205EFD49340820800002080412200108C44421041040C07601E28F9B000940DC7A9478104000010410082040021000892208208080ED02C41F3F0112';
wwv_flow_imp.g_varchar2_table(211) := '80F8F52911218000020820E02B4002E04B4401041040C07601E28FA30009401C7B9598104000010410F0112001F001623102082060BB00F1C7538004209EFD4A54082080000208780A900078F2B010010410B05D80F8E32A400210D79E252E0410400001';
wwv_flow_imp.g_varchar2_table(212) := '043C0448003C705884000208D82E40FCF1152001886FDF1219020820800002AE022400AE342C400001046C1720FE380B9000C4B977890D0104104000011701120017186623800002B60B107FBC054800E2DDBF44870002082080C0AA022400ABB2301301';
wwv_flow_imp.g_varchar2_table(213) := '0410B05D80F8E32E400210F71E263E041040000104561120015805855908208080ED02C41F7F011280F8F7311122800002082070950009C05524CC400001046C17207E1B0448006CE8656244000104104060850009C00A10DE22800002B60B10BF1D0224';
wwv_flow_imp.g_varchar2_table(214) := '0076F4335122800002082070850009C0151CBC410001046C17207E5B0448006CE969E244000104104060990009C0320C5E22800002B60B10BF3D022400F6F43591228000020820F0860009C01B14BC400001046C17207E9B0448006CEA6D624500010410';
wwv_flow_imp.g_varchar2_table(215) := '40E0FB022400DF87E00702082060BB00F1DB25400260577F132D020820800002550112802A03DF10400001DB0588DF36011200DB7A9C78114000010410300224000681FF11400001DB0588DF3E011200FBFA9C881140000104101012007E0910400001EB';
wwv_flow_imp.g_varchar2_table(216) := '0500B0518004C0C65E27660410400001EB054800ACFF15000001046C17207E3B054800ECEC77A24600010410B05C8004C0F25F00C2470001DB0588DF560112005B7B9EB81140000104AC162001B0BAFB091E01046C17207E7B054800ECED7B2247000104';
wwv_flow_imp.g_varchar2_table(217) := '10B0588004C0E2CE27740410B05D80F86D162001B0B9F7891D01041040C05A0112006BBB9EC01140C07601E2B75BE07F000000FFFFEF10A2C500000006494441540300496910FF70B871AA0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(11893771059985992)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11885062336985977)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>39402738948721
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11885320933985978)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>39402738948799
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11885639484985979)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>39402738948819
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11885949972985979)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>39402738948826
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11886232389985979)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>39402738948832
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11886595490985979)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>39402738948838
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11886854953985979)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>39402738948844
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11887140865985979)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>39402738948850
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11887483585985979)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>39402738948856
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11887738599985980)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>39402738948862
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11888081335985980)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>39402738948868
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11888316332985980)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>39402738948874
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11888688838985980)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>39402738948880
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(11888964202985980)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>39402738948883
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(11895051460985993)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>39402738948920
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/asignatura_codigo_asignatura
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12059523687990259)
,p_lov_name=>'ASIGNATURA.CODIGO_ASIGNATURA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ASIGNATURA'
,p_return_column_name=>'ID_ASIGNATURA'
,p_display_column_name=>'CODIGO_ASIGNATURA'
,p_default_sort_column_name=>'CODIGO_ASIGNATURA'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39402739006266
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
end;
/
prompt --application/shared_components/user_interface/lovs/carrera_codigo_carrera
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12012804159989119)
,p_lov_name=>'CARRERA.CODIGO_CARRERA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CARRERA'
,p_return_column_name=>'ID_CARRERA'
,p_display_column_name=>'CODIGO_CARRERA'
,p_default_sort_column_name=>'CODIGO_CARRERA'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39402738991195
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
end;
/
prompt --application/shared_components/user_interface/lovs/comuna_nombre_comuna
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12013531541989120)
,p_lov_name=>'COMUNA.NOMBRE_COMUNA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'COMUNA'
,p_return_column_name=>'ID_COMUNA'
,p_display_column_name=>'NOMBRE_COMUNA'
,p_default_sort_column_name=>'NOMBRE_COMUNA'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39402738991195
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
end;
/
prompt --application/shared_components/user_interface/lovs/docente_nombres
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12074214798990651)
,p_lov_name=>'DOCENTE.NOMBRES'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DOCENTE'
,p_return_column_name=>'ID_DOCENTE'
,p_display_column_name=>'NOMBRES'
,p_default_sort_column_name=>'NOMBRES'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39402739012853
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
end;
/
prompt --application/shared_components/user_interface/lovs/especialidad_nombre_especialidad
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12031557865989505)
,p_lov_name=>'ESPECIALIDAD.NOMBRE_ESPECIALIDAD'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ESPECIALIDAD'
,p_return_column_name=>'ID_ESPECIALIDAD'
,p_display_column_name=>'NOMBRE_ESPECIALIDAD'
,p_default_sort_column_name=>'NOMBRE_ESPECIALIDAD'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39402738996176
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184951Z')
);
end;
/
prompt --application/shared_components/user_interface/lovs/estudiante_nombres_estudiante
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12073120549990651)
,p_lov_name=>'ESTUDIANTE.NOMBRES_ESTUDIANTE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ESTUDIANTE'
,p_return_column_name=>'ID_ESTUDIANTE'
,p_display_column_name=>'NOMBRES_ESTUDIANTE'
,p_default_sort_column_name=>'NOMBRES_ESTUDIANTE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39402739012825
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
end;
/
prompt --application/shared_components/user_interface/lovs/evaluacion_id_evaluacion
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12089960993991038)
,p_lov_name=>'EVALUACION.ID_EVALUACION'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EVALUACION'
,p_return_column_name=>'ID_EVALUACION'
,p_default_sort_column_name=>'ID_EVALUACION'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39402739017179
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
end;
/
prompt --application/shared_components/user_interface/lovs/facultad_nombre_facultad
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11969762415987988)
,p_lov_name=>'FACULTAD.NOMBRE_FACULTAD'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'FACULTAD'
,p_return_column_name=>'ID_FACULTAD'
,p_display_column_name=>'NOMBRE_FACULTAD'
,p_default_sort_column_name=>'NOMBRE_FACULTAD'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39402738974534
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184936Z')
);
end;
/
prompt --application/shared_components/user_interface/lovs/inscripcion_id_inscripcion
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12089218447991037)
,p_lov_name=>'INSCRIPCION.ID_INSCRIPCION'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'INSCRIPCION'
,p_return_column_name=>'ID_INSCRIPCION'
,p_default_sort_column_name=>'ID_INSCRIPCION'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39402739017179
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
end;
/
prompt --application/shared_components/user_interface/lovs/region_nombre_region
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(11924778260986481)
,p_lov_name=>'REGION.NOMBRE_REGION'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'REGION'
,p_return_column_name=>'ID_REGION'
,p_display_column_name=>'NOMBRE_REGION'
,p_default_sort_column_name=>'NOMBRE_REGION'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39402738955885
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184921Z')
);
end;
/
prompt --application/shared_components/user_interface/lovs/semestre_id_semestre
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12074919443990652)
,p_lov_name=>'SEMESTRE.ID_SEMESTRE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'SEMESTRE'
,p_return_column_name=>'ID_SEMESTRE'
,p_default_sort_column_name=>'ID_SEMESTRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39402739012868
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
end;
/
prompt --application/shared_components/user_interface/lovs/tipo_evaluacion_nombre_tipo_evaluacion
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12058831583990259)
,p_lov_name=>'TIPO_EVALUACION.NOMBRE_TIPO_EVALUACION'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'TIPO_EVALUACION'
,p_return_column_name=>'ID_TIPO_EVALUACION'
,p_display_column_name=>'NOMBRE_TIPO_EVALUACION'
,p_default_sort_column_name=>'NOMBRE_TIPO_EVALUACION'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39402739006266
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(11895393528985993)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(11889836276985982)
,p_name=>'Breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11890090257985982)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11922221408986106)
,p_short_name=>'Region'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184917Z')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11934485051986486)
,p_short_name=>'Comuna'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184921Z')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11945252904986860)
,p_short_name=>'Facultad'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184925Z')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11956026527987242)
,p_short_name=>'Especialidad'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184928Z')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11966804415987616)
,p_short_name=>'Tipo Evaluacion'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184932Z')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11980176339987993)
,p_short_name=>'Carrera'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184936Z')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11994240711988370)
,p_short_name=>'Asignatura'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184940Z')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12008357352988746)
,p_short_name=>'Semestre'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184943Z')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12027464570989126)
,p_short_name=>'Estudiante'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12045160678989511)
,p_short_name=>'Docente'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184951Z')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12055935562989885)
,p_short_name=>'Carrera Asignatura'
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184955Z')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12070621224990264)
,p_short_name=>'Evaluacion'
,p_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>24
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12086713406990657)
,p_short_name=>'Inscripcion'
,p_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>26
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12100344993991043)
,p_short_name=>'Resultado Evaluacion'
,p_link=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>28
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12122574284991424)
,p_short_name=>'Audit Result Evaluaciones'
,p_link=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>30
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12134067879991430)
,p_short_name=>'Dashboard'
,p_link=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>32
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(11890749812985982)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2721322117358710262
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(11889284570985980)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>39402738948895
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(11889529464985980)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>39402738948901
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>unistr('Distribuci\00F3n de Notas por Asignatura')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11911472976986007)
,p_plug_name=>unistr('Distribuci\00F3n de Notas por Asignatura')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12260467390991495)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(12253729274991492)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Region'
,p_alias=>'REGION1'
,p_step_title=>'Region'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11918845347986104)
,p_plug_name=>'Region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'REGION'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Region'
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11918964990986104)
,p_name=>'Region'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_REGION'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RP:P3_ID_REGION:\#ID_REGION#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>11918964990986104
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11919634481986105)
,p_db_column_name=>'ID_REGION'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Region'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11920076230986105)
,p_db_column_name=>'NOMBRE_REGION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre Region'
,p_column_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:4,RR:IR_ID_REGION:\#NOMBRE_REGION#\'
,p_column_linktext=>'#NOMBRE_REGION#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12137404595991433)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121375'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE_REGION'
,p_sort_column_1=>'NOMBRE_REGION'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11921740276986106)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11889836276985982)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184917Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11920590515986106)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11918845347986104)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:3::'
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184917Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11920815576986106)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11918845347986104)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184917Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11921326058986106)
,p_event_id=>wwv_flow_imp.id(11920815576986106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11918845347986104)
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184917Z')
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Region'
,p_alias=>'REGION'
,p_page_mode=>'MODAL'
,p_step_title=>'Region'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11912796405986101)
,p_plug_name=>'Region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'REGION'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11914400441986102)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184917Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11914803522986103)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11914400441986102)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184917Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11916200111986103)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11914400441986102)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_ID_REGION'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184917Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11916608277986103)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11914400441986102)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_ID_REGION'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184917Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11917055719986103)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11914400441986102)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_ID_REGION'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184917Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11913097280986102)
,p_name=>'P3_ID_REGION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11912796405986101)
,p_item_source_plug_id=>wwv_flow_imp.id(11912796405986101)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Region'
,p_source=>'ID_REGION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11913461853986102)
,p_name=>'P3_NOMBRE_REGION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11912796405986101)
,p_item_source_plug_id=>wwv_flow_imp.id(11912796405986101)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre Region'
,p_source=>'NOMBRE_REGION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11914901544986103)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11914803522986103)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184917Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11915702212986103)
,p_event_id=>wwv_flow_imp.id(11914901544986103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184917Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11917877465986104)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11912796405986101)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Region'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11917877465986104
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184917Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11918267389986104)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11918267389986104
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184917Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11917433673986104)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11912796405986101)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Region'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11917433673986104
,p_created_on=>wwv_flow_imp.dz('20251101184917Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184917Z')
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Comuna'
,p_alias=>'COMUNA1'
,p_step_title=>'Comuna'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11930615131986484)
,p_plug_name=>'Comuna'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'COMUNA'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Comuna'
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11930714207986484)
,p_name=>'Comuna'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_COMUNA'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RP:P5_ID_COMUNA:\#ID_COMUNA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>11930714207986484
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11931452264986485)
,p_db_column_name=>'ID_COMUNA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Comuna'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11931849814986485)
,p_db_column_name=>'NOMBRE_COMUNA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre Comuna'
,p_column_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:20,RR:IR_ID_COMUNA:\#NOMBRE_COMUNA#\'
,p_column_linktext=>'#NOMBRE_COMUNA#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11932256342986485)
,p_db_column_name=>'ID_REGION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id Region'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(11924778260986481)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12142030907991436)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121421'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE_COMUNA:ID_REGION'
,p_sort_column_1=>'NOMBRE_COMUNA'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11933972936986486)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11889836276985982)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184921Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11932741597986485)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11930615131986484)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:5::'
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184921Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11933072241986485)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11930615131986484)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184921Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11933503028986486)
,p_event_id=>wwv_flow_imp.id(11933072241986485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11930615131986484)
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184921Z')
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Comuna'
,p_alias=>'COMUNA'
,p_page_mode=>'MODAL'
,p_step_title=>'Comuna'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20251101184920Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11923590482986480)
,p_plug_name=>'Comuna'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'COMUNA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11926276288986482)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184921Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11926635083986482)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11926276288986482)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184921Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11928048649986483)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11926276288986482)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P5_ID_COMUNA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184921Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11928400188986483)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11926276288986482)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P5_ID_COMUNA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184921Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11928875040986483)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11926276288986482)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P5_ID_COMUNA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184921Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11923899403986481)
,p_name=>'P5_ID_COMUNA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11923590482986480)
,p_item_source_plug_id=>wwv_flow_imp.id(11923590482986480)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Comuna'
,p_source=>'ID_COMUNA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11924212479986481)
,p_name=>'P5_NOMBRE_COMUNA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11923590482986480)
,p_item_source_plug_id=>wwv_flow_imp.id(11923590482986480)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre Comuna'
,p_source=>'NOMBRE_COMUNA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11924638137986481)
,p_name=>'P5_ID_REGION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11923590482986480)
,p_item_source_plug_id=>wwv_flow_imp.id(11923590482986480)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Region'
,p_source=>'ID_REGION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REGION.NOMBRE_REGION'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11926711409986482)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11926635083986482)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184921Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11927536194986483)
,p_event_id=>wwv_flow_imp.id(11926711409986482)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184921Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11929616896986484)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11923590482986480)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Comuna'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11929616896986484
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184921Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11930058270986484)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11930058270986484
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184921Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11929248566986483)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11923590482986480)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Comuna'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11929248566986483
,p_created_on=>wwv_flow_imp.dz('20251101184921Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184921Z')
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Facultad'
,p_alias=>'FACULTAD1'
,p_step_title=>'Facultad'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11941820549986858)
,p_plug_name=>'Facultad'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'FACULTAD'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Facultad'
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11941990415986858)
,p_name=>'Facultad'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_FACULTAD'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP:P7_ID_FACULTAD:\#ID_FACULTAD#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>11941990415986858
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11942633534986859)
,p_db_column_name=>'ID_FACULTAD'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Facultad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11943083150986859)
,p_db_column_name=>'NOMBRE_FACULTAD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre Facultad'
,p_column_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:12,RR:IR_ID_FACULTAD:\#NOMBRE_FACULTAD#\'
,p_column_linktext=>'#NOMBRE_FACULTAD#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12147839895991438)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121479'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE_FACULTAD'
,p_sort_column_1=>'NOMBRE_FACULTAD'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11944738563986860)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11889836276985982)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184925Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11943579104986859)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11941820549986858)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:7::'
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184925Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11943823400986859)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11941820549986858)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184925Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11944310077986859)
,p_event_id=>wwv_flow_imp.id(11943823400986859)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11941820549986858)
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184925Z')
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Facultad'
,p_alias=>'FACULTAD'
,p_page_mode=>'MODAL'
,p_step_title=>'Facultad'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20251101184924Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11935704859986855)
,p_plug_name=>'Facultad'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'FACULTAD'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11937486881986856)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184925Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11937801208986856)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11937486881986856)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184925Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11939257940986857)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11937486881986856)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_ID_FACULTAD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184925Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11939673584986857)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11937486881986856)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P7_ID_FACULTAD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184925Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11940049628986857)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11937486881986856)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P7_ID_FACULTAD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184925Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11936006299986855)
,p_name=>'P7_ID_FACULTAD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11935704859986855)
,p_item_source_plug_id=>wwv_flow_imp.id(11935704859986855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Facultad'
,p_source=>'ID_FACULTAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11936492653986855)
,p_name=>'P7_NOMBRE_FACULTAD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11935704859986855)
,p_item_source_plug_id=>wwv_flow_imp.id(11935704859986855)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre Facultad'
,p_source=>'NOMBRE_FACULTAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11937955358986856)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11937801208986856)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184925Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11938739983986857)
,p_event_id=>wwv_flow_imp.id(11937955358986856)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184925Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11940838815986858)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11935704859986855)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Facultad'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11940838815986858
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184925Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11941202293986858)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11941202293986858
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184925Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11940422543986858)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11935704859986855)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Facultad'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11940422543986858
,p_created_on=>wwv_flow_imp.dz('20251101184925Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184925Z')
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Especialidad'
,p_alias=>'ESPECIALIDAD1'
,p_step_title=>'Especialidad'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11952652278987240)
,p_plug_name=>'Especialidad'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ESPECIALIDAD'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Especialidad'
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11952796770987240)
,p_name=>'Especialidad'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_ESPECIALIDAD'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_ID_ESPECIALIDAD:\#ID_ESPECIALIDAD#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>11952796770987240
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11953456498987241)
,p_db_column_name=>'ID_ESPECIALIDAD'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Especialidad'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11953887713987241)
,p_db_column_name=>'NOMBRE_ESPECIALIDAD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre Especialidad'
,p_column_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:20,RR:IR_ID_ESPECIALIDAD:\#NOMBRE_ESPECIALIDAD#\'
,p_column_linktext=>'#NOMBRE_ESPECIALIDAD#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12152491671991441)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121525'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE_ESPECIALIDAD'
,p_sort_column_1=>'NOMBRE_ESPECIALIDAD'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11955522751987242)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11889836276985982)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184928Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11954307664987241)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11952652278987240)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:9::'
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184928Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11954646871987241)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11952652278987240)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184928Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11955195439987242)
,p_event_id=>wwv_flow_imp.id(11954646871987241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11952652278987240)
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184928Z')
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Especialidad'
,p_alias=>'ESPECIALIDAD'
,p_page_mode=>'MODAL'
,p_step_title=>'Especialidad'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20251101184927Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11946562423987237)
,p_plug_name=>'Especialidad'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ESPECIALIDAD'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11948227123987239)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184928Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11948662760987239)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11948227123987239)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184928Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11950089997987239)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11948227123987239)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P9_ID_ESPECIALIDAD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184928Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11950488966987239)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11948227123987239)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9_ID_ESPECIALIDAD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184928Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11950856078987240)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11948227123987239)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9_ID_ESPECIALIDAD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184928Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11946812998987238)
,p_name=>'P9_ID_ESPECIALIDAD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11946562423987237)
,p_item_source_plug_id=>wwv_flow_imp.id(11946562423987237)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Especialidad'
,p_source=>'ID_ESPECIALIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11947280276987238)
,p_name=>'P9_NOMBRE_ESPECIALIDAD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11946562423987237)
,p_item_source_plug_id=>wwv_flow_imp.id(11946562423987237)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre Especialidad'
,p_source=>'NOMBRE_ESPECIALIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11948761905987239)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11948662760987239)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184928Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11949577935987239)
,p_event_id=>wwv_flow_imp.id(11948761905987239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184928Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11951625508987240)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11946562423987237)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Especialidad'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11951625508987240
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184928Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11952056998987240)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11952056998987240
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184928Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11951293097987240)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11946562423987237)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Especialidad'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11951293097987240
,p_created_on=>wwv_flow_imp.dz('20251101184928Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184928Z')
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Tipo Evaluacion'
,p_alias=>'TIPO-EVALUACION1'
,p_step_title=>'Tipo Evaluacion'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11963492837987615)
,p_plug_name=>'Tipo Evaluacion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TIPO_EVALUACION'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Tipo Evaluacion'
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11963512583987615)
,p_name=>'Tipo Evaluacion'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_TIPO_EVALUACION'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:RP:P11_ID_TIPO_EVALUACION:\#ID_TIPO_EVALUACION#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>11963512583987615
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11964212554987615)
,p_db_column_name=>'ID_TIPO_EVALUACION'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Tipo Evaluacion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11964652595987616)
,p_db_column_name=>'NOMBRE_TIPO_EVALUACION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nombre Tipo Evaluacion'
,p_column_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:24,RR:IR_ID_TIPO_EVALUACION:\#NOMBRE_TIPO_EVALUACION#\'
,p_column_linktext=>'#NOMBRE_TIPO_EVALUACION#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12157045550991443)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121571'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOMBRE_TIPO_EVALUACION'
,p_sort_column_1=>'NOMBRE_TIPO_EVALUACION'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11966391244987616)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11889836276985982)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184932Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11965188408987616)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11963492837987615)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:11::'
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184932Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11965444617987616)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11963492837987615)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184932Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11965968245987616)
,p_event_id=>wwv_flow_imp.id(11965444617987616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11963492837987615)
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184932Z')
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Tipo Evaluacion'
,p_alias=>'TIPO-EVALUACION'
,p_page_mode=>'MODAL'
,p_step_title=>'Tipo Evaluacion'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20251101184931Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11957316107987612)
,p_plug_name=>'Tipo Evaluacion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TIPO_EVALUACION'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11959064338987613)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184932Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11959466635987613)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11959064338987613)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184932Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11960874947987614)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11959064338987613)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P11_ID_TIPO_EVALUACION'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184932Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11961292175987614)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11959064338987613)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P11_ID_TIPO_EVALUACION'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184932Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11961615278987614)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11959064338987613)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P11_ID_TIPO_EVALUACION'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184932Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11957644001987612)
,p_name=>'P11_ID_TIPO_EVALUACION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11957316107987612)
,p_item_source_plug_id=>wwv_flow_imp.id(11957316107987612)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Tipo Evaluacion'
,p_source=>'ID_TIPO_EVALUACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11958017206987612)
,p_name=>'P11_NOMBRE_TIPO_EVALUACION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11957316107987612)
,p_item_source_plug_id=>wwv_flow_imp.id(11957316107987612)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre Tipo Evaluacion'
,p_source=>'NOMBRE_TIPO_EVALUACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11959588549987613)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11959466635987613)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184932Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11960329304987613)
,p_event_id=>wwv_flow_imp.id(11959588549987613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184932Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11962463198987614)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11957316107987612)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Tipo Evaluacion'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11962463198987614
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184932Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11962872533987614)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11962872533987614
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184932Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11962023279987614)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11957316107987612)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Tipo Evaluacion'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11962023279987614
,p_created_on=>wwv_flow_imp.dz('20251101184932Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184932Z')
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Carrera'
,p_alias=>'CARRERA1'
,p_step_title=>'Carrera'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11975901447987990)
,p_plug_name=>'Carrera'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CARRERA'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Carrera'
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11976030486987990)
,p_name=>'Carrera'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_CARRERA'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:RP:P13_ID_CARRERA:\#ID_CARRERA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>11976030486987990
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11976775293987991)
,p_db_column_name=>'ID_CARRERA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Carrera'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11977135598987991)
,p_db_column_name=>'CODIGO_CARRERA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Codigo Carrera'
,p_column_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:22,RR:IR_ID_CARRERA:\#ID_CARRERA#\'
,p_column_linktext=>'#CODIGO_CARRERA#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11977550403987991)
,p_db_column_name=>'NOMBRE_CARRERA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nombre Carrera'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11977993964987992)
,p_db_column_name=>'ID_FACULTAD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Id Facultad'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(11969762415987988)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12161609951991445)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121617'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODIGO_CARRERA:NOMBRE_CARRERA:ID_FACULTAD'
,p_sort_column_1=>'CODIGO_CARRERA'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11979631603987992)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11889836276985982)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184936Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11978450142987992)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11975901447987990)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:13::'
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184936Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11978794586987992)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11975901447987990)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184936Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11979261717987992)
,p_event_id=>wwv_flow_imp.id(11978794586987992)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11975901447987990)
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184936Z')
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Carrera'
,p_alias=>'CARRERA'
,p_page_mode=>'MODAL'
,p_step_title=>'Carrera'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20251101184935Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11968137470987987)
,p_plug_name=>'Carrera'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CARRERA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11971554979987989)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184936Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11971952945987989)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11971554979987989)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184936Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11973325195987989)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11971554979987989)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P13_ID_CARRERA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184936Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11973710813987989)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11971554979987989)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13_ID_CARRERA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184936Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11974151020987990)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11971554979987989)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13_ID_CARRERA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184936Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11968412764987987)
,p_name=>'P13_ID_CARRERA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11968137470987987)
,p_item_source_plug_id=>wwv_flow_imp.id(11968137470987987)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Carrera'
,p_source=>'ID_CARRERA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11968811903987987)
,p_name=>'P13_CODIGO_CARRERA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11968137470987987)
,p_item_source_plug_id=>wwv_flow_imp.id(11968137470987987)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Codigo Carrera'
,p_source=>'CODIGO_CARRERA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11969242276987988)
,p_name=>'P13_NOMBRE_CARRERA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11968137470987987)
,p_item_source_plug_id=>wwv_flow_imp.id(11968137470987987)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre Carrera'
,p_source=>'NOMBRE_CARRERA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11969608512987988)
,p_name=>'P13_ID_FACULTAD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11968137470987987)
,p_item_source_plug_id=>wwv_flow_imp.id(11968137470987987)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Facultad'
,p_source=>'ID_FACULTAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FACULTAD.NOMBRE_FACULTAD'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11972051949987989)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11971952945987989)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184936Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11972866012987989)
,p_event_id=>wwv_flow_imp.id(11972051949987989)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184936Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11974978309987990)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11968137470987987)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Carrera'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11974978309987990
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184936Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11975306298987990)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11975306298987990
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184936Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11974518336987990)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11968137470987987)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Carrera'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11974518336987990
,p_created_on=>wwv_flow_imp.dz('20251101184936Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184936Z')
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Asignatura'
,p_alias=>'ASIGNATURA1'
,p_step_title=>'Asignatura'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11989638746988368)
,p_plug_name=>'Asignatura'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ASIGNATURA'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Asignatura'
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11989760300988368)
,p_name=>'Asignatura'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_ASIGNATURA'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:RP:P15_ID_ASIGNATURA:\#ID_ASIGNATURA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>11989760300988368
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11990408041988369)
,p_db_column_name=>'ID_ASIGNATURA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Asignatura'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11990870056988369)
,p_db_column_name=>'CODIGO_ASIGNATURA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Codigo Asignatura'
,p_column_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:26,RR:IR_ID_ASIGNATURA:\#CODIGO_ASIGNATURA#\'
,p_column_linktext=>'#CODIGO_ASIGNATURA#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11991287157988369)
,p_db_column_name=>'NOMBRE_ASIGNATURA'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nombre Asignatura'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11991682012988369)
,p_db_column_name=>'CREDITOS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Creditos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11992001921988370)
,p_db_column_name=>'NIVEL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Nivel'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12168563633991449)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121686'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODIGO_ASIGNATURA:NOMBRE_ASIGNATURA:CREDITOS:NIVEL'
,p_sort_column_1=>'CODIGO_ASIGNATURA'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11993741854988370)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11889836276985982)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184940Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11992547586988370)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11989638746988368)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:15::'
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184940Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11992811761988370)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11989638746988368)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184940Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11993375875988370)
,p_event_id=>wwv_flow_imp.id(11992811761988370)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11989638746988368)
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184940Z')
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Asignatura'
,p_alias=>'ASIGNATURA'
,p_page_mode=>'MODAL'
,p_step_title=>'Asignatura'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20251101184939Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11981473051988364)
,p_plug_name=>'Asignatura'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ASIGNATURA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11985236441988367)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184940Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11985649038988367)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11985236441988367)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184940Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11987070015988367)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11985236441988367)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P15_ID_ASIGNATURA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184940Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11987440926988367)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11985236441988367)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P15_ID_ASIGNATURA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184940Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11987864271988368)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11985236441988367)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P15_ID_ASIGNATURA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184940Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11981767119988365)
,p_name=>'P15_ID_ASIGNATURA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11981473051988364)
,p_item_source_plug_id=>wwv_flow_imp.id(11981473051988364)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Asignatura'
,p_source=>'ID_ASIGNATURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11982175695988365)
,p_name=>'P15_CODIGO_ASIGNATURA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11981473051988364)
,p_item_source_plug_id=>wwv_flow_imp.id(11981473051988364)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Codigo Asignatura'
,p_source=>'CODIGO_ASIGNATURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11982593471988365)
,p_name=>'P15_NOMBRE_ASIGNATURA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11981473051988364)
,p_item_source_plug_id=>wwv_flow_imp.id(11981473051988364)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre Asignatura'
,p_source=>'NOMBRE_ASIGNATURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11982971292988365)
,p_name=>'P15_CREDITOS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11981473051988364)
,p_item_source_plug_id=>wwv_flow_imp.id(11981473051988364)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creditos'
,p_source=>'CREDITOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11983344257988366)
,p_name=>'P15_NIVEL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11981473051988364)
,p_item_source_plug_id=>wwv_flow_imp.id(11981473051988364)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nivel'
,p_source=>'NIVEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11985794984988367)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11985649038988367)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184940Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11986543029988367)
,p_event_id=>wwv_flow_imp.id(11985794984988367)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184940Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11988629009988368)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11981473051988364)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Asignatura'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11988629009988368
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184940Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11989022885988368)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11989022885988368
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184940Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11988213660988368)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11981473051988364)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Asignatura'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11988213660988368
,p_created_on=>wwv_flow_imp.dz('20251101184940Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184940Z')
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Semestre'
,p_alias=>'SEMESTRE1'
,p_step_title=>'Semestre'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12003762168988744)
,p_plug_name=>'Semestre'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SEMESTRE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Semestre'
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12003892988988744)
,p_name=>'Semestre'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_SEMESTRE'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:RP:P17_ID_SEMESTRE:\#ID_SEMESTRE#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>12003892988988744
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12004501260988744)
,p_db_column_name=>'ID_SEMESTRE'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Semestre'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12004951324988744)
,p_db_column_name=>'ANO_SEMESTRE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Ano Semestre'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12005336677988745)
,p_db_column_name=>'PERIODO_SEMESTRE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Periodo Semestre'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12005700781988745)
,p_db_column_name=>'FECHA_INICIO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Fecha Inicio'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12006136899988745)
,p_db_column_name=>'FECHA_TERMINO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fecha Termino'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12176727200991453)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121768'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ANO_SEMESTRE:PERIODO_SEMESTRE:FECHA_INICIO:FECHA_TERMINO'
,p_sort_column_1=>'ANO_SEMESTRE'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12007800984988745)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11889836276985982)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184943Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12006660625988745)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12003762168988744)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:17::'
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184943Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12006913104988745)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12003762168988744)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184943Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12007404210988745)
,p_event_id=>wwv_flow_imp.id(12006913104988745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12003762168988744)
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184943Z')
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Semestre'
,p_alias=>'SEMESTRE'
,p_page_mode=>'MODAL'
,p_step_title=>'Semestre'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20251101184942Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11995537044988739)
,p_plug_name=>'Semestre'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SEMESTRE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11999327475988741)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184943Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11999729137988742)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11999327475988741)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184943Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12001116662988742)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11999327475988741)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P17_ID_SEMESTRE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184943Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12001520248988742)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11999327475988741)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_ID_SEMESTRE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184943Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12001929757988742)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11999327475988741)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_ID_SEMESTRE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184943Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11995841047988739)
,p_name=>'P17_ID_SEMESTRE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11995537044988739)
,p_item_source_plug_id=>wwv_flow_imp.id(11995537044988739)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Semestre'
,p_source=>'ID_SEMESTRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11996201762988740)
,p_name=>'P17_ANO_SEMESTRE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11995537044988739)
,p_item_source_plug_id=>wwv_flow_imp.id(11995537044988739)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ano Semestre'
,p_source=>'ANO_SEMESTRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11996674116988740)
,p_name=>'P17_PERIODO_SEMESTRE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11995537044988739)
,p_item_source_plug_id=>wwv_flow_imp.id(11995537044988739)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Periodo Semestre'
,p_source=>'PERIODO_SEMESTRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11997042297988740)
,p_name=>'P17_FECHA_INICIO'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11995537044988739)
,p_item_source_plug_id=>wwv_flow_imp.id(11995537044988739)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Inicio'
,p_source=>'FECHA_INICIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11997435563988740)
,p_name=>'P17_FECHA_TERMINO'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11995537044988739)
,p_item_source_plug_id=>wwv_flow_imp.id(11995537044988739)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Termino'
,p_source=>'FECHA_TERMINO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11999806809988742)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11999729137988742)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184943Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12000610211988742)
,p_event_id=>wwv_flow_imp.id(11999806809988742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184943Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12002775411988743)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11995537044988739)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Semestre'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12002775411988743
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184943Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12003197780988743)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>12003197780988743
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184943Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12002360986988743)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11995537044988739)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Semestre'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12002360986988743
,p_created_on=>wwv_flow_imp.dz('20251101184943Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184943Z')
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Estudiante'
,p_alias=>'ESTUDIANTE1'
,p_step_title=>'Estudiante'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12021288371989123)
,p_plug_name=>'Estudiante'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ESTUDIANTE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Estudiante'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12021395572989123)
,p_name=>'Estudiante'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_ESTUDIANTE'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:RP:P19_ID_ESTUDIANTE:\#ID_ESTUDIANTE#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>12021395572989123
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12022062806989124)
,p_db_column_name=>'ID_ESTUDIANTE'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Estudiante'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12022431969989124)
,p_db_column_name=>'RUT_ESTUDIANTE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Rut Estudiante'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12022896307989124)
,p_db_column_name=>'DV_ESTUDIANTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Dv Estudiante'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12023249905989125)
,p_db_column_name=>'NOMBRES_ESTUDIANTE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Nombres Estudiante'
,p_column_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:26,RR:IR_ID_ESTUDIANTE:\#NOMBRES_ESTUDIANTE#\'
,p_column_linktext=>'#NOMBRES_ESTUDIANTE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12023633347989125)
,p_db_column_name=>'APELLIDO_PATERNO_EST'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Apellido Paterno Est'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12024083954989125)
,p_db_column_name=>'APELLIDO_MATERNO_EST'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Apellido Materno Est'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12024479289989125)
,p_db_column_name=>'ANO_INGRESO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Ano Ingreso'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12024886845989125)
,p_db_column_name=>'ID_CARRERA'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Id Carrera'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(12012804159989119)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12025226533989126)
,p_db_column_name=>'ID_COMUNA'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Id Comuna'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(12013531541989120)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12184914694991457)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121850'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RUT_ESTUDIANTE:DV_ESTUDIANTE:NOMBRES_ESTUDIANTE:APELLIDO_PATERNO_EST:APELLIDO_MATERNO_EST:ANO_INGRESO:ID_CARRERA:ID_COMUNA'
,p_sort_column_1=>'RUT_ESTUDIANTE'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12026996580989126)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11889836276985982)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12025700511989126)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12021288371989123)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:19::'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12026048819989126)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12021288371989123)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12026518496989126)
,p_event_id=>wwv_flow_imp.id(12026048819989126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12021288371989123)
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'Estudiante'
,p_alias=>'ESTUDIANTE'
,p_page_mode=>'MODAL'
,p_step_title=>'Estudiante'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20251101184946Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12009652751989117)
,p_plug_name=>'Estudiante'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ESTUDIANTE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12016897415989121)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12017211899989122)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12016897415989121)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12018691655989122)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12016897415989121)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P19_ID_ESTUDIANTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12019053925989122)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12016897415989121)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P19_ID_ESTUDIANTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12019416231989123)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12016897415989121)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P19_ID_ESTUDIANTE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12009987788989118)
,p_name=>'P19_ID_ESTUDIANTE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_item_source_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Estudiante'
,p_source=>'ID_ESTUDIANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12010390964989118)
,p_name=>'P19_RUT_ESTUDIANTE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_item_source_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rut Estudiante'
,p_source=>'RUT_ESTUDIANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12010780941989118)
,p_name=>'P19_DV_ESTUDIANTE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_item_source_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dv Estudiante'
,p_source=>'DV_ESTUDIANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12011136094989119)
,p_name=>'P19_NOMBRES_ESTUDIANTE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_item_source_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombres Estudiante'
,p_source=>'NOMBRES_ESTUDIANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12011590660989119)
,p_name=>'P19_APELLIDO_PATERNO_EST'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_item_source_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apellido Paterno Est'
,p_source=>'APELLIDO_PATERNO_EST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12011918007989119)
,p_name=>'P19_APELLIDO_MATERNO_EST'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_item_source_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apellido Materno Est'
,p_source=>'APELLIDO_MATERNO_EST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12012333803989119)
,p_name=>'P19_ANO_INGRESO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_item_source_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ano Ingreso'
,p_source=>'ANO_INGRESO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12012788729989119)
,p_name=>'P19_ID_CARRERA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_item_source_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Carrera'
,p_source=>'ID_CARRERA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CARRERA.CODIGO_CARRERA'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12013489009989120)
,p_name=>'P19_ID_COMUNA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_item_source_plug_id=>wwv_flow_imp.id(12009652751989117)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Comuna'
,p_source=>'ID_COMUNA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMUNA.NOMBRE_COMUNA'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12017322730989122)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12017211899989122)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12018194386989122)
,p_event_id=>wwv_flow_imp.id(12017322730989122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12020200480989123)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12009652751989117)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Estudiante'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12020200480989123
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12020697509989123)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>12020697509989123
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12019814048989123)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(12009652751989117)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Estudiante'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12019814048989123
,p_created_on=>wwv_flow_imp.dz('20251101184947Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184947Z')
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Docente'
,p_alias=>'DOCENTE1'
,p_step_title=>'Docente'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12039359326989509)
,p_plug_name=>'Docente'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'DOCENTE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Docente'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12039418562989509)
,p_name=>'Docente'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_DOCENTE'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:RP:P21_ID_DOCENTE:\#ID_DOCENTE#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>12039418562989509
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12040112954989509)
,p_db_column_name=>'ID_DOCENTE'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Docente'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12040596175989509)
,p_db_column_name=>'RUT_DOCENTE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Rut Docente'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12040906783989509)
,p_db_column_name=>'DV_DOCENTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Dv Docente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12041398134989510)
,p_db_column_name=>'NOMBRES'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Nombres'
,p_column_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:26,RR:IR_ID_DOCENTE:\#NOMBRES#\'
,p_column_linktext=>'#NOMBRES#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12041710449989510)
,p_db_column_name=>'APELLIDO_PATERNO_DOC'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Apellido Paterno Doc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12042183179989510)
,p_db_column_name=>'APELLIDO_MATERNO_DOC'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Apellido Materno Doc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12042524504989510)
,p_db_column_name=>'ID_ESPECIALIDAD'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Id Especialidad'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(12031557865989505)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12042969191989510)
,p_db_column_name=>'ID_COMUNA'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Id Comuna'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(12013531541989120)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12197913099991464)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121980'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RUT_DOCENTE:DV_DOCENTE:NOMBRES:APELLIDO_PATERNO_DOC:APELLIDO_MATERNO_DOC:ID_ESPECIALIDAD:ID_COMUNA'
,p_sort_column_1=>'RUT_DOCENTE'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12044682807989511)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11889836276985982)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184951Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12043423539989510)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12039359326989509)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:21::'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184951Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12043741747989511)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12039359326989509)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184951Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12044277416989511)
,p_event_id=>wwv_flow_imp.id(12043741747989511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12039359326989509)
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184951Z')
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Docente'
,p_alias=>'DOCENTE'
,p_page_mode=>'MODAL'
,p_step_title=>'Docente'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20251101184950Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12028781521989503)
,p_plug_name=>'Docente'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'DOCENTE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12034986894989507)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184951Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12035352026989507)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12034986894989507)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184951Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12036715042989507)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12034986894989507)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P21_ID_DOCENTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184951Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12037104745989508)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12034986894989507)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P21_ID_DOCENTE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184951Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12037537609989508)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12034986894989507)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P21_ID_DOCENTE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184951Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12029000032989504)
,p_name=>'P21_ID_DOCENTE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12028781521989503)
,p_item_source_plug_id=>wwv_flow_imp.id(12028781521989503)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Docente'
,p_source=>'ID_DOCENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12029421242989504)
,p_name=>'P21_RUT_DOCENTE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12028781521989503)
,p_item_source_plug_id=>wwv_flow_imp.id(12028781521989503)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rut Docente'
,p_source=>'RUT_DOCENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12029815048989504)
,p_name=>'P21_DV_DOCENTE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12028781521989503)
,p_item_source_plug_id=>wwv_flow_imp.id(12028781521989503)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dv Docente'
,p_source=>'DV_DOCENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12030227173989504)
,p_name=>'P21_NOMBRES'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12028781521989503)
,p_item_source_plug_id=>wwv_flow_imp.id(12028781521989503)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombres'
,p_source=>'NOMBRES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12030659885989505)
,p_name=>'P21_APELLIDO_PATERNO_DOC'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12028781521989503)
,p_item_source_plug_id=>wwv_flow_imp.id(12028781521989503)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apellido Paterno Doc'
,p_source=>'APELLIDO_PATERNO_DOC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12031009664989505)
,p_name=>'P21_APELLIDO_MATERNO_DOC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12028781521989503)
,p_item_source_plug_id=>wwv_flow_imp.id(12028781521989503)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apellido Materno Doc'
,p_source=>'APELLIDO_MATERNO_DOC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12031414931989505)
,p_name=>'P21_ID_ESPECIALIDAD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12028781521989503)
,p_item_source_plug_id=>wwv_flow_imp.id(12028781521989503)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Especialidad'
,p_source=>'ID_ESPECIALIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ESPECIALIDAD.NOMBRE_ESPECIALIDAD'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12032110389989505)
,p_name=>'P21_ID_COMUNA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12028781521989503)
,p_item_source_plug_id=>wwv_flow_imp.id(12028781521989503)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Comuna'
,p_source=>'ID_COMUNA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMUNA.NOMBRE_COMUNA'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12035426830989507)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12035352026989507)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184951Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12036236945989507)
,p_event_id=>wwv_flow_imp.id(12035426830989507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184951Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12038343903989508)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12028781521989503)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Docente'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12038343903989508
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184951Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12038797884989508)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>12038797884989508
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184951Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12037991744989508)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(12028781521989503)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Docente'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12037991744989508
,p_created_on=>wwv_flow_imp.dz('20251101184951Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184951Z')
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Carrera Asignatura'
,p_alias=>'CARRERA-ASIGNATURA1'
,p_step_title=>'Carrera Asignatura'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12052540444989883)
,p_plug_name=>'Carrera Asignatura'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CARRERA_ASIGNATURA'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Carrera Asignatura'
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12052676348989883)
,p_name=>'Carrera Asignatura'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_CARRERA'
,p_base_pk2=>'ID_ASIGNATURA'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:RP:P23_ID_CARRERA,P23_ID_ASIGNATURA:\#ID_CARRERA#\,\#ID_ASIGNATURA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>12052676348989883
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12053339548989884)
,p_db_column_name=>'ID_CARRERA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Carrera'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12053746477989884)
,p_db_column_name=>'ID_ASIGNATURA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'B'
,p_column_label=>'Id Asignatura'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12209746782991470)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'122098'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_ASIGNATURA'
,p_sort_column_1=>'ID_ASIGNATURA'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12055446395989885)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11889836276985982)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184955Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12054245262989884)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12052540444989883)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:23::'
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184955Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12054505633989884)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12052540444989883)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184955Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12055009333989884)
,p_event_id=>wwv_flow_imp.id(12054505633989884)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12052540444989883)
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184955Z')
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Carrera Asignatura'
,p_alias=>'CARRERA-ASIGNATURA'
,p_page_mode=>'MODAL'
,p_step_title=>'Carrera Asignatura'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20251101184954Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12046466829989880)
,p_plug_name=>'Carrera Asignatura'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CARRERA_ASIGNATURA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12048119212989881)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184955Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12048578752989881)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12048119212989881)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184955Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12049903785989882)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12048119212989881)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>':P23_ID_CARRERA is not null and :P23_ID_ASIGNATURA is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184955Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12050331314989882)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12048119212989881)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P23_ID_CARRERA is not null and :P23_ID_ASIGNATURA is not null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184955Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12050777092989882)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12048119212989881)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P23_ID_CARRERA is null or :P23_ID_ASIGNATURA is null'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184955Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12046762678989880)
,p_name=>'P23_ID_CARRERA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12046466829989880)
,p_item_source_plug_id=>wwv_flow_imp.id(12046466829989880)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Carrera'
,p_source=>'ID_CARRERA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12047151135989881)
,p_name=>'P23_ID_ASIGNATURA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12046466829989880)
,p_item_source_plug_id=>wwv_flow_imp.id(12046466829989880)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Asignatura'
,p_source=>'ID_ASIGNATURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12048614505989881)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12048578752989881)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184955Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12049411015989882)
,p_event_id=>wwv_flow_imp.id(12048614505989881)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184955Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12051539188989883)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12046466829989880)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Carrera Asignatura'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12051539188989883
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184955Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12051946125989883)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>12051946125989883
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184955Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12051138147989882)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(12046466829989880)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Carrera Asignatura'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12051138147989882
,p_created_on=>wwv_flow_imp.dz('20251101184955Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184955Z')
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Evaluacion'
,p_alias=>'EVALUACION1'
,p_step_title=>'Evaluacion'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12066014725990262)
,p_plug_name=>'Evaluacion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EVALUACION'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Evaluacion'
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12066124949990262)
,p_name=>'Evaluacion'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_EVALUACION'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:RP:P25_ID_EVALUACION:\#ID_EVALUACION#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>12066124949990262
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12066897329990263)
,p_db_column_name=>'ID_EVALUACION'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Evaluacion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12067216843990263)
,p_db_column_name=>'FECHA_EVALUACION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fecha Evaluacion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12067649144990263)
,p_db_column_name=>'PUNTAJE_MAXIMO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Puntaje Maximo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12068040079990263)
,p_db_column_name=>'ID_TIPO_EVALUACION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Id Tipo Evaluacion'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(12058831583990259)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12068494251990264)
,p_db_column_name=>'ID_ASIGNATURA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Id Asignatura'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(12059523687990259)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12214331919991473)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'122144'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA_EVALUACION:PUNTAJE_MAXIMO:ID_TIPO_EVALUACION:ID_ASIGNATURA'
,p_sort_column_1=>'FECHA_EVALUACION'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12070171608990264)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11889836276985982)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12068931097990264)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12066014725990262)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:25::'
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12069275357990264)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12066014725990262)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12069790240990264)
,p_event_id=>wwv_flow_imp.id(12069275357990264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12066014725990262)
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'Evaluacion'
,p_alias=>'EVALUACION'
,p_page_mode=>'MODAL'
,p_step_title=>'Evaluacion'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20251101184958Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12057211257990258)
,p_plug_name=>'Evaluacion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'EVALUACION'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12061618097990260)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12062027099990261)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12061618097990260)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12063490637990261)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12061618097990260)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P25_ID_EVALUACION'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12063834023990261)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12061618097990260)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P25_ID_EVALUACION'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12064237376990261)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12061618097990260)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P25_ID_EVALUACION'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12057565254990258)
,p_name=>'P25_ID_EVALUACION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12057211257990258)
,p_item_source_plug_id=>wwv_flow_imp.id(12057211257990258)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Evaluacion'
,p_source=>'ID_EVALUACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12057929382990258)
,p_name=>'P25_FECHA_EVALUACION'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12057211257990258)
,p_item_source_plug_id=>wwv_flow_imp.id(12057211257990258)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Evaluacion'
,p_source=>'FECHA_EVALUACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12058358775990259)
,p_name=>'P25_PUNTAJE_MAXIMO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12057211257990258)
,p_item_source_plug_id=>wwv_flow_imp.id(12057211257990258)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Puntaje Maximo'
,p_source=>'PUNTAJE_MAXIMO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12058785709990259)
,p_name=>'P25_ID_TIPO_EVALUACION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12057211257990258)
,p_item_source_plug_id=>wwv_flow_imp.id(12057211257990258)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Tipo Evaluacion'
,p_source=>'ID_TIPO_EVALUACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIPO_EVALUACION.NOMBRE_TIPO_EVALUACION'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12059441012990259)
,p_name=>'P25_ID_ASIGNATURA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12057211257990258)
,p_item_source_plug_id=>wwv_flow_imp.id(12057211257990258)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Asignatura'
,p_source=>'ID_ASIGNATURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ASIGNATURA.CODIGO_ASIGNATURA'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12062197821990261)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12062027099990261)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12062907920990261)
,p_event_id=>wwv_flow_imp.id(12062197821990261)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12065095376990262)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12057211257990258)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Evaluacion'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12065095376990262
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12065460938990262)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>12065460938990262
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12064679185990262)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(12057211257990258)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Evaluacion'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12064679185990262
,p_created_on=>wwv_flow_imp.dz('20251101184959Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184959Z')
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Inscripcion'
,p_alias=>'INSCRIPCION1'
,p_step_title=>'Inscripcion'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12081731680990654)
,p_plug_name=>'Inscripcion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'INSCRIPCION'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Inscripcion'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12081829247990654)
,p_name=>'Inscripcion'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_INSCRIPCION'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:RP:P27_ID_INSCRIPCION:\#ID_INSCRIPCION#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>12081829247990654
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12082556689990655)
,p_db_column_name=>'ID_INSCRIPCION'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Inscripcion'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12082920626990655)
,p_db_column_name=>'NOTA_FINAL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nota Final'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12083381929990655)
,p_db_column_name=>'ID_ESTUDIANTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id Estudiante'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(12073120549990651)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12083750631990656)
,p_db_column_name=>'ID_ASIGNATURA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Id Asignatura'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(12059523687990259)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12084118803990656)
,p_db_column_name=>'ID_DOCENTE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Id Docente'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(12074214798990651)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12084574096990656)
,p_db_column_name=>'ID_SEMESTRE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Id Semestre'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(12074919443990652)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12222594681991477)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'122226'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOTA_FINAL:ID_ESTUDIANTE:ID_ASIGNATURA:ID_DOCENTE:ID_SEMESTRE'
,p_sort_column_1=>'NOTA_FINAL'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12086216428990657)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11889836276985982)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12085036369990656)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12081731680990654)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:27::'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12085384730990656)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12081731680990654)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12085875373990656)
,p_event_id=>wwv_flow_imp.id(12085384730990656)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12081731680990654)
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_imp_page.create_page(
 p_id=>27
,p_name=>'Inscripcion'
,p_alias=>'INSCRIPCION'
,p_page_mode=>'MODAL'
,p_step_title=>'Inscripcion'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20251101185002Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12071981224990650)
,p_plug_name=>'Inscripcion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'INSCRIPCION'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12077337750990653)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12077728954990653)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12077337750990653)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12079100087990653)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12077337750990653)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P27_ID_INSCRIPCION'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12079538257990654)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12077337750990653)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P27_ID_INSCRIPCION'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12079943722990654)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12077337750990653)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P27_ID_INSCRIPCION'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12072214012990650)
,p_name=>'P27_ID_INSCRIPCION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12071981224990650)
,p_item_source_plug_id=>wwv_flow_imp.id(12071981224990650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Inscripcion'
,p_source=>'ID_INSCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12072657229990650)
,p_name=>'P27_NOTA_FINAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12071981224990650)
,p_item_source_plug_id=>wwv_flow_imp.id(12071981224990650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nota Final'
,p_source=>'NOTA_FINAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12073056395990651)
,p_name=>'P27_ID_ESTUDIANTE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12071981224990650)
,p_item_source_plug_id=>wwv_flow_imp.id(12071981224990650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Estudiante'
,p_source=>'ID_ESTUDIANTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ESTUDIANTE.NOMBRES_ESTUDIANTE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12073734725990651)
,p_name=>'P27_ID_ASIGNATURA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12071981224990650)
,p_item_source_plug_id=>wwv_flow_imp.id(12071981224990650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Asignatura'
,p_source=>'ID_ASIGNATURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ASIGNATURA.CODIGO_ASIGNATURA'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12074115633990651)
,p_name=>'P27_ID_DOCENTE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12071981224990650)
,p_item_source_plug_id=>wwv_flow_imp.id(12071981224990650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Docente'
,p_source=>'ID_DOCENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DOCENTE.NOMBRES'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12074818071990652)
,p_name=>'P27_ID_SEMESTRE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12071981224990650)
,p_item_source_plug_id=>wwv_flow_imp.id(12071981224990650)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Semestre'
,p_source=>'ID_SEMESTRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SEMESTRE.ID_SEMESTRE'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12077896867990653)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12077728954990653)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12078687047990653)
,p_event_id=>wwv_flow_imp.id(12077896867990653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12080730427990654)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12071981224990650)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Inscripcion'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12080730427990654
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12081180915990654)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>12081180915990654
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12080341649990654)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(12071981224990650)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Inscripcion'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12080341649990654
,p_created_on=>wwv_flow_imp.dz('20251101185003Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185003Z')
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_imp_page.create_page(
 p_id=>28
,p_name=>'Resultado Evaluacion'
,p_alias=>'RESULTADO-EVALUACION1'
,p_step_title=>'Resultado Evaluacion'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12096115219991041)
,p_plug_name=>'Resultado Evaluacion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'RESULTADO_EVALUACION'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Resultado Evaluacion'
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12096201912991041)
,p_name=>'Resultado Evaluacion'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_RESULTADO'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:RP:P29_ID_RESULTADO:\#ID_RESULTADO#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>12096201912991041
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12096959422991041)
,p_db_column_name=>'ID_RESULTADO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Resultado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12097353795991041)
,p_db_column_name=>'PUNTAJE_OBTENIDO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Puntaje Obtenido'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12097762541991042)
,p_db_column_name=>'ID_INSCRIPCION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id Inscripcion'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(12089218447991037)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12098112416991042)
,p_db_column_name=>'ID_EVALUACION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Id Evaluacion'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(12089960993991038)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12231981191991481)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'122320'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PUNTAJE_OBTENIDO:ID_INSCRIPCION:ID_EVALUACION'
,p_sort_column_1=>'PUNTAJE_OBTENIDO'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12099821155991042)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11889836276985982)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12098602236991042)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12096115219991041)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:29::'
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12098958503991042)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12096115219991041)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12099474732991042)
,p_event_id=>wwv_flow_imp.id(12098958503991042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12096115219991041)
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_imp_page.create_page(
 p_id=>29
,p_name=>'Resultado Evaluacion'
,p_alias=>'RESULTADO-EVALUACION'
,p_page_mode=>'MODAL'
,p_step_title=>'Resultado Evaluacion'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20251101185005Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12088012961991036)
,p_plug_name=>'Resultado Evaluacion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'RESULTADO_EVALUACION'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12091707199991038)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12092154347991039)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12091707199991038)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12093511902991039)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12091707199991038)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P29_ID_RESULTADO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12093942641991039)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12091707199991038)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P29_ID_RESULTADO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12094386536991039)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12091707199991038)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P29_ID_RESULTADO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12088302255991037)
,p_name=>'P29_ID_RESULTADO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12088012961991036)
,p_item_source_plug_id=>wwv_flow_imp.id(12088012961991036)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Resultado'
,p_source=>'ID_RESULTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12088723968991037)
,p_name=>'P29_PUNTAJE_OBTENIDO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12088012961991036)
,p_item_source_plug_id=>wwv_flow_imp.id(12088012961991036)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Puntaje Obtenido'
,p_source=>'PUNTAJE_OBTENIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12089106360991037)
,p_name=>'P29_ID_INSCRIPCION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12088012961991036)
,p_item_source_plug_id=>wwv_flow_imp.id(12088012961991036)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Inscripcion'
,p_source=>'ID_INSCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'INSCRIPCION.ID_INSCRIPCION'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12089852659991038)
,p_name=>'P29_ID_EVALUACION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12088012961991036)
,p_item_source_plug_id=>wwv_flow_imp.id(12088012961991036)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Evaluacion'
,p_source=>'ID_EVALUACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EVALUACION.ID_EVALUACION'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12092235168991039)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12092154347991039)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12093019072991039)
,p_event_id=>wwv_flow_imp.id(12092235168991039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12095106375991040)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12088012961991036)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Resultado Evaluacion'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12095106375991040
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12095532107991040)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>12095532107991040
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12094759060991040)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(12088012961991036)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Resultado Evaluacion'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12094759060991040
,p_created_on=>wwv_flow_imp.dz('20251101185006Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185006Z')
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>'Audit Result Evaluaciones'
,p_alias=>'AUDIT-RESULT-EVALUACIONES'
,p_step_title=>'Audit Result Evaluaciones'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12115184822991421)
,p_plug_name=>'Audit Result Evaluaciones'
,p_region_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'AUDIT_RESULT_EVALUACIONES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Audit Result Evaluaciones'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12115265502991421)
,p_name=>'Audit Result Evaluaciones'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ROWID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:RP:P31_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>12115265502991421
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12115960613991421)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12116324851991422)
,p_db_column_name=>'USER_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12116778780991422)
,p_db_column_name=>'FECHA_ACCION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fecha Accion'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12117188856991422)
,p_db_column_name=>'OPERACION_DML'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Operacion Dml'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12117584466991422)
,p_db_column_name=>'OLD_ID_RESULTADO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Old Id Resultado'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12117937528991422)
,p_db_column_name=>'NEW_ID_RESULTADO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'New Id Resultado'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12118361190991422)
,p_db_column_name=>'OLD_PUNTAJE_OBTENIDO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Old Puntaje Obtenido'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12118770675991423)
,p_db_column_name=>'NEW_PUNTAJE_OBTENIDO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'New Puntaje Obtenido'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12119104908991423)
,p_db_column_name=>'OLD_ID_INSCRIPCION'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Old Id Inscripcion'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12119582796991423)
,p_db_column_name=>'NEW_ID_INSCRIPCION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'New Id Inscripcion'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12119919536991423)
,p_db_column_name=>'OLD_ID_EVALUACION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Old Id Evaluacion'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12120320320991423)
,p_db_column_name=>'NEW_ID_EVALUACION'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'New Id Evaluacion'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12238998481991485)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'122390'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:USER_NAME:FECHA_ACCION:OPERACION_DML:OLD_ID_RESULTADO:NEW_ID_RESULTADO:OLD_PUNTAJE_OBTENIDO:NEW_PUNTAJE_OBTENIDO:OLD_ID_INSCRIPCION:NEW_ID_INSCRIPCION:OLD_ID_EVALUACION:NEW_ID_EVALUACION:'
,p_sort_column_1=>'USER_NAME'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20251101185011Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12122015391991424)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11889836276985982)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12120878400991424)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12115184822991421)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:31::'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12121135118991424)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12115184822991421)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12121650500991424)
,p_event_id=>wwv_flow_imp.id(12121135118991424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12115184822991421)
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_imp_page.create_page(
 p_id=>31
,p_name=>'Audit Result Evaluacione'
,p_alias=>'AUDIT-RESULT-EVALUACIONE'
,p_page_mode=>'MODAL'
,p_step_title=>'Audit Result Evaluacione'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20251101185009Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12101699125991413)
,p_plug_name=>'Audit Result Evaluacione'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'AUDIT_RESULT_EVALUACIONES'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12110705552991419)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12111103622991419)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12110705552991419)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12112516089991419)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12110705552991419)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P31_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12112933228991419)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12110705552991419)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P31_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12113312317991419)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12110705552991419)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P31_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12101991422991414)
,p_name=>'P31_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_item_source_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12102315042991414)
,p_name=>'P31_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_item_source_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Name'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12102735880991414)
,p_name=>'P31_FECHA_ACCION'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_item_source_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Accion'
,p_source=>'FECHA_ACCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12103507955991415)
,p_name=>'P31_OPERACION_DML'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_item_source_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Operacion Dml'
,p_source=>'OPERACION_DML'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12103912056991415)
,p_name=>'P31_OLD_ID_RESULTADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_item_source_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Old Id Resultado'
,p_source=>'OLD_ID_RESULTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12104342406991415)
,p_name=>'P31_NEW_ID_RESULTADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_item_source_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Id Resultado'
,p_source=>'NEW_ID_RESULTADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12104754686991415)
,p_name=>'P31_OLD_PUNTAJE_OBTENIDO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_item_source_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Old Puntaje Obtenido'
,p_source=>'OLD_PUNTAJE_OBTENIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12105189196991416)
,p_name=>'P31_NEW_PUNTAJE_OBTENIDO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_item_source_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Puntaje Obtenido'
,p_source=>'NEW_PUNTAJE_OBTENIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12105502584991416)
,p_name=>'P31_OLD_ID_INSCRIPCION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_item_source_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Old Id Inscripcion'
,p_source=>'OLD_ID_INSCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12105985744991416)
,p_name=>'P31_NEW_ID_INSCRIPCION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_item_source_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Id Inscripcion'
,p_source=>'NEW_ID_INSCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12106311627991416)
,p_name=>'P31_OLD_ID_EVALUACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_item_source_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Old Id Evaluacion'
,p_source=>'OLD_ID_EVALUACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12106783422991417)
,p_name=>'P31_NEW_ID_EVALUACION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_item_source_plug_id=>wwv_flow_imp.id(12101699125991413)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Id Evaluacion'
,p_source=>'NEW_ID_EVALUACION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185011Z')
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12103274257991414)
,p_validation_name=>'P31_FECHA_ACCION must be timestamp'
,p_validation_sequence=>20
,p_validation=>'P31_FECHA_ACCION'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(12102735880991414)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12111290263991419)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12111103622991419)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12112067489991419)
,p_event_id=>wwv_flow_imp.id(12111290263991419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12114138344991420)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12101699125991413)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Audit Result Evaluacione'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12114138344991420
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12114594364991420)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>12114594364991420
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12113735712991420)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(12101699125991413)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Audit Result Evaluacione'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12113735712991420
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_imp_page.create_page(
 p_id=>32
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101193432Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12123903295991425)
,p_plug_name=>unistr('Distribuci\00F3n de Notas por Asignatura')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    a.nombre_asignatura AS "Asignatura",',
'    ROUND(AVG(i.nota_final), 2) AS "Promedio de Nota"',
'FROM ',
'    INSCRIPCION i',
'    JOIN ASIGNATURA a ON i.id_asignatura = a.id_asignatura',
'GROUP BY ',
'    a.nombre_asignatura',
'ORDER BY ',
'    AVG(i.nota_final) DESC;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101191647Z')
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(11752574178938608)
,p_region_id=>wwv_flow_imp.id(12123903295991425)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20251101190945Z')
,p_updated_on=>wwv_flow_imp.dz('20251101191647Z')
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(11752693990938609)
,p_chart_id=>wwv_flow_imp.id(11752574178938608)
,p_seq=>10
,p_name=>unistr('Comparaci\00F3n entre asignaturas')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    a.nombre_asignatura AS "Asignatura",',
'    ROUND(AVG(i.nota_final), 2) AS "Promedio de Nota"',
'FROM ',
'    INSCRIPCION i',
'    JOIN ASIGNATURA a ON i.id_asignatura = a.id_asignatura',
'GROUP BY ',
'    a.nombre_asignatura',
'ORDER BY ',
'    AVG(i.nota_final) DESC;',
''))
,p_items_value_column_name=>'Promedio de Nota'
,p_group_name_column_name=>'Asignatura'
,p_items_label_column_name=>'Promedio de Nota'
,p_items_short_desc_column_name=>'Asignatura'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20251101190945Z')
,p_updated_on=>wwv_flow_imp.dz('20251101191647Z')
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(11752723345938610)
,p_chart_id=>wwv_flow_imp.id(11752574178938608)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20251101190945Z')
,p_updated_on=>wwv_flow_imp.dz('20251101190945Z')
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(11752891362938611)
,p_chart_id=>wwv_flow_imp.id(11752574178938608)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20251101190945Z')
,p_updated_on=>wwv_flow_imp.dz('20251101190945Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12126677365991427)
,p_plug_name=>'Rendimiento Promedio por Asignatura (Vista Global)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101191647Z')
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(12127019406991427)
,p_region_id=>wwv_flow_imp.id(12126677365991427)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101191647Z')
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(12128769239991428)
,p_chart_id=>wwv_flow_imp.id(12127019406991427)
,p_seq=>10
,p_name=>'Resume los resultados general'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    a.nombre_asignatura AS "Asignatura",',
'    ROUND(AVG(i.nota_final), 2) AS "Promedio de Nota"',
'FROM ',
'    INSCRIPCION i',
'    JOIN ASIGNATURA a ON i.id_asignatura = a.id_asignatura',
'GROUP BY ',
'    a.nombre_asignatura',
'ORDER BY ',
'    AVG(i.nota_final) DESC;'))
,p_max_row_count=>20
,p_items_value_column_name=>'Promedio de Nota'
,p_items_label_column_name=>'Asignatura'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101191647Z')
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(12127536944991427)
,p_chart_id=>wwv_flow_imp.id(12127019406991427)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(12128176454991427)
,p_chart_id=>wwv_flow_imp.id(12127019406991427)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12129391129991428)
,p_plug_name=>'Tendencia del Promedio de Notas por Asignatura'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101193432Z')
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(12129701888991428)
,p_region_id=>wwv_flow_imp.id(12129391129991428)
,p_chart_type=>'line'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101193432Z')
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(12131407453991429)
,p_chart_id=>wwv_flow_imp.id(12129701888991428)
,p_seq=>10
,p_name=>unistr('Evoluci\00F3n del Promedio General de Notas')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    a.nombre_asignatura AS "Asignatura",',
'    ROUND(AVG(i.nota_final), 2) AS "Promedio de Nota"',
'FROM ',
'    INSCRIPCION i',
'    JOIN ASIGNATURA a ON i.id_asignatura = a.id_asignatura',
'GROUP BY ',
'    a.nombre_asignatura',
'ORDER BY ',
'    AVG(i.nota_final) DESC;',
''))
,p_max_row_count=>20
,p_items_value_column_name=>'Promedio de Nota'
,p_group_name_column_name=>'Asignatura'
,p_items_label_column_name=>'Asignatura'
,p_items_short_desc_column_name=>'Promedio de Nota'
,p_color=>'#568ca7'
,p_line_style=>'solid'
,p_line_type=>'straight'
,p_marker_rendered=>'off'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101193432Z')
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(12130230805991428)
,p_chart_id=>wwv_flow_imp.id(12129701888991428)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(12130862431991429)
,p_chart_id=>wwv_flow_imp.id(12129701888991428)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(11752935309938612)
,p_chart_id=>wwv_flow_imp.id(12129701888991428)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_created_on=>wwv_flow_imp.dz('20251101192731Z')
,p_updated_on=>wwv_flow_imp.dz('20251101192731Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12132092389991429)
,p_plug_name=>'Porcentaje del Promedio de Notas Finales por Asignatura'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101192126Z')
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(12132434439991429)
,p_region_id=>wwv_flow_imp.id(12132092389991429)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101192126Z')
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(12132962342991429)
,p_chart_id=>wwv_flow_imp.id(12132434439991429)
,p_seq=>10
,p_name=>'Porcentaje  de notas por asignatura'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    a.nombre_asignatura AS "Asignatura",',
'    ROUND(AVG(i.nota_final), 2) AS "Promedio de Nota"',
'FROM ',
'    INSCRIPCION i',
'    JOIN ASIGNATURA a ON i.id_asignatura = a.id_asignatura',
'GROUP BY ',
'    a.nombre_asignatura',
'ORDER BY ',
'    AVG(i.nota_final) DESC;',
''))
,p_max_row_count=>20
,p_items_value_column_name=>'Promedio de Nota'
,p_items_label_column_name=>'Promedio de Nota'
,p_items_short_desc_column_name=>'Asignatura'
,p_custom_column_name=>'Asignatura'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101192126Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12133501700991429)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(11889836276985982)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20251101185010Z')
,p_updated_on=>wwv_flow_imp.dz('20251101185010Z')
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>unistr('Distribuci\00F3n de Notas por Asignatura - Log In')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_last_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11904485079986002)
,p_plug_name=>unistr('Distribuci\00F3n de Notas por Asignatura')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11906126931986004)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11904485079986002)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11904968855986004)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11904485079986002)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11905335456986004)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11904485079986002)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11905775987986004)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11904485079986002)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11908385893986005)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11908385893986005
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11908851905986006)
,p_page_process_id=>wwv_flow_imp.id(11908385893986005)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11909371653986006)
,p_page_process_id=>wwv_flow_imp.id(11908385893986005)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11906499362986005)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11906499362986005
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11906952813986005)
,p_page_process_id=>wwv_flow_imp.id(11906499362986005)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11907478887986005)
,p_page_process_id=>wwv_flow_imp.id(11906499362986005)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(11907975112986005)
,p_page_process_id=>wwv_flow_imp.id(11906499362986005)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11910229443986006)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11910229443986006
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11909807417986006)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>11909807417986006
,p_created_on=>wwv_flow_imp.dz('20251101184916Z')
,p_updated_on=>wwv_flow_imp.dz('20251101184916Z')
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
