import "pe"
rule rule_cluster_0
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "HeapSize")) and not(pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapSize")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapSize")) and not(pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapSize")) and not(pe.imports("rtmpal.dll", "HeapSize"))) and (pe.imports("advapi32.dll", "RegCloseKey") or pe.imports("api-ms-win-core-registry-l1-1-0.dll", "RegCloseKey") or pe.imports("api-ms-win-core-localregistry-l1-1-0.dll", "RegCloseKey") or pe.imports("api-ms-win-downlevel-advapi32-l1-1-1.dll", "RegCloseKey") or pe.imports("api-ms-win-downlevel-advapi32-l1-1-0.dll", "RegCloseKey") or pe.imports("kernel32.dll", "RegCloseKey") or pe.imports("rtmpal.dll", "RegCloseKey") or pe.imports("kernelbase.dll", "RegCloseKey")) and (not(pe.imports("user32.dll", "IsWindowEnabled")) and not(pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "IsWindowEnabled"))))

}

rule rule_cluster_1
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "HeapSize") or pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapSize") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapSize") or pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapSize") or pe.imports("rtmpal.dll", "HeapSize")) and (pe.imports("kernel32.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject") or pe.imports("rtmpal.dll", "WaitForSingleObject") or pe.imports("kernelbase.dll", "WaitForSingleObject")) and (pe.imports("user32.dll", "GetProcessWindowStation")))

}

rule rule_cluster_2
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentProcess")) and not(pe.imports("kernelbase.dll", "GetCurrentProcess")) and not(pe.imports("rtmpal.dll", "GetCurrentProcess"))) and (not(pe.imports("kernel32.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA")) and not(pe.imports("rtmpal.dll", "LoadLibraryA"))) and (pe.imports("msvbvm60.dll", "_adj_fdiv_m16i")))

}

rule rule_cluster_4
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentProcess")) and not(pe.imports("kernelbase.dll", "GetCurrentProcess")) and not(pe.imports("rtmpal.dll", "GetCurrentProcess"))) and (pe.imports("kernel32.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA") or pe.imports("rtmpal.dll", "LoadLibraryA")) and (not(pe.imports("kernel32.dll", "SetProcessShutdownParameters")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "SetProcessShutdownParameters"))) and (not(pe.imports("user32.dll", "TranslateMessage")) and not(pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "TranslateMessage"))))

}

rule rule_cluster_5
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentProcess")) and not(pe.imports("kernelbase.dll", "GetCurrentProcess")) and not(pe.imports("rtmpal.dll", "GetCurrentProcess"))) and (not(pe.imports("kernel32.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA")) and not(pe.imports("rtmpal.dll", "LoadLibraryA"))) and (not(pe.imports("msvbvm60.dll", "_adj_fdiv_m16i"))) and (not(pe.imports("loadperf.dll", "UnloadPerfCounterTextStringsW"))) and (pe.imports("comdlg32.dll", "PrintDlgA")))

}

rule rule_cluster_5
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentProcess")) and not(pe.imports("kernelbase.dll", "GetCurrentProcess")) and not(pe.imports("rtmpal.dll", "GetCurrentProcess"))) and (not(pe.imports("kernel32.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA")) and not(pe.imports("rtmpal.dll", "LoadLibraryA"))) and (not(pe.imports("msvbvm60.dll", "_adj_fdiv_m16i"))) and (not(pe.imports("loadperf.dll", "UnloadPerfCounterTextStringsW"))) and (pe.imports("comdlg32.dll", "PrintDlgA"))) or 
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "HeapSize")) and not(pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapSize")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapSize")) and not(pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapSize")) and not(pe.imports("rtmpal.dll", "HeapSize"))) and (not(pe.imports("advapi32.dll", "RegCloseKey")) and not(pe.imports("api-ms-win-core-registry-l1-1-0.dll", "RegCloseKey")) and not(pe.imports("api-ms-win-core-localregistry-l1-1-0.dll", "RegCloseKey")) and not(pe.imports("api-ms-win-downlevel-advapi32-l1-1-1.dll", "RegCloseKey")) and not(pe.imports("api-ms-win-downlevel-advapi32-l1-1-0.dll", "RegCloseKey")) and not(pe.imports("kernel32.dll", "RegCloseKey")) and not(pe.imports("rtmpal.dll", "RegCloseKey")) and not(pe.imports("kernelbase.dll", "RegCloseKey"))) and (not(pe.imports("kernel32.dll", "HeapDestroy")) and not(pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapDestroy")) and not(pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapDestroy")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapDestroy")) and not(pe.imports("rtmpal.dll", "HeapDestroy"))) and (pe.imports("msvcrt.dll", "_except_handler3") or pe.imports("msvcrt40.dll", "_except_handler3")))

}

