import "pe"
rule rule_cluster_0
{


	condition:
		((not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (not(pe.imports("user32.dll", "IsWindowVisible")) and not(pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "IsWindowVisible"))) and (not(pe.imports("msvcrt.dll", "exit")) and not(pe.imports("api-ms-win-core-crt-l2-1-0.dll", "exit")) and not(pe.imports("msvcr120_clr0400.dll", "exit")) and not(pe.imports("crtdll.dll", "exit")) and not(pe.imports("api-ms-win-crt-runtime-l1-1-0.dll", "exit")) and not(pe.imports("msvcr100.dll", "exit")) and not(pe.imports("msvcr120.dll", "exit")) and not(pe.imports("msvcr90.dll", "exit"))) and (not(pe.imports("msvbvm60.dll", "_adj_fprem1"))) and (not(pe.imports("kernel32.dll", "GetCurrentThread")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentThread")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentThread")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentThread")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentThread"))) and (pe.imports("gdi32.dll", "EndPage")))

}

rule rule_cluster_0
{


	condition:
		((not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (not(pe.imports("user32.dll", "IsWindowVisible")) and not(pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "IsWindowVisible"))) and (not(pe.imports("msvcrt.dll", "exit")) and not(pe.imports("api-ms-win-core-crt-l2-1-0.dll", "exit")) and not(pe.imports("msvcr120_clr0400.dll", "exit")) and not(pe.imports("crtdll.dll", "exit")) and not(pe.imports("api-ms-win-crt-runtime-l1-1-0.dll", "exit")) and not(pe.imports("msvcr100.dll", "exit")) and not(pe.imports("msvcr120.dll", "exit")) and not(pe.imports("msvcr90.dll", "exit"))) and (not(pe.imports("msvbvm60.dll", "_adj_fprem1"))) and (not(pe.imports("kernel32.dll", "GetCurrentThread")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentThread")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentThread")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentThread")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentThread"))) and (pe.imports("gdi32.dll", "EndPage"))) or 
		((not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (not(pe.imports("user32.dll", "IsWindowVisible")) and not(pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "IsWindowVisible"))) and (not(pe.imports("msvcrt.dll", "exit")) and not(pe.imports("api-ms-win-core-crt-l2-1-0.dll", "exit")) and not(pe.imports("msvcr120_clr0400.dll", "exit")) and not(pe.imports("crtdll.dll", "exit")) and not(pe.imports("api-ms-win-crt-runtime-l1-1-0.dll", "exit")) and not(pe.imports("msvcr100.dll", "exit")) and not(pe.imports("msvcr120.dll", "exit")) and not(pe.imports("msvcr90.dll", "exit"))) and (not(pe.imports("msvbvm60.dll", "_adj_fprem1"))) and (pe.imports("kernel32.dll", "GetCurrentThread") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentThread") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentThread") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentThread") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentThread")) and (not(pe.imports("kernel32.dll", "InterlockedDecrement")) and not(pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedDecrement"))))

}

rule rule_cluster_1
{


	condition:
		((not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (not(pe.imports("user32.dll", "IsWindowVisible")) and not(pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "IsWindowVisible"))) and (not(pe.imports("msvcrt.dll", "exit")) and not(pe.imports("api-ms-win-core-crt-l2-1-0.dll", "exit")) and not(pe.imports("msvcr120_clr0400.dll", "exit")) and not(pe.imports("crtdll.dll", "exit")) and not(pe.imports("api-ms-win-crt-runtime-l1-1-0.dll", "exit")) and not(pe.imports("msvcr100.dll", "exit")) and not(pe.imports("msvcr120.dll", "exit")) and not(pe.imports("msvcr90.dll", "exit"))) and (pe.imports("msvbvm60.dll", "_adj_fprem1")))

}

rule rule_cluster_2
{


	condition:
		((not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (pe.imports("user32.dll", "IsWindowVisible") or pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "IsWindowVisible")) and (not(pe.imports("gdi32.dll", "CreateDCA"))) and (not(pe.imports("kernel32.dll", "GetModuleHandleW")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetModuleHandleW")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetModuleHandleW")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetModuleHandleW")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetModuleHandleW")) and not(pe.imports("rtmpal.dll", "GetModuleHandleW")) and not(pe.imports("kernelbase.dll", "GetModuleHandleW"))))

}

rule rule_cluster_3
{


	condition:
		((not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (not(pe.imports("user32.dll", "IsWindowVisible")) and not(pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "IsWindowVisible"))) and (pe.imports("msvcrt.dll", "exit") or pe.imports("api-ms-win-core-crt-l2-1-0.dll", "exit") or pe.imports("msvcr120_clr0400.dll", "exit") or pe.imports("crtdll.dll", "exit") or pe.imports("api-ms-win-crt-runtime-l1-1-0.dll", "exit") or pe.imports("msvcr100.dll", "exit") or pe.imports("msvcr120.dll", "exit") or pe.imports("msvcr90.dll", "exit")) and (pe.imports("wsock32.dll", "getsockname") or pe.imports("ws2_32.dll", "getsockname")))

}

