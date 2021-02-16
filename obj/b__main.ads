pragma Ada_95;
with System;
package ada_main is
   pragma Warnings (Off);

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: GPL 2011 (20110428)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_main" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#037b7843#;
   pragma Export (C, u00001, "mainB");
   u00002 : constant Version_32 := 16#7d892fe9#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#b2760b05#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#b486ed31#;
   pragma Export (C, u00005, "ada__calendar__delaysB");
   u00006 : constant Version_32 := 16#ab1c3be0#;
   pragma Export (C, u00006, "ada__calendar__delaysS");
   u00007 : constant Version_32 := 16#0f244912#;
   pragma Export (C, u00007, "ada__calendarB");
   u00008 : constant Version_32 := 16#0bc00dc5#;
   pragma Export (C, u00008, "ada__calendarS");
   u00009 : constant Version_32 := 16#08dd46b8#;
   pragma Export (C, u00009, "ada__exceptionsB");
   u00010 : constant Version_32 := 16#9b58bcb3#;
   pragma Export (C, u00010, "ada__exceptionsS");
   u00011 : constant Version_32 := 16#52aba3be#;
   pragma Export (C, u00011, "ada__exceptions__last_chance_handlerB");
   u00012 : constant Version_32 := 16#48e7b9e5#;
   pragma Export (C, u00012, "ada__exceptions__last_chance_handlerS");
   u00013 : constant Version_32 := 16#bc164b96#;
   pragma Export (C, u00013, "systemS");
   u00014 : constant Version_32 := 16#360d120c#;
   pragma Export (C, u00014, "system__soft_linksB");
   u00015 : constant Version_32 := 16#c254e109#;
   pragma Export (C, u00015, "system__soft_linksS");
   u00016 : constant Version_32 := 16#92dc3a55#;
   pragma Export (C, u00016, "system__parametersB");
   u00017 : constant Version_32 := 16#bfbc7097#;
   pragma Export (C, u00017, "system__parametersS");
   u00018 : constant Version_32 := 16#1907a5d3#;
   pragma Export (C, u00018, "system__secondary_stackB");
   u00019 : constant Version_32 := 16#a8786c38#;
   pragma Export (C, u00019, "system__secondary_stackS");
   u00020 : constant Version_32 := 16#ace32e1e#;
   pragma Export (C, u00020, "system__storage_elementsB");
   u00021 : constant Version_32 := 16#46db360e#;
   pragma Export (C, u00021, "system__storage_elementsS");
   u00022 : constant Version_32 := 16#4f750b3b#;
   pragma Export (C, u00022, "system__stack_checkingB");
   u00023 : constant Version_32 := 16#1fb4f7ba#;
   pragma Export (C, u00023, "system__stack_checkingS");
   u00024 : constant Version_32 := 16#53547b86#;
   pragma Export (C, u00024, "system__exception_tableB");
   u00025 : constant Version_32 := 16#2d789733#;
   pragma Export (C, u00025, "system__exception_tableS");
   u00026 : constant Version_32 := 16#ff3fa16b#;
   pragma Export (C, u00026, "system__htableB");
   u00027 : constant Version_32 := 16#53c9e749#;
   pragma Export (C, u00027, "system__htableS");
   u00028 : constant Version_32 := 16#8b7dad61#;
   pragma Export (C, u00028, "system__string_hashB");
   u00029 : constant Version_32 := 16#9a8a9302#;
   pragma Export (C, u00029, "system__string_hashS");
   u00030 : constant Version_32 := 16#6a8a6a74#;
   pragma Export (C, u00030, "system__exceptionsB");
   u00031 : constant Version_32 := 16#2aa87202#;
   pragma Export (C, u00031, "system__exceptionsS");
   u00032 : constant Version_32 := 16#b012ff50#;
   pragma Export (C, u00032, "system__img_intB");
   u00033 : constant Version_32 := 16#becdab54#;
   pragma Export (C, u00033, "system__img_intS");
   u00034 : constant Version_32 := 16#dc8e33ed#;
   pragma Export (C, u00034, "system__tracebackB");
   u00035 : constant Version_32 := 16#dd919fe3#;
   pragma Export (C, u00035, "system__tracebackS");
   u00036 : constant Version_32 := 16#d6f717e0#;
   pragma Export (C, u00036, "system__unsigned_typesS");
   u00037 : constant Version_32 := 16#907d882f#;
   pragma Export (C, u00037, "system__wch_conB");
   u00038 : constant Version_32 := 16#03fd65ab#;
   pragma Export (C, u00038, "system__wch_conS");
   u00039 : constant Version_32 := 16#22fed88a#;
   pragma Export (C, u00039, "system__wch_stwB");
   u00040 : constant Version_32 := 16#2eec49aa#;
   pragma Export (C, u00040, "system__wch_stwS");
   u00041 : constant Version_32 := 16#5d4d477e#;
   pragma Export (C, u00041, "system__wch_cnvB");
   u00042 : constant Version_32 := 16#1d03e37d#;
   pragma Export (C, u00042, "system__wch_cnvS");
   u00043 : constant Version_32 := 16#f77d8799#;
   pragma Export (C, u00043, "interfacesS");
   u00044 : constant Version_32 := 16#75729fba#;
   pragma Export (C, u00044, "system__wch_jisB");
   u00045 : constant Version_32 := 16#49717869#;
   pragma Export (C, u00045, "system__wch_jisS");
   u00046 : constant Version_32 := 16#ada34a87#;
   pragma Export (C, u00046, "system__traceback_entriesB");
   u00047 : constant Version_32 := 16#ee37a5d7#;
   pragma Export (C, u00047, "system__traceback_entriesS");
   u00048 : constant Version_32 := 16#ae2ee403#;
   pragma Export (C, u00048, "system__os_primitivesB");
   u00049 : constant Version_32 := 16#0cc7c7bf#;
   pragma Export (C, u00049, "system__os_primitivesS");
   u00050 : constant Version_32 := 16#ef14d5af#;
   pragma Export (C, u00050, "system__win32S");
   u00051 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00051, "interfaces__cB");
   u00052 : constant Version_32 := 16#a0f6ad03#;
   pragma Export (C, u00052, "interfaces__cS");
   u00053 : constant Version_32 := 16#3ba899eb#;
   pragma Export (C, u00053, "system__win32__extS");
   u00054 : constant Version_32 := 16#ee80728a#;
   pragma Export (C, u00054, "system__tracesB");
   u00055 : constant Version_32 := 16#4e0b233c#;
   pragma Export (C, u00055, "system__tracesS");
   u00056 : constant Version_32 := 16#fe77d4bb#;
   pragma Export (C, u00056, "ada__real_timeB");
   u00057 : constant Version_32 := 16#5bfb6637#;
   pragma Export (C, u00057, "ada__real_timeS");
   u00058 : constant Version_32 := 16#763c483e#;
   pragma Export (C, u00058, "system__arith_64B");
   u00059 : constant Version_32 := 16#eb7a6d66#;
   pragma Export (C, u00059, "system__arith_64S");
   u00060 : constant Version_32 := 16#5857c1f4#;
   pragma Export (C, u00060, "system__taskingB");
   u00061 : constant Version_32 := 16#76b1e09e#;
   pragma Export (C, u00061, "system__taskingS");
   u00062 : constant Version_32 := 16#4ea2a83e#;
   pragma Export (C, u00062, "system__task_primitivesS");
   u00063 : constant Version_32 := 16#ce13ac8b#;
   pragma Export (C, u00063, "system__os_interfaceS");
   u00064 : constant Version_32 := 16#b3abd60c#;
   pragma Export (C, u00064, "interfaces__c__stringsB");
   u00065 : constant Version_32 := 16#603c1c44#;
   pragma Export (C, u00065, "interfaces__c__stringsS");
   u00066 : constant Version_32 := 16#5fc6897f#;
   pragma Export (C, u00066, "system__task_primitives__operationsB");
   u00067 : constant Version_32 := 16#43202745#;
   pragma Export (C, u00067, "system__task_primitives__operationsS");
   u00068 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00068, "system__float_controlB");
   u00069 : constant Version_32 := 16#5cea08aa#;
   pragma Export (C, u00069, "system__float_controlS");
   u00070 : constant Version_32 := 16#1826115c#;
   pragma Export (C, u00070, "system__interrupt_managementB");
   u00071 : constant Version_32 := 16#437cbff6#;
   pragma Export (C, u00071, "system__interrupt_managementS");
   u00072 : constant Version_32 := 16#c313b593#;
   pragma Export (C, u00072, "system__multiprocessorsB");
   u00073 : constant Version_32 := 16#84bad4e5#;
   pragma Export (C, u00073, "system__multiprocessorsS");
   u00074 : constant Version_32 := 16#5052be8c#;
   pragma Export (C, u00074, "system__task_infoB");
   u00075 : constant Version_32 := 16#3ea45c99#;
   pragma Export (C, u00075, "system__task_infoS");
   u00076 : constant Version_32 := 16#42bf477b#;
   pragma Export (C, u00076, "system__tasking__debugB");
   u00077 : constant Version_32 := 16#f32cb5c6#;
   pragma Export (C, u00077, "system__tasking__debugS");
   u00078 : constant Version_32 := 16#39591e91#;
   pragma Export (C, u00078, "system__concat_2B");
   u00079 : constant Version_32 := 16#47c6b96a#;
   pragma Export (C, u00079, "system__concat_2S");
   u00080 : constant Version_32 := 16#ae97ef6c#;
   pragma Export (C, u00080, "system__concat_3B");
   u00081 : constant Version_32 := 16#ca3c49fc#;
   pragma Export (C, u00081, "system__concat_3S");
   u00082 : constant Version_32 := 16#c9fdc962#;
   pragma Export (C, u00082, "system__concat_6B");
   u00083 : constant Version_32 := 16#7bdcbe82#;
   pragma Export (C, u00083, "system__concat_6S");
   u00084 : constant Version_32 := 16#def1dd00#;
   pragma Export (C, u00084, "system__concat_5B");
   u00085 : constant Version_32 := 16#ac2f8537#;
   pragma Export (C, u00085, "system__concat_5S");
   u00086 : constant Version_32 := 16#3493e6c0#;
   pragma Export (C, u00086, "system__concat_4B");
   u00087 : constant Version_32 := 16#be49a828#;
   pragma Export (C, u00087, "system__concat_4S");
   u00088 : constant Version_32 := 16#13cbc1ce#;
   pragma Export (C, u00088, "system__crtlS");
   u00089 : constant Version_32 := 16#1eab0e09#;
   pragma Export (C, u00089, "system__img_enum_newB");
   u00090 : constant Version_32 := 16#3b118066#;
   pragma Export (C, u00090, "system__img_enum_newS");
   u00091 : constant Version_32 := 16#194ccd7b#;
   pragma Export (C, u00091, "system__img_unsB");
   u00092 : constant Version_32 := 16#49032b17#;
   pragma Export (C, u00092, "system__img_unsS");
   u00093 : constant Version_32 := 16#cec2da0b#;
   pragma Export (C, u00093, "system__stack_usageB");
   u00094 : constant Version_32 := 16#1102a6a9#;
   pragma Export (C, u00094, "system__stack_usageS");
   u00095 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00095, "system__ioB");
   u00096 : constant Version_32 := 16#2254bcd9#;
   pragma Export (C, u00096, "system__ioS");
   u00097 : constant Version_32 := 16#8332779a#;
   pragma Export (C, u00097, "ada__tagsB");
   u00098 : constant Version_32 := 16#02144d76#;
   pragma Export (C, u00098, "ada__tagsS");
   u00099 : constant Version_32 := 16#e6965fe6#;
   pragma Export (C, u00099, "system__val_unsB");
   u00100 : constant Version_32 := 16#c65ffadb#;
   pragma Export (C, u00100, "system__val_unsS");
   u00101 : constant Version_32 := 16#46a1f7a9#;
   pragma Export (C, u00101, "system__val_utilB");
   u00102 : constant Version_32 := 16#b7bbde89#;
   pragma Export (C, u00102, "system__val_utilS");
   u00103 : constant Version_32 := 16#b7fa72e7#;
   pragma Export (C, u00103, "system__case_utilB");
   u00104 : constant Version_32 := 16#110a2b1e#;
   pragma Export (C, u00104, "system__case_utilS");
   u00105 : constant Version_32 := 16#40ecfd52#;
   pragma Export (C, u00105, "ciudadB");
   u00106 : constant Version_32 := 16#c06122f7#;
   pragma Export (C, u00106, "ciudadS");
   u00107 : constant Version_32 := 16#84ad4a42#;
   pragma Export (C, u00107, "ada__numericsS");
   u00108 : constant Version_32 := 16#eba18e7b#;
   pragma Export (C, u00108, "monitorciudadB");
   u00109 : constant Version_32 := 16#589326d8#;
   pragma Export (C, u00109, "monitorciudadS");
   u00110 : constant Version_32 := 16#29548666#;
   pragma Export (C, u00110, "system__tasking__protected_objectsB");
   u00111 : constant Version_32 := 16#e2c8a7eb#;
   pragma Export (C, u00111, "system__tasking__protected_objectsS");
   u00112 : constant Version_32 := 16#4a908754#;
   pragma Export (C, u00112, "system__soft_links__taskingB");
   u00113 : constant Version_32 := 16#2e7c4429#;
   pragma Export (C, u00113, "system__soft_links__taskingS");
   u00114 : constant Version_32 := 16#17d21067#;
   pragma Export (C, u00114, "ada__exceptions__is_null_occurrenceB");
   u00115 : constant Version_32 := 16#8f97a854#;
   pragma Export (C, u00115, "ada__exceptions__is_null_occurrenceS");
   u00116 : constant Version_32 := 16#036cdb71#;
   pragma Export (C, u00116, "system__random_numbersB");
   u00117 : constant Version_32 := 16#15d8f305#;
   pragma Export (C, u00117, "system__random_numbersS");
   u00118 : constant Version_32 := 16#ad8e951d#;
   pragma Export (C, u00118, "system__tasking__stagesB");
   u00119 : constant Version_32 := 16#bfafc253#;
   pragma Export (C, u00119, "system__tasking__stagesS");
   u00120 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00120, "system__address_imageB");
   u00121 : constant Version_32 := 16#1dfad6ac#;
   pragma Export (C, u00121, "system__address_imageS");
   u00122 : constant Version_32 := 16#386436bc#;
   pragma Export (C, u00122, "system__restrictionsB");
   u00123 : constant Version_32 := 16#4fcd432c#;
   pragma Export (C, u00123, "system__restrictionsS");
   u00124 : constant Version_32 := 16#25087fbf#;
   pragma Export (C, u00124, "system__tasking__initializationB");
   u00125 : constant Version_32 := 16#7f6b69f1#;
   pragma Export (C, u00125, "system__tasking__initializationS");
   u00126 : constant Version_32 := 16#e954ed7e#;
   pragma Export (C, u00126, "system__tasking__queuingB");
   u00127 : constant Version_32 := 16#ee1cad28#;
   pragma Export (C, u00127, "system__tasking__queuingS");
   u00128 : constant Version_32 := 16#1bc6a741#;
   pragma Export (C, u00128, "system__tasking__protected_objects__entriesB");
   u00129 : constant Version_32 := 16#f2cd5189#;
   pragma Export (C, u00129, "system__tasking__protected_objects__entriesS");
   u00130 : constant Version_32 := 16#6d616d1b#;
   pragma Export (C, u00130, "ada__finalizationB");
   u00131 : constant Version_32 := 16#a11701ff#;
   pragma Export (C, u00131, "ada__finalizationS");
   u00132 : constant Version_32 := 16#1358602f#;
   pragma Export (C, u00132, "ada__streamsS");
   u00133 : constant Version_32 := 16#f7ab51aa#;
   pragma Export (C, u00133, "system__finalization_rootB");
   u00134 : constant Version_32 := 16#bd6af943#;
   pragma Export (C, u00134, "system__finalization_rootS");
   u00135 : constant Version_32 := 16#339a1fb2#;
   pragma Export (C, u00135, "ada__finalization__heap_managementB");
   u00136 : constant Version_32 := 16#b0f96d78#;
   pragma Export (C, u00136, "ada__finalization__heap_managementS");
   u00137 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00137, "system__img_boolB");
   u00138 : constant Version_32 := 16#49cf3a7d#;
   pragma Export (C, u00138, "system__img_boolS");
   u00139 : constant Version_32 := 16#d21112bd#;
   pragma Export (C, u00139, "system__storage_poolsB");
   u00140 : constant Version_32 := 16#a9b91ff2#;
   pragma Export (C, u00140, "system__storage_poolsS");
   u00141 : constant Version_32 := 16#ebb6b8da#;
   pragma Export (C, u00141, "system__pool_globalB");
   u00142 : constant Version_32 := 16#f2b3b4b1#;
   pragma Export (C, u00142, "system__pool_globalS");
   u00143 : constant Version_32 := 16#67335317#;
   pragma Export (C, u00143, "system__memoryB");
   u00144 : constant Version_32 := 16#769df783#;
   pragma Export (C, u00144, "system__memoryS");
   u00145 : constant Version_32 := 16#8921cdce#;
   pragma Export (C, u00145, "system__tasking__rendezvousB");
   u00146 : constant Version_32 := 16#9b7e32a8#;
   pragma Export (C, u00146, "system__tasking__rendezvousS");
   u00147 : constant Version_32 := 16#d4c29667#;
   pragma Export (C, u00147, "system__tasking__entry_callsB");
   u00148 : constant Version_32 := 16#687efea4#;
   pragma Export (C, u00148, "system__tasking__entry_callsS");
   u00149 : constant Version_32 := 16#fe905a38#;
   pragma Export (C, u00149, "system__tasking__protected_objects__operationsB");
   u00150 : constant Version_32 := 16#a0186ad7#;
   pragma Export (C, u00150, "system__tasking__protected_objects__operationsS");
   u00151 : constant Version_32 := 16#95d44227#;
   pragma Export (C, u00151, "system__tasking__utilitiesB");
   u00152 : constant Version_32 := 16#b8d04f49#;
   pragma Export (C, u00152, "system__tasking__utilitiesS");
   u00153 : constant Version_32 := 16#bd6fc52e#;
   pragma Export (C, u00153, "system__traces__taskingB");
   u00154 : constant Version_32 := 16#becc801d#;
   pragma Export (C, u00154, "system__traces__taskingS");
   u00155 : constant Version_32 := 16#b4cbe874#;
   pragma Export (C, u00155, "tareaplantaB");
   u00156 : constant Version_32 := 16#4f4efc46#;
   pragma Export (C, u00156, "tareaplantaS");
   u00157 : constant Version_32 := 16#ba4fe190#;
   pragma Export (C, u00157, "actuadorescritorpB");
   u00158 : constant Version_32 := 16#1028a367#;
   pragma Export (C, u00158, "actuadorescritorpS");
   u00159 : constant Version_32 := 16#d7f0d61d#;
   pragma Export (C, u00159, "ada__real_time__timing_eventsB");
   u00160 : constant Version_32 := 16#f230ff5f#;
   pragma Export (C, u00160, "ada__real_time__timing_eventsS");
   u00161 : constant Version_32 := 16#5e196e91#;
   pragma Export (C, u00161, "ada__containersS");
   u00162 : constant Version_32 := 16#a0dcd313#;
   pragma Export (C, u00162, "ada__real_time__delaysB");
   u00163 : constant Version_32 := 16#6becaccd#;
   pragma Export (C, u00163, "ada__real_time__delaysS");
   u00164 : constant Version_32 := 16#0110e3c6#;
   pragma Export (C, u00164, "system__interrupt_management__operationsB");
   u00165 : constant Version_32 := 16#19b909c9#;
   pragma Export (C, u00165, "system__interrupt_management__operationsS");
   u00166 : constant Version_32 := 16#a6e358bc#;
   pragma Export (C, u00166, "system__stream_attributesB");
   u00167 : constant Version_32 := 16#e89b4b3f#;
   pragma Export (C, u00167, "system__stream_attributesS");
   u00168 : constant Version_32 := 16#b46168d5#;
   pragma Export (C, u00168, "ada__io_exceptionsS");
   u00169 : constant Version_32 := 16#7975712c#;
   pragma Export (C, u00169, "monitorplantaB");
   u00170 : constant Version_32 := 16#c71f331e#;
   pragma Export (C, u00170, "monitorplantaS");
   u00171 : constant Version_32 := 16#7dbbd31d#;
   pragma Export (C, u00171, "text_ioS");
   u00172 : constant Version_32 := 16#7a8f4ce5#;
   pragma Export (C, u00172, "ada__text_ioB");
   u00173 : constant Version_32 := 16#e76e8bfb#;
   pragma Export (C, u00173, "ada__text_ioS");
   u00174 : constant Version_32 := 16#7a48d8b1#;
   pragma Export (C, u00174, "interfaces__c_streamsB");
   u00175 : constant Version_32 := 16#40dd1af2#;
   pragma Export (C, u00175, "interfaces__c_streamsS");
   u00176 : constant Version_32 := 16#efe3a128#;
   pragma Export (C, u00176, "system__file_ioB");
   u00177 : constant Version_32 := 16#b1614c7b#;
   pragma Export (C, u00177, "system__file_ioS");
   u00178 : constant Version_32 := 16#a50435f4#;
   pragma Export (C, u00178, "system__crtl__runtimeS");
   u00179 : constant Version_32 := 16#9cd5d2c4#;
   pragma Export (C, u00179, "system__os_libB");
   u00180 : constant Version_32 := 16#a6d80a38#;
   pragma Export (C, u00180, "system__os_libS");
   u00181 : constant Version_32 := 16#4cd8aca0#;
   pragma Export (C, u00181, "system__stringsB");
   u00182 : constant Version_32 := 16#0bfc0152#;
   pragma Export (C, u00182, "system__stringsS");
   u00183 : constant Version_32 := 16#6329a5ac#;
   pragma Export (C, u00183, "system__file_control_blockS");
   u00184 : constant Version_32 := 16#607645a2#;
   pragma Export (C, u00184, "sensorlectorpB");
   u00185 : constant Version_32 := 16#0506ab29#;
   pragma Export (C, u00185, "sensorlectorpS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  interfaces%s
   --  system%s
   --  system.arith_64%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.float_control%s
   --  system.float_control%b
   --  system.htable%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_enum_new%s
   --  system.img_enum_new%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.io%s
   --  system.io%b
   --  system.multiprocessors%s
   --  system.os_primitives%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.standard_library%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.stack_usage%s
   --  system.stack_usage%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.arith_64%b
   --  ada.exceptions.is_null_occurrence%s
   --  ada.exceptions.is_null_occurrence%b
   --  system.soft_links%s
   --  system.traces%s
   --  system.traces%b
   --  system.unsigned_types%s
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  system.address_image%s
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.concat_4%s
   --  system.concat_4%b
   --  system.concat_5%s
   --  system.concat_5%b
   --  system.concat_6%s
   --  system.concat_6%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.containers%s
   --  ada.io_exceptions%s
   --  ada.numerics%s
   --  ada.tags%s
   --  ada.streams%s
   --  interfaces.c%s
   --  system.multiprocessors%b
   --  interfaces.c.strings%s
   --  system.crtl.runtime%s
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.win32%s
   --  system.os_interface%s
   --  system.interrupt_management%s
   --  system.interrupt_management%b
   --  system.task_info%s
   --  system.task_info%b
   --  system.task_primitives%s
   --  system.tasking%s
   --  system.task_primitives.operations%s
   --  system.tasking%b
   --  system.tasking.debug%s
   --  system.tasking.debug%b
   --  system.traces.tasking%s
   --  system.traces.tasking%b
   --  system.win32.ext%s
   --  system.task_primitives.operations%b
   --  system.os_primitives%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.delays%s
   --  ada.calendar.delays%b
   --  system.interrupt_management.operations%s
   --  system.interrupt_management.operations%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.random_numbers%s
   --  system.secondary_stack%s
   --  interfaces.c.strings%b
   --  interfaces.c%b
   --  ada.tags%b
   --  system.soft_links%b
   --  system.secondary_stack%b
   --  system.random_numbers%b
   --  system.address_image%b
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  ada.finalization.heap_management%s
   --  ada.finalization.heap_management%b
   --  system.os_lib%s
   --  system.os_lib%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.file_io%b
   --  system.soft_links.tasking%s
   --  system.soft_links.tasking%b
   --  system.tasking.entry_calls%s
   --  system.tasking.initialization%s
   --  system.tasking.initialization%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.utilities%s
   --  system.traceback%s
   --  ada.exceptions%b
   --  system.traceback%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  ada.real_time.delays%s
   --  ada.real_time.delays%b
   --  ada.real_time.timing_events%s
   --  ada.text_io%s
   --  ada.text_io%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.utilities%b
   --  system.tasking.rendezvous%s
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  system.tasking.rendezvous%b
   --  system.tasking.entry_calls%b
   --  system.tasking.stages%s
   --  system.tasking.stages%b
   --  ada.real_time.timing_events%b
   --  text_io%s
   --  monitorciudad%s
   --  monitorciudad%b
   --  ciudad%s
   --  monitorplanta%s
   --  monitorplanta%b
   --  actuadorescritorp%s
   --  actuadorescritorp%b
   --  sensorlectorp%s
   --  sensorlectorp%b
   --  tareaplanta%s
   --  tareaplanta%b
   --  ciudad%b
   --  main%b
   --  END ELABORATION ORDER


end ada_main;