rule rule_cluster_6
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentProcess")) and not(pe.imports("kernelbase.dll", "GetCurrentProcess")) and not(pe.imports("rtmpal.dll", "GetCurrentProcess"))) and (not(pe.imports("kernel32.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA")) and not(pe.imports("rtmpal.dll", "LoadLibraryA"))) and (not(pe.imports("msvbvm60.dll", "_adj_fdiv_m16i"))) and (pe.imports("loadperf.dll", "UnloadPerfCounterTextStringsW")))

}

rule rule_cluster_7
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "HeapSize")) and not(pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapSize")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapSize")) and not(pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapSize")) and not(pe.imports("rtmpal.dll", "HeapSize"))) and (not(pe.imports("advapi32.dll", "RegCloseKey")) and not(pe.imports("api-ms-win-core-registry-l1-1-0.dll", "RegCloseKey")) and not(pe.imports("api-ms-win-core-localregistry-l1-1-0.dll", "RegCloseKey")) and not(pe.imports("api-ms-win-downlevel-advapi32-l1-1-1.dll", "RegCloseKey")) and not(pe.imports("api-ms-win-downlevel-advapi32-l1-1-0.dll", "RegCloseKey")) and not(pe.imports("kernel32.dll", "RegCloseKey")) and not(pe.imports("rtmpal.dll", "RegCloseKey")) and not(pe.imports("kernelbase.dll", "RegCloseKey"))) and (pe.imports("kernel32.dll", "HeapDestroy") or pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapDestroy") or pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapDestroy") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapDestroy") or pe.imports("rtmpal.dll", "HeapDestroy")))

}

rule rule_cluster_8
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "HeapSize") or pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapSize") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapSize") or pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapSize") or pe.imports("rtmpal.dll", "HeapSize")) and (pe.imports("kernel32.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject") or pe.imports("rtmpal.dll", "WaitForSingleObject") or pe.imports("kernelbase.dll", "WaitForSingleObject")) and (not(pe.imports("user32.dll", "GetProcessWindowStation"))) and (not(pe.imports("kernel32.dll", "IsDBCSLeadByte")) and not(pe.imports("api-ms-win-core-localization-l1-2-1.dll", "IsDBCSLeadByte")) and not(pe.imports("api-ms-win-core-localization-l1-2-0.dll", "IsDBCSLeadByte"))) and (not(pe.imports("kernel32.dll", "AreFileApisANSI")) and not(pe.imports("api-ms-win-core-file-l1-2-2.dll", "AreFileApisANSI")) and not(pe.imports("kernelbase.dll", "AreFileApisANSI"))) and (pe.imports("wsock32.dll", "ntohs") or pe.imports("ws2_32.dll", "ntohs") or pe.imports("ws2", "ntohs")))

}

