import "pe"
rule rule_cluster_0
{


	condition:
		((pe.imports("kernel32.dll", "FreeEnvironmentStringsW") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "FreeEnvironmentStringsW") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "FreeEnvironmentStringsW")) and (not(pe.imports("kernel32.dll", "InterlockedDecrement")) and not(pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedDecrement"))) and (pe.imports("kernel32.dll", "GetTickCount") or pe.imports("api-ms-win-core-sysinfo-l1-2-1.dll", "GetTickCount") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetTickCount") or pe.imports("api-ms-win-core-sysinfo-l1-1-0.dll", "GetTickCount") or pe.imports("api-ms-win-core-sysinfo-l1-2-0.dll", "GetTickCount") or pe.imports("kernelbase.dll", "GetTickCount") or pe.imports("rtmpal.dll", "GetTickCount")))

}

rule rule_cluster_1
{


	condition:
		((pe.imports("kernel32.dll", "FreeEnvironmentStringsW") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "FreeEnvironmentStringsW") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "FreeEnvironmentStringsW")) and (not(pe.imports("kernel32.dll", "InterlockedDecrement")) and not(pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedDecrement"))) and (not(pe.imports("kernel32.dll", "GetTickCount")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-1.dll", "GetTickCount")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetTickCount")) and not(pe.imports("api-ms-win-core-sysinfo-l1-1-0.dll", "GetTickCount")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-0.dll", "GetTickCount")) and not(pe.imports("kernelbase.dll", "GetTickCount")) and not(pe.imports("rtmpal.dll", "GetTickCount"))) and (not(pe.imports("kernel32.dll", "RtlLookupFunctionEntry")) and not(pe.imports("api-ms-win-core-rtlsupport-l1-2-0.dll", "RtlLookupFunctionEntry")) and not(pe.imports("ntdll.dll", "RtlLookupFunctionEntry")) and not(pe.imports("api-ms-win-core-rtlsupport-l1-1-0.dll", "RtlLookupFunctionEntry"))) and (pe.imports("kernel32.dll", "GetConsoleCP") or pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetConsoleCP")))

}

rule rule_cluster_2
{


	condition:
		((not(pe.imports("kernel32.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "FreeEnvironmentStringsW"))) and (not(pe.imports("kernel32.dll", "Sleep")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "Sleep")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "Sleep")) and not(pe.imports("api-ms-win-core-misc-l1-1-0.dll", "Sleep")) and not(pe.imports("kernelbase.dll", "Sleep"))) and (not(pe.imports("kernel32.dll", "GetProcAddress")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetProcAddress")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetProcAddress")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetProcAddress")) and not(pe.imports("kernel32", "GetProcAddress")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetProcAddress")) and not(pe.imports("rtmpal.dll", "GetProcAddress")) and not(pe.imports("kernelbase.dll", "GetProcAddress"))) and (not(pe.imports("kernel32.dll", "GetModuleHandleA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetModuleHandleA")) and not(pe.imports("kernel32", "GetModuleHandleA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetModuleHandleA")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetModuleHandleA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetModuleHandleA"))) and (pe.imports("comdlg32.dll", "PrintDlgA")))

}

rule rule_cluster_2
{


	condition:
		((not(pe.imports("kernel32.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "FreeEnvironmentStringsW"))) and (not(pe.imports("kernel32.dll", "Sleep")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "Sleep")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "Sleep")) and not(pe.imports("api-ms-win-core-misc-l1-1-0.dll", "Sleep")) and not(pe.imports("kernelbase.dll", "Sleep"))) and (not(pe.imports("kernel32.dll", "GetProcAddress")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetProcAddress")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetProcAddress")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetProcAddress")) and not(pe.imports("kernel32", "GetProcAddress")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetProcAddress")) and not(pe.imports("rtmpal.dll", "GetProcAddress")) and not(pe.imports("kernelbase.dll", "GetProcAddress"))) and (not(pe.imports("kernel32.dll", "GetModuleHandleA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetModuleHandleA")) and not(pe.imports("kernel32", "GetModuleHandleA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetModuleHandleA")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetModuleHandleA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetModuleHandleA"))) and (pe.imports("comdlg32.dll", "PrintDlgA"))) or 
		((not(pe.imports("kernel32.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "FreeEnvironmentStringsW"))) and (not(pe.imports("kernel32.dll", "Sleep")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "Sleep")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "Sleep")) and not(pe.imports("api-ms-win-core-misc-l1-1-0.dll", "Sleep")) and not(pe.imports("kernelbase.dll", "Sleep"))) and (not(pe.imports("kernel32.dll", "GetProcAddress")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetProcAddress")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetProcAddress")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetProcAddress")) and not(pe.imports("kernel32", "GetProcAddress")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetProcAddress")) and not(pe.imports("rtmpal.dll", "GetProcAddress")) and not(pe.imports("kernelbase.dll", "GetProcAddress"))) and (pe.imports("kernel32.dll", "GetModuleHandleA") or pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetModuleHandleA") or pe.imports("kernel32", "GetModuleHandleA") or pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetModuleHandleA") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetModuleHandleA") or pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetModuleHandleA")) and (pe.imports("ole32.dll", "StringFromIID") or pe.imports("api-ms-win-core-com-l1-1-1.dll", "StringFromIID") or pe.imports("api-ms-win-core-com-l1-1-0.dll", "StringFromIID")))

}

