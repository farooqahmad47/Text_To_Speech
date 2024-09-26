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
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>3032592141610074476
,p_default_application_id=>28888
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AHMADTECH'
);
end;
/
 
prompt APPLICATION 28888 - Plug-IN Palace
--
-- Application Export:
--   Application:     28888
--   Name:            Plug-IN Palace
--   Date and Time:   23:01 Thursday September 26, 2024
--   Exported By:     FAROOQ.ORACLE47@GMAIL.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 45184303280163155728
--   Manifest End
--   Version:         24.1.3
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/text_speachv2
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(45184303280163155728)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'TEXT_SPEACHV2'
,p_display_name=>'Text-SpeachV2'
,p_supported_component_types=>'PARTIAL'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!-- Include Font Awesome for icons -->',
'<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">',
'',
'<style>',
'  .text-row {',
'    display: flex;',
'    align-items: center;',
'    margin-bottom: 10px;',
'  }',
'',
'  .audio-button {',
'    background-color: transparent;',
'    border: none;',
'    cursor: pointer;',
'    font-size: 24px;',
'    margin-right: 10px; /* Space between icon and text */',
'  }',
'',
'  .audio-button .play-icon {',
'    color: #4CAF50; /* Play icon color (green) */',
'  }',
'',
'  .audio-button .stop-icon {',
'    color: #F44336; /* Stop icon color (red) */',
'  }',
'',
'  .text {',
'    font-size: 18px;',
'  }',
'</style>',
'',
'<body>',
'  <div class="text-row">',
'    <!-- Make sure the button has type="button" to prevent form submission -->',
'    <button class="audio-button" type="button" onclick="togglePlay(''text-row-#PRIMARY_KEY#'', ''#SHORT_CODE#'')">',
'      <i class="fas fa-play play-icon"></i>',
'    </button>',
'    <p id="text-row-#PRIMARY_KEY#" class="text" lang="#SHORT_CODE#">#TEXT#</p>',
'  </div>',
'',
'  <script>',
'    let voices = [];',
'    let isPlaying = false;',
'    let utterance = null;',
'    let currentTextId = null; // To track the current playing text row',
'',
'    // Load available voices',
'    function loadVoices() {',
'      voices = window.speechSynthesis.getVoices();',
'    }',
'',
'    // Toggle play/pause for the selected row',
'    function togglePlay(textId, lang = ''#SHORT_CODE#'') {',
'      const textElement = document.getElementById(textId);',
'      const text = textElement.innerText;',
'',
'      // If it''s playing a different row, stop and reset first',
'      if (isPlaying && currentTextId !== textId) {',
'        window.speechSynthesis.cancel();',
'        resetButton(document.getElementById(currentTextId));',
'      }',
'',
'      if (!isPlaying || currentTextId !== textId) {',
'        // Start playing text',
'        utterance = new SpeechSynthesisUtterance(text);',
'        utterance.lang = lang;',
'',
'        // Find appropriate voice for the language',
'        const selectedVoice = voices.find(voice => voice.lang.startsWith(lang));',
'        if (selectedVoice) {',
'          utterance.voice = selectedVoice;',
'        }',
'',
'        window.speechSynthesis.speak(utterance);',
'        isPlaying = true;',
'        currentTextId = textId;',
'',
'        // Change button to stop icon for the selected row',
'        textElement.previousElementSibling.querySelector(''i'').classList.remove("fa-play", "play-icon");',
'        textElement.previousElementSibling.querySelector(''i'').classList.add("fa-stop", "stop-icon");',
'',
'        // Reset button after speech ends',
'        utterance.onend = function() {',
'          resetButton(textElement);',
'          isPlaying = false;',
'          currentTextId = null;',
'        };',
'      } else {',
'        // Stop playing if it''s the same row',
'        window.speechSynthesis.cancel();',
'        resetButton(textElement);',
'        isPlaying = false;',
'        currentTextId = null;',
'      }',
'    }',
'',
'    // Reset button to play icon',
'    function resetButton(textElement) {',
'      textElement.previousElementSibling.querySelector(''i'').classList.remove("fa-stop", "stop-icon");',
'      textElement.previousElementSibling.querySelector(''i'').classList.add("fa-play", "play-icon");',
'    }',
'',
'    // Ensure voices are loaded when the page loads',
'    window.speechSynthesis.onvoiceschanged = loadVoices;',
'  </script>',
'</body>',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_version_scn=>15577588357284
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(45184303516925155746)
,p_plugin_id=>wwv_flow_imp.id(45184303280163155728)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'PRIMARY_KEY'
,p_prompt=>'Primary Key'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(45184303917061155747)
,p_plugin_id=>wwv_flow_imp.id(45184303280163155728)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'SHORT_CODE'
,p_prompt=>'Short Code'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(45184304343001155747)
,p_plugin_id=>wwv_flow_imp.id(45184303280163155728)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'TEXT'
,p_prompt=>'Text'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
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