rule rule_cluster_8
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "HeapSize") or pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapSize") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapSize") or pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapSize") or pe.imports("rtmpal.dll", "HeapSize")) and (pe.imports("kernel32.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject") or pe.imports("rtmpal.dll", "WaitForSingleObject") or pe.imports("kernelbase.dll", "WaitForSingleObject")) and (not(pe.imports("user32.dll", "GetProcessWindowStation"))) and (not(pe.imports("kernel32.dll", "IsDBCSLeadByte")) and not(pe.imports("api-ms-win-core-localization-l1-2-1.dll", "IsDBCSLeadByte")) and not(pe.imports("api-ms-win-core-localization-l1-2-0.dll", "IsDBCSLeadByte"))) and (not(pe.imports("kernel32.dll", "AreFileApisANSI")) and not(pe.imports("api-ms-win-core-file-l1-2-2.dll", "AreFileApisANSI")) and not(pe.imports("kernelbase.dll", "AreFileApisANSI"))) and (pe.imports("wsock32.dll", "ntohs") or pe.imports("ws2_32.dll", "ntohs") or pe.imports("ws2", "ntohs"))) or 
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "HeapSize") or pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapSize") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapSize") or pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapSize") or pe.imports("rtmpal.dll", "HeapSize")) and (pe.imports("kernel32.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject") or pe.imports("rtmpal.dll", "WaitForSingleObject") or pe.imports("kernelbase.dll", "WaitForSingleObject")) and (not(pe.imports("user32.dll", "GetProcessWindowStation"))) and (not(pe.imports("kernel32.dll", "IsDBCSLeadByte")) and not(pe.imports("api-ms-win-core-localization-l1-2-1.dll", "IsDBCSLeadByte")) and not(pe.imports("api-ms-win-core-localization-l1-2-0.dll", "IsDBCSLeadByte"))) and (pe.imports("kernel32.dll", "AreFileApisANSI") or pe.imports("api-ms-win-core-file-l1-2-2.dll", "AreFileApisANSI") or pe.imports("kernelbase.dll", "AreFileApisANSI")))

}

rule rule_cluster_9
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "HeapSize") or pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapSize") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapSize") or pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapSize") or pe.imports("rtmpal.dll", "HeapSize")) and (not(pe.imports("kernel32.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("rtmpal.dll", "WaitForSingleObject")) and not(pe.imports("kernelbase.dll", "WaitForSingleObject"))) and (not(pe.imports("user32.dll", "TranslateMessage")) and not(pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "TranslateMessage"))) and (pe.imports("pdh.dll", "PdhGetFormattedCounterArrayA")))

}

rule rule_cluster_10
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "HeapSize") or pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapSize") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapSize") or pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapSize") or pe.imports("rtmpal.dll", "HeapSize")) and (pe.imports("kernel32.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject") or pe.imports("rtmpal.dll", "WaitForSingleObject") or pe.imports("kernelbase.dll", "WaitForSingleObject")) and (not(pe.imports("user32.dll", "GetProcessWindowStation"))) and (pe.imports("kernel32.dll", "IsDBCSLeadByte") or pe.imports("api-ms-win-core-localization-l1-2-1.dll", "IsDBCSLeadByte") or pe.imports("api-ms-win-core-localization-l1-2-0.dll", "IsDBCSLeadByte")))

}

rule rule_cluster_11
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "HeapSize") or pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapSize") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapSize") or pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapSize") or pe.imports("rtmpal.dll", "HeapSize")) and (not(pe.imports("kernel32.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("rtmpal.dll", "WaitForSingleObject")) and not(pe.imports("kernelbase.dll", "WaitForSingleObject"))) and (not(pe.imports("user32.dll", "TranslateMessage")) and not(pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "TranslateMessage"))) and (not(pe.imports("pdh.dll", "PdhGetFormattedCounterArrayA"))) and (not(pe.imports("oleaut32.dll", "SysStringLen")) and not(pe.imports("rtmpal.dll", "SysStringLen"))))

}