rule rule_cluster_3
{


	condition:
		((not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (not(pe.imports("user32.dll", "IsWindowVisible")) and not(pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "IsWindowVisible"))) and (pe.imports("msvcrt.dll", "exit") or pe.imports("api-ms-win-core-crt-l2-1-0.dll", "exit") or pe.imports("msvcr120_clr0400.dll", "exit") or pe.imports("crtdll.dll", "exit") or pe.imports("api-ms-win-crt-runtime-l1-1-0.dll", "exit") or pe.imports("msvcr100.dll", "exit") or pe.imports("msvcr120.dll", "exit") or pe.imports("msvcr90.dll", "exit")) and (pe.imports("wsock32.dll", "getsockname") or pe.imports("ws2_32.dll", "getsockname"))) or 
		((not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (pe.imports("user32.dll", "IsWindowVisible") or pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "IsWindowVisible")) and (pe.imports("gdi32.dll", "CreateDCA")))

}

rule rule_cluster_4
{


	condition:
		((not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (not(pe.imports("user32.dll", "IsWindowVisible")) and not(pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "IsWindowVisible"))) and (pe.imports("msvcrt.dll", "exit") or pe.imports("api-ms-win-core-crt-l2-1-0.dll", "exit") or pe.imports("msvcr120_clr0400.dll", "exit") or pe.imports("crtdll.dll", "exit") or pe.imports("api-ms-win-crt-runtime-l1-1-0.dll", "exit") or pe.imports("msvcr100.dll", "exit") or pe.imports("msvcr120.dll", "exit") or pe.imports("msvcr90.dll", "exit")) and (not(pe.imports("wsock32.dll", "getsockname")) and not(pe.imports("ws2_32.dll", "getsockname"))))

}

rule rule_cluster_6
{


	condition:
		((pe.imports("kernel32.dll", "QueryPerformanceCounter") or pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter") or pe.imports("kernelbase.dll", "QueryPerformanceCounter") or pe.imports("rtmpal.dll", "QueryPerformanceCounter")) and (pe.imports("kernel32.dll", "GetOEMCP") or pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetOEMCP") or pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetOEMCP")) and (pe.imports("kernel32.dll", "FreeLibrary") or pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "FreeLibrary") or pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "FreeLibrary") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FreeLibrary") or pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "FreeLibrary") or pe.imports("rtmpal.dll", "FreeLibrary")) and (not(pe.imports("kernel32.dll", "SetConsoleCtrlHandler")) and not(pe.imports("api-ms-win-core-console-l1-1-0.dll", "SetConsoleCtrlHandler")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "SetConsoleCtrlHandler"))) and (pe.imports("kernel32.dll", "FindFirstFileExW") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindFirstFileExW") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindFirstFileExW") or pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindFirstFileExW")) and (not(pe.imports("ole32.dll", "OleUninitialize"))))

}

rule rule_cluster_7
{


	condition:
		((pe.imports("kernel32.dll", "QueryPerformanceCounter") or pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter") or pe.imports("kernelbase.dll", "QueryPerformanceCounter") or pe.imports("rtmpal.dll", "QueryPerformanceCounter")) and (pe.imports("kernel32.dll", "GetOEMCP") or pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetOEMCP") or pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetOEMCP")) and (not(pe.imports("kernel32.dll", "FreeLibrary")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "FreeLibrary")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "FreeLibrary")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FreeLibrary")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "FreeLibrary")) and not(pe.imports("rtmpal.dll", "FreeLibrary"))) and (pe.imports("kernel32.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetLocaleInfoW")))

}

rule rule_cluster_8
{


	condition:
		((not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (not(pe.imports("user32.dll", "IsWindowVisible")) and not(pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "IsWindowVisible"))) and (not(pe.imports("msvcrt.dll", "exit")) and not(pe.imports("api-ms-win-core-crt-l2-1-0.dll", "exit")) and not(pe.imports("msvcr120_clr0400.dll", "exit")) and not(pe.imports("crtdll.dll", "exit")) and not(pe.imports("api-ms-win-crt-runtime-l1-1-0.dll", "exit")) and not(pe.imports("msvcr100.dll", "exit")) and not(pe.imports("msvcr120.dll", "exit")) and not(pe.imports("msvcr90.dll", "exit"))) and (not(pe.imports("msvbvm60.dll", "_adj_fprem1"))) and (pe.imports("kernel32.dll", "GetCurrentThread") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentThread") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentThread") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentThread") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentThread")) and (pe.imports("kernel32.dll", "InterlockedDecrement") or pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedDecrement")))

}