rule rule_cluster_3
{


	condition:
		((not(pe.imports("kernel32.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "FreeEnvironmentStringsW"))) and (not(pe.imports("kernel32.dll", "Sleep")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "Sleep")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "Sleep")) and not(pe.imports("api-ms-win-core-misc-l1-1-0.dll", "Sleep")) and not(pe.imports("kernelbase.dll", "Sleep"))) and (not(pe.imports("kernel32.dll", "GetProcAddress")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetProcAddress")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetProcAddress")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetProcAddress")) and not(pe.imports("kernel32", "GetProcAddress")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetProcAddress")) and not(pe.imports("rtmpal.dll", "GetProcAddress")) and not(pe.imports("kernelbase.dll", "GetProcAddress"))) and (pe.imports("kernel32.dll", "GetModuleHandleA") or pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetModuleHandleA") or pe.imports("kernel32", "GetModuleHandleA") or pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetModuleHandleA") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetModuleHandleA") or pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetModuleHandleA")) and (not(pe.imports("ole32.dll", "StringFromIID")) and not(pe.imports("api-ms-win-core-com-l1-1-1.dll", "StringFromIID")) and not(pe.imports("api-ms-win-core-com-l1-1-0.dll", "StringFromIID"))))

}

rule rule_cluster_4
{


	condition:
		((pe.imports("kernel32.dll", "FreeEnvironmentStringsW") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "FreeEnvironmentStringsW") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "FreeEnvironmentStringsW")) and (not(pe.imports("kernel32.dll", "InterlockedDecrement")) and not(pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedDecrement"))) and (not(pe.imports("kernel32.dll", "GetTickCount")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-1.dll", "GetTickCount")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetTickCount")) and not(pe.imports("api-ms-win-core-sysinfo-l1-1-0.dll", "GetTickCount")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-0.dll", "GetTickCount")) and not(pe.imports("kernelbase.dll", "GetTickCount")) and not(pe.imports("rtmpal.dll", "GetTickCount"))) and (pe.imports("kernel32.dll", "RtlLookupFunctionEntry") or pe.imports("api-ms-win-core-rtlsupport-l1-2-0.dll", "RtlLookupFunctionEntry") or pe.imports("ntdll.dll", "RtlLookupFunctionEntry") or pe.imports("api-ms-win-core-rtlsupport-l1-1-0.dll", "RtlLookupFunctionEntry")) and (pe.imports("kernel32.dll", "TlsGetValue") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "TlsGetValue") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "TlsGetValue") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "TlsGetValue") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "TlsGetValue") or pe.imports("rtmpal.dll", "TlsGetValue")))

}

rule rule_cluster_5
{


	condition:
		((pe.imports("kernel32.dll", "FreeEnvironmentStringsW") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "FreeEnvironmentStringsW") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "FreeEnvironmentStringsW")) and (pe.imports("kernel32.dll", "InterlockedDecrement") or pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedDecrement")) and (not(pe.imports("gdi32.dll", "PtVisible"))) and (not(pe.imports("kernel32.dll", "GetNumberOfConsoleInputEvents")) and not(pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetNumberOfConsoleInputEvents")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetNumberOfConsoleInputEvents"))))

}

rule rule_cluster_6
{


	condition:
		((pe.imports("kernel32.dll", "FreeEnvironmentStringsW") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "FreeEnvironmentStringsW") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "FreeEnvironmentStringsW")) and (pe.imports("kernel32.dll", "InterlockedDecrement") or pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedDecrement")) and (not(pe.imports("gdi32.dll", "PtVisible"))) and (pe.imports("kernel32.dll", "GetNumberOfConsoleInputEvents") or pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetNumberOfConsoleInputEvents") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetNumberOfConsoleInputEvents")))

}