rule rule_cluster_12
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "HeapSize") or pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapSize") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapSize") or pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapSize") or pe.imports("rtmpal.dll", "HeapSize")) and (not(pe.imports("kernel32.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("rtmpal.dll", "WaitForSingleObject")) and not(pe.imports("kernelbase.dll", "WaitForSingleObject"))) and (pe.imports("user32.dll", "TranslateMessage") or pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "TranslateMessage")) and (not(pe.imports("user32.dll", "ModifyMenuA"))))

}

rule rule_cluster_13
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "HeapSize")) and not(pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapSize")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapSize")) and not(pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapSize")) and not(pe.imports("rtmpal.dll", "HeapSize"))) and (pe.imports("advapi32.dll", "RegCloseKey") or pe.imports("api-ms-win-core-registry-l1-1-0.dll", "RegCloseKey") or pe.imports("api-ms-win-core-localregistry-l1-1-0.dll", "RegCloseKey") or pe.imports("api-ms-win-downlevel-advapi32-l1-1-1.dll", "RegCloseKey") or pe.imports("api-ms-win-downlevel-advapi32-l1-1-0.dll", "RegCloseKey") or pe.imports("kernel32.dll", "RegCloseKey") or pe.imports("rtmpal.dll", "RegCloseKey") or pe.imports("kernelbase.dll", "RegCloseKey")) and (pe.imports("user32.dll", "IsWindowEnabled") or pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "IsWindowEnabled")))

}

rule rule_cluster_14
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "HeapSize")) and not(pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapSize")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapSize")) and not(pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapSize")) and not(pe.imports("rtmpal.dll", "HeapSize"))) and (pe.imports("advapi32.dll", "RegCloseKey") or pe.imports("api-ms-win-core-registry-l1-1-0.dll", "RegCloseKey") or pe.imports("api-ms-win-core-localregistry-l1-1-0.dll", "RegCloseKey") or pe.imports("api-ms-win-downlevel-advapi32-l1-1-1.dll", "RegCloseKey") or pe.imports("api-ms-win-downlevel-advapi32-l1-1-0.dll", "RegCloseKey") or pe.imports("kernel32.dll", "RegCloseKey") or pe.imports("rtmpal.dll", "RegCloseKey") or pe.imports("kernelbase.dll", "RegCloseKey")) and (pe.imports("user32.dll", "IsWindowEnabled") or pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "IsWindowEnabled")))

}

rule rule_cluster_15
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentProcess")) and not(pe.imports("kernelbase.dll", "GetCurrentProcess")) and not(pe.imports("rtmpal.dll", "GetCurrentProcess"))) and (pe.imports("kernel32.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA") or pe.imports("rtmpal.dll", "LoadLibraryA")) and (not(pe.imports("kernel32.dll", "SetProcessShutdownParameters")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "SetProcessShutdownParameters"))) and (not(pe.imports("user32.dll", "TranslateMessage")) and not(pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "TranslateMessage"))))

}

rule rule_cluster_15
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentProcess")) and not(pe.imports("kernelbase.dll", "GetCurrentProcess")) and not(pe.imports("rtmpal.dll", "GetCurrentProcess"))) and (pe.imports("kernel32.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA") or pe.imports("rtmpal.dll", "LoadLibraryA")) and (not(pe.imports("kernel32.dll", "SetProcessShutdownParameters")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "SetProcessShutdownParameters"))) and (not(pe.imports("user32.dll", "TranslateMessage")) and not(pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "TranslateMessage")))) or 
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentProcess")) and not(pe.imports("kernelbase.dll", "GetCurrentProcess")) and not(pe.imports("rtmpal.dll", "GetCurrentProcess"))) and (pe.imports("kernel32.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA") or pe.imports("rtmpal.dll", "LoadLibraryA")) and (not(pe.imports("kernel32.dll", "SetProcessShutdownParameters")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "SetProcessShutdownParameters"))) and (pe.imports("user32.dll", "TranslateMessage") or pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "TranslateMessage")))

}