rule rule_cluster_8
{


	condition:
		((not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (not(pe.imports("user32.dll", "IsWindowVisible")) and not(pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "IsWindowVisible"))) and (not(pe.imports("msvcrt.dll", "exit")) and not(pe.imports("api-ms-win-core-crt-l2-1-0.dll", "exit")) and not(pe.imports("msvcr120_clr0400.dll", "exit")) and not(pe.imports("crtdll.dll", "exit")) and not(pe.imports("api-ms-win-crt-runtime-l1-1-0.dll", "exit")) and not(pe.imports("msvcr100.dll", "exit")) and not(pe.imports("msvcr120.dll", "exit")) and not(pe.imports("msvcr90.dll", "exit"))) and (not(pe.imports("msvbvm60.dll", "_adj_fprem1"))) and (pe.imports("kernel32.dll", "GetCurrentThread") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentThread") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentThread") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentThread") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentThread")) and (pe.imports("kernel32.dll", "InterlockedDecrement") or pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedDecrement"))) or 
		((pe.imports("kernel32.dll", "QueryPerformanceCounter") or pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter") or pe.imports("kernelbase.dll", "QueryPerformanceCounter") or pe.imports("rtmpal.dll", "QueryPerformanceCounter")) and (pe.imports("kernel32.dll", "GetOEMCP") or pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetOEMCP") or pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetOEMCP")) and (not(pe.imports("kernel32.dll", "FreeLibrary")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "FreeLibrary")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "FreeLibrary")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FreeLibrary")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "FreeLibrary")) and not(pe.imports("rtmpal.dll", "FreeLibrary"))) and (not(pe.imports("kernel32.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetLocaleInfoW"))) and (not(pe.imports("kernel32.dll", "SetEndOfFile")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "SetEndOfFile")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "SetEndOfFile")) and not(pe.imports("api-ms-win-core-file-l1-2-0.dll", "SetEndOfFile")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "SetEndOfFile"))))

}

rule rule_cluster_9
{


	condition:
		((pe.imports("kernel32.dll", "QueryPerformanceCounter") or pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter") or pe.imports("kernelbase.dll", "QueryPerformanceCounter") or pe.imports("rtmpal.dll", "QueryPerformanceCounter")) and (pe.imports("kernel32.dll", "GetOEMCP") or pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetOEMCP") or pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetOEMCP")) and (pe.imports("kernel32.dll", "FreeLibrary") or pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "FreeLibrary") or pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "FreeLibrary") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FreeLibrary") or pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "FreeLibrary") or pe.imports("rtmpal.dll", "FreeLibrary")) and (pe.imports("kernel32.dll", "SetConsoleCtrlHandler") or pe.imports("api-ms-win-core-console-l1-1-0.dll", "SetConsoleCtrlHandler") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "SetConsoleCtrlHandler")) and (not(pe.imports("kernel32.dll", "InterlockedPushEntrySList")) and not(pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedPushEntrySList")) and not(pe.imports("api-ms-win-core-interlocked-l1-1-0.dll", "InterlockedPushEntrySList")) and not(pe.imports("rtmpal.dll", "InterlockedPushEntrySList")) and not(pe.imports("ntoskrnl.exe", "InterlockedPushEntrySList"))))

}

rule rule_cluster_10
{


	condition:
		((not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (pe.imports("user32.dll", "IsWindowVisible") or pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "IsWindowVisible")) and (not(pe.imports("gdi32.dll", "CreateDCA"))) and (not(pe.imports("kernel32.dll", "GetModuleHandleW")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetModuleHandleW")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetModuleHandleW")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetModuleHandleW")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetModuleHandleW")) and not(pe.imports("rtmpal.dll", "GetModuleHandleW")) and not(pe.imports("kernelbase.dll", "GetModuleHandleW"))))

}

rule rule_cluster_10
{


	condition:
		((not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (pe.imports("user32.dll", "IsWindowVisible") or pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "IsWindowVisible")) and (not(pe.imports("gdi32.dll", "CreateDCA"))) and (not(pe.imports("kernel32.dll", "GetModuleHandleW")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetModuleHandleW")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetModuleHandleW")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetModuleHandleW")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetModuleHandleW")) and not(pe.imports("rtmpal.dll", "GetModuleHandleW")) and not(pe.imports("kernelbase.dll", "GetModuleHandleW")))) or 
		((not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (pe.imports("user32.dll", "IsWindowVisible") or pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "IsWindowVisible")) and (not(pe.imports("gdi32.dll", "CreateDCA"))) and (pe.imports("kernel32.dll", "GetModuleHandleW") or pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetModuleHandleW") or pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetModuleHandleW") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetModuleHandleW") or pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetModuleHandleW") or pe.imports("rtmpal.dll", "GetModuleHandleW") or pe.imports("kernelbase.dll", "GetModuleHandleW")))

}