rule rule_cluster_7
{


	condition:
		((not(pe.imports("kernel32.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "FreeEnvironmentStringsW"))) and (pe.imports("kernel32.dll", "Sleep") or pe.imports("api-ms-win-core-synch-l1-2-0.dll", "Sleep") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "Sleep") or pe.imports("api-ms-win-core-misc-l1-1-0.dll", "Sleep") or pe.imports("kernelbase.dll", "Sleep")) and (pe.imports("user32.dll", "EndDialog")) and (not(pe.imports("user32.dll", "SystemParametersInfoW")) and not(pe.imports("api-ms-win-ntuser-sysparams-l1-1-0.dll", "SystemParametersInfoW"))) and (not(pe.imports("ole32.dll", "IIDFromString")) and not(pe.imports("api-ms-win-core-com-l1-1-1.dll", "IIDFromString")) and not(pe.imports("api-ms-win-core-com-l1-1-0.dll", "IIDFromString"))))

}

rule rule_cluster_8
{


	condition:
		((not(pe.imports("kernel32.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "FreeEnvironmentStringsW"))) and (pe.imports("kernel32.dll", "Sleep") or pe.imports("api-ms-win-core-synch-l1-2-0.dll", "Sleep") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "Sleep") or pe.imports("api-ms-win-core-misc-l1-1-0.dll", "Sleep") or pe.imports("kernelbase.dll", "Sleep")) and (pe.imports("user32.dll", "EndDialog")) and (not(pe.imports("user32.dll", "SystemParametersInfoW")) and not(pe.imports("api-ms-win-ntuser-sysparams-l1-1-0.dll", "SystemParametersInfoW"))) and (pe.imports("ole32.dll", "IIDFromString") or pe.imports("api-ms-win-core-com-l1-1-1.dll", "IIDFromString") or pe.imports("api-ms-win-core-com-l1-1-0.dll", "IIDFromString")))

}

rule rule_cluster_9
{


	condition:
		((not(pe.imports("kernel32.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "FreeEnvironmentStringsW"))) and (not(pe.imports("kernel32.dll", "Sleep")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "Sleep")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "Sleep")) and not(pe.imports("api-ms-win-core-misc-l1-1-0.dll", "Sleep")) and not(pe.imports("kernelbase.dll", "Sleep"))) and (pe.imports("kernel32.dll", "GetProcAddress") or pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetProcAddress") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetProcAddress") or pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetProcAddress") or pe.imports("kernel32", "GetProcAddress") or pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetProcAddress") or pe.imports("rtmpal.dll", "GetProcAddress") or pe.imports("kernelbase.dll", "GetProcAddress")) and (not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "LoadResource")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "LoadResource")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "LoadResource")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "LoadResource")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "LoadResource"))) and (not(pe.imports("kernel32.dll", "lstrlenA")) and not(pe.imports("api-ms-win-core-string-obsolete-l1-1-0.dll", "lstrlenA")) and not(pe.imports("api-ms-win-downlevel-kernel32-l2-1-0.dll", "lstrlenA")) and not(pe.imports("api-ms-win-core-misc-l1-1-0.dll", "lstrlenA")) and not(pe.imports("kernelbase.dll", "lstrlenA"))) and (pe.imports("kernel32.dll", "HeapFree") or pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapFree") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapFree") or pe.imports("kernel32", "HeapFree") or pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapFree") or pe.imports("rtmpal.dll", "HeapFree") or pe.imports("kernelbase.dll", "HeapFree")))

}

rule rule_cluster_9
{


	condition:
		((not(pe.imports("kernel32.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "FreeEnvironmentStringsW"))) and (not(pe.imports("kernel32.dll", "Sleep")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "Sleep")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "Sleep")) and not(pe.imports("api-ms-win-core-misc-l1-1-0.dll", "Sleep")) and not(pe.imports("kernelbase.dll", "Sleep"))) and (pe.imports("kernel32.dll", "GetProcAddress") or pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetProcAddress") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetProcAddress") or pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetProcAddress") or pe.imports("kernel32", "GetProcAddress") or pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetProcAddress") or pe.imports("rtmpal.dll", "GetProcAddress") or pe.imports("kernelbase.dll", "GetProcAddress")) and (not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "LoadResource")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "LoadResource")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "LoadResource")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "LoadResource")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "LoadResource"))) and (not(pe.imports("kernel32.dll", "lstrlenA")) and not(pe.imports("api-ms-win-core-string-obsolete-l1-1-0.dll", "lstrlenA")) and not(pe.imports("api-ms-win-downlevel-kernel32-l2-1-0.dll", "lstrlenA")) and not(pe.imports("api-ms-win-core-misc-l1-1-0.dll", "lstrlenA")) and not(pe.imports("kernelbase.dll", "lstrlenA"))) and (pe.imports("kernel32.dll", "HeapFree") or pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapFree") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapFree") or pe.imports("kernel32", "HeapFree") or pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapFree") or pe.imports("rtmpal.dll", "HeapFree") or pe.imports("kernelbase.dll", "HeapFree"))) or 
		((not(pe.imports("kernel32.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "FreeEnvironmentStringsW"))) and (not(pe.imports("kernel32.dll", "Sleep")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "Sleep")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "Sleep")) and not(pe.imports("api-ms-win-core-misc-l1-1-0.dll", "Sleep")) and not(pe.imports("kernelbase.dll", "Sleep"))) and (pe.imports("kernel32.dll", "GetProcAddress") or pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetProcAddress") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetProcAddress") or pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetProcAddress") or pe.imports("kernel32", "GetProcAddress") or pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetProcAddress") or pe.imports("rtmpal.dll", "GetProcAddress") or pe.imports("kernelbase.dll", "GetProcAddress")) and (not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "LoadResource")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "LoadResource")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "LoadResource")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "LoadResource")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "LoadResource"))) and (pe.imports("kernel32.dll", "lstrlenA") or pe.imports("api-ms-win-core-string-obsolete-l1-1-0.dll", "lstrlenA") or pe.imports("api-ms-win-downlevel-kernel32-l2-1-0.dll", "lstrlenA") or pe.imports("api-ms-win-core-misc-l1-1-0.dll", "lstrlenA") or pe.imports("kernelbase.dll", "lstrlenA")))

}

rule rule_cluster_10
{


	condition:
		((not(pe.imports("kernel32.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "FreeEnvironmentStringsW"))) and (not(pe.imports("kernel32.dll", "Sleep")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "Sleep")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "Sleep")) and not(pe.imports("api-ms-win-core-misc-l1-1-0.dll", "Sleep")) and not(pe.imports("kernelbase.dll", "Sleep"))) and (pe.imports("kernel32.dll", "GetProcAddress") or pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetProcAddress") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetProcAddress") or pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetProcAddress") or pe.imports("kernel32", "GetProcAddress") or pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetProcAddress") or pe.imports("rtmpal.dll", "GetProcAddress") or pe.imports("kernelbase.dll", "GetProcAddress")) and (pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")))

}

rule rule_cluster_11
{


	condition:
		((not(pe.imports("kernel32.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "FreeEnvironmentStringsW")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "FreeEnvironmentStringsW"))) and (not(pe.imports("kernel32.dll", "Sleep")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "Sleep")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "Sleep")) and not(pe.imports("api-ms-win-core-misc-l1-1-0.dll", "Sleep")) and not(pe.imports("kernelbase.dll", "Sleep"))) and (pe.imports("kernel32.dll", "GetProcAddress") or pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetProcAddress") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetProcAddress") or pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetProcAddress") or pe.imports("kernel32", "GetProcAddress") or pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetProcAddress") or pe.imports("rtmpal.dll", "GetProcAddress") or pe.imports("kernelbase.dll", "GetProcAddress")) and (not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "LoadResource")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "LoadResource")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "LoadResource")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "LoadResource")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "LoadResource"))) and (not(pe.imports("kernel32.dll", "lstrlenA")) and not(pe.imports("api-ms-win-core-string-obsolete-l1-1-0.dll", "lstrlenA")) and not(pe.imports("api-ms-win-downlevel-kernel32-l2-1-0.dll", "lstrlenA")) and not(pe.imports("api-ms-win-core-misc-l1-1-0.dll", "lstrlenA")) and not(pe.imports("kernelbase.dll", "lstrlenA"))) and (not(pe.imports("kernel32.dll", "HeapFree")) and not(pe.imports("api-ms-win-core-heap-l1-2-0.dll", "HeapFree")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "HeapFree")) and not(pe.imports("kernel32", "HeapFree")) and not(pe.imports("api-ms-win-core-heap-l1-1-0.dll", "HeapFree")) and not(pe.imports("rtmpal.dll", "HeapFree")) and not(pe.imports("kernelbase.dll", "HeapFree"))))

}
