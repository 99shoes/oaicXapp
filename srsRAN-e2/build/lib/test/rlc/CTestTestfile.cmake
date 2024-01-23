# CMake generated Testfile for 
# Source directory: /home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc
# Build directory: /home/labuser/OAIConstruct/oaic/srsRAN-e2/build/lib/test/rlc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(rlc_am_data_test "rlc_am_data_test")
set_tests_properties(rlc_am_data_test PROPERTIES  LABELS "lte;lib;rlc" _BACKTRACE_TRIPLES "/home/labuser/OAIConstruct/oaic/srsRAN-e2/CMakeLists.txt;639;add_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;25;add_lte_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;0;")
add_test(rlc_am_control_test "rlc_am_control_test")
set_tests_properties(rlc_am_control_test PROPERTIES  LABELS "lte;lib;rlc" _BACKTRACE_TRIPLES "/home/labuser/OAIConstruct/oaic/srsRAN-e2/CMakeLists.txt;639;add_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;29;add_lte_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;0;")
add_test(rlc_am_test "rlc_am_test")
set_tests_properties(rlc_am_test PROPERTIES  LABELS "lte;lib;rlc" _BACKTRACE_TRIPLES "/home/labuser/OAIConstruct/oaic/srsRAN-e2/CMakeLists.txt;639;add_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;33;add_lte_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;0;")
add_test(rlc_am_nr_pdu_test "rlc_am_nr_pdu_test")
set_tests_properties(rlc_am_nr_pdu_test PROPERTIES  LABELS "nr;lib;rlc" _BACKTRACE_TRIPLES "/home/labuser/OAIConstruct/oaic/srsRAN-e2/CMakeLists.txt;648;add_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;37;add_nr_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;0;")
add_test(rlc_am_stress_test "rlc_stress_test" "--mode=AM" "--loglevel" "1" "--sdu_gen_delay" "250")
set_tests_properties(rlc_am_stress_test PROPERTIES  LABELS "lte;lib;rlc" _BACKTRACE_TRIPLES "/home/labuser/OAIConstruct/oaic/srsRAN-e2/CMakeLists.txt;639;add_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;41;add_lte_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;0;")
add_test(rlc_um_stress_test "rlc_stress_test" "--mode=UM" "--loglevel" "1")
set_tests_properties(rlc_um_stress_test PROPERTIES  LABELS "lte;lib;rlc" _BACKTRACE_TRIPLES "/home/labuser/OAIConstruct/oaic/srsRAN-e2/CMakeLists.txt;639;add_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;42;add_lte_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;0;")
add_test(rlc_tm_stress_test "rlc_stress_test" "--mode=TM" "--loglevel" "1" "--random_opp=false")
set_tests_properties(rlc_tm_stress_test PROPERTIES  LABELS "lte;lib;rlc" _BACKTRACE_TRIPLES "/home/labuser/OAIConstruct/oaic/srsRAN-e2/CMakeLists.txt;639;add_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;43;add_lte_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;0;")
add_test(rlc_um6_nr_stress_test "rlc_stress_test" "--rat" "NR" "--mode=UM6" "--loglevel" "1")
set_tests_properties(rlc_um6_nr_stress_test PROPERTIES  LABELS "nr;lib;rlc" _BACKTRACE_TRIPLES "/home/labuser/OAIConstruct/oaic/srsRAN-e2/CMakeLists.txt;648;add_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;45;add_nr_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;0;")
add_test(rlc_um12_nr_stress_test "rlc_stress_test" "--rat" "NR" "--mode=UM12" "--loglevel" "1")
set_tests_properties(rlc_um12_nr_stress_test PROPERTIES  LABELS "nr;lib;rlc" _BACKTRACE_TRIPLES "/home/labuser/OAIConstruct/oaic/srsRAN-e2/CMakeLists.txt;648;add_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;46;add_nr_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;0;")
add_test(rlc_um_data_test "rlc_um_data_test")
set_tests_properties(rlc_um_data_test PROPERTIES  _BACKTRACE_TRIPLES "/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;50;add_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;0;")
add_test(rlc_um_test "rlc_um_test")
set_tests_properties(rlc_um_test PROPERTIES  _BACKTRACE_TRIPLES "/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;54;add_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;0;")
add_test(rlc_common_test "rlc_common_test")
set_tests_properties(rlc_common_test PROPERTIES  _BACKTRACE_TRIPLES "/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;58;add_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;0;")
add_test(rlc_um_nr_pdu_test "rlc_um_nr_pdu_test")
set_tests_properties(rlc_um_nr_pdu_test PROPERTIES  LABELS "nr;lib;rlc" _BACKTRACE_TRIPLES "/home/labuser/OAIConstruct/oaic/srsRAN-e2/CMakeLists.txt;648;add_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;62;add_nr_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;0;")
add_test(rlc_um_nr_test "rlc_um_nr_test")
set_tests_properties(rlc_um_nr_test PROPERTIES  LABELS "nr;lib;rlc" _BACKTRACE_TRIPLES "/home/labuser/OAIConstruct/oaic/srsRAN-e2/CMakeLists.txt;648;add_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;66;add_nr_test;/home/labuser/OAIConstruct/oaic/srsRAN-e2/lib/test/rlc/CMakeLists.txt;0;")
