import "pe"

rule rule_cluster_0
{


	condition:
		((not(pe.imports("kernel32.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle"))) and (not(pe.imports("kernel32.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentThreadId")) and not(pe.imports("rtmpal.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("kernelbase.dll", "GetCurrentThreadId"))) and (not(pe.imports("kernel32.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-2.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-0.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-1.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "VirtualProtect")) and not(pe.imports("rtmpal.dll", "VirtualProtect"))) and (pe.imports("user32.dll", "RegisterClassA")) and (pe.imports("shell32.dll", "ShellExecuteExA")))

}


rule rule_cluster_1
{


	condition:
		((pe.imports("kernel32.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle")) and (not(pe.imports("kernel32.dll", "InterlockedFlushSList")) and not(pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedFlushSList")) and not(pe.imports("api-ms-win-core-interlocked-l1-1-0.dll", "InterlockedFlushSList"))) and (not(pe.imports("kernel32.dll", "FindClose")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose"))) and (not(pe.imports("kernel32.dll", "TlsSetValue")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "TlsSetValue")) and not(pe.imports("rtmpal.dll", "TlsSetValue")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "TlsSetValue")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "TlsSetValue")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "TlsSetValue"))))

}


rule rule_cluster_2
{


	condition:
		((not(pe.imports("kernel32.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle"))) and (not(pe.imports("kernel32.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentThreadId")) and not(pe.imports("rtmpal.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("kernelbase.dll", "GetCurrentThreadId"))) and (pe.imports("kernel32.dll", "VirtualProtect") or pe.imports("api-ms-win-core-memory-l1-1-2.dll", "VirtualProtect") or pe.imports("api-ms-win-core-memory-l1-1-0.dll", "VirtualProtect") or pe.imports("api-ms-win-core-memory-l1-1-1.dll", "VirtualProtect") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "VirtualProtect") or pe.imports("rtmpal.dll", "VirtualProtect")) and (not(pe.imports("kernel32.dll", "VirtualFree")) and not(pe.imports("api-ms-win-core-memory-l1-1-2.dll", "VirtualFree")) and not(pe.imports("api-ms-win-core-memory-l1-1-0.dll", "VirtualFree")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "VirtualFree")) and not(pe.imports("api-ms-win-core-memory-l1-1-1.dll", "VirtualFree"))))

}


rule rule_cluster_3
{


	condition:
		((not(pe.imports("kernel32.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle"))) and (not(pe.imports("kernel32.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentThreadId")) and not(pe.imports("rtmpal.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("kernelbase.dll", "GetCurrentThreadId"))) and (not(pe.imports("kernel32.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-2.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-0.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-1.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "VirtualProtect")) and not(pe.imports("rtmpal.dll", "VirtualProtect"))) and (not(pe.imports("user32.dll", "RegisterClassA"))) and (pe.imports("msvbvm60.dll", "__vbaGenerateBoundsError")))

}


rule rule_cluster_5
{


	condition:
		((pe.imports("kernel32.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle")) and (not(pe.imports("kernel32.dll", "InterlockedFlushSList")) and not(pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedFlushSList")) and not(pe.imports("api-ms-win-core-interlocked-l1-1-0.dll", "InterlockedFlushSList"))) and (pe.imports("kernel32.dll", "FindClose") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose")) and (not(pe.imports("kernel32.dll", "GetTickCount")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetTickCount")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-1.dll", "GetTickCount")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-0.dll", "GetTickCount")) and not(pe.imports("rtmpal.dll", "GetTickCount")) and not(pe.imports("api-ms-win-core-sysinfo-l1-1-0.dll", "GetTickCount")) and not(pe.imports("kernelbase.dll", "GetTickCount"))) and (not(pe.imports("kernel32.dll", "GetModuleFileNameA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetModuleFileNameA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetModuleFileNameA")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetModuleFileNameA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetModuleFileNameA")) and not(pe.imports("kernelbase.dll", "GetModuleFileNameA"))) and (not(pe.imports("user32.dll", "BlockInput"))))

}


rule rule_cluster_5
{


	condition:
		((pe.imports("kernel32.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle")) and (not(pe.imports("kernel32.dll", "InterlockedFlushSList")) and not(pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedFlushSList")) and not(pe.imports("api-ms-win-core-interlocked-l1-1-0.dll", "InterlockedFlushSList"))) and (pe.imports("kernel32.dll", "FindClose") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose")) and (not(pe.imports("kernel32.dll", "GetTickCount")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetTickCount")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-1.dll", "GetTickCount")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-0.dll", "GetTickCount")) and not(pe.imports("rtmpal.dll", "GetTickCount")) and not(pe.imports("api-ms-win-core-sysinfo-l1-1-0.dll", "GetTickCount")) and not(pe.imports("kernelbase.dll", "GetTickCount"))) and (not(pe.imports("kernel32.dll", "GetModuleFileNameA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetModuleFileNameA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetModuleFileNameA")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetModuleFileNameA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetModuleFileNameA")) and not(pe.imports("kernelbase.dll", "GetModuleFileNameA"))) and (not(pe.imports("user32.dll", "BlockInput")))) or 
		((pe.imports("kernel32.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle")) and (pe.imports("kernel32.dll", "InterlockedFlushSList") or pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedFlushSList") or pe.imports("api-ms-win-core-interlocked-l1-1-0.dll", "InterlockedFlushSList")) and (pe.imports("kernel32.dll", "GetModuleFileNameW") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetModuleFileNameW") or pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetModuleFileNameW") or pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetModuleFileNameW") or pe.imports("rtmpal.dll", "GetModuleFileNameW") or pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetModuleFileNameW")) and (pe.imports("user32.dll", "GetMenuState")))

}


rule rule_cluster_6
{


	condition:
		((pe.imports("kernel32.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle")) and (not(pe.imports("kernel32.dll", "InterlockedFlushSList")) and not(pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedFlushSList")) and not(pe.imports("api-ms-win-core-interlocked-l1-1-0.dll", "InterlockedFlushSList"))) and (not(pe.imports("kernel32.dll", "FindClose")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose"))) and (pe.imports("kernel32.dll", "TlsSetValue") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "TlsSetValue") or pe.imports("rtmpal.dll", "TlsSetValue") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "TlsSetValue") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "TlsSetValue") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "TlsSetValue")) and (not(pe.imports("kernel32.dll", "CompareStringW")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "CompareStringW")) and not(pe.imports("api-ms-win-core-string-l1-1-0.dll", "CompareStringW"))))

}


rule rule_cluster_7
{


	condition:
		((pe.imports("kernel32.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle")) and (not(pe.imports("kernel32.dll", "InterlockedFlushSList")) and not(pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedFlushSList")) and not(pe.imports("api-ms-win-core-interlocked-l1-1-0.dll", "InterlockedFlushSList"))) and (not(pe.imports("kernel32.dll", "FindClose")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose"))) and (pe.imports("kernel32.dll", "TlsSetValue") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "TlsSetValue") or pe.imports("rtmpal.dll", "TlsSetValue") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "TlsSetValue") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "TlsSetValue") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "TlsSetValue")) and (pe.imports("kernel32.dll", "CompareStringW") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "CompareStringW") or pe.imports("api-ms-win-core-string-l1-1-0.dll", "CompareStringW")))

}


rule rule_cluster_7
{


	condition:
		((pe.imports("kernel32.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle")) and (not(pe.imports("kernel32.dll", "InterlockedFlushSList")) and not(pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedFlushSList")) and not(pe.imports("api-ms-win-core-interlocked-l1-1-0.dll", "InterlockedFlushSList"))) and (not(pe.imports("kernel32.dll", "FindClose")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose"))) and (pe.imports("kernel32.dll", "TlsSetValue") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "TlsSetValue") or pe.imports("rtmpal.dll", "TlsSetValue") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "TlsSetValue") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "TlsSetValue") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "TlsSetValue")) and (pe.imports("kernel32.dll", "CompareStringW") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "CompareStringW") or pe.imports("api-ms-win-core-string-l1-1-0.dll", "CompareStringW"))) or 
		((pe.imports("kernel32.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle")) and (not(pe.imports("kernel32.dll", "InterlockedFlushSList")) and not(pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedFlushSList")) and not(pe.imports("api-ms-win-core-interlocked-l1-1-0.dll", "InterlockedFlushSList"))) and (pe.imports("kernel32.dll", "FindClose") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose")) and (not(pe.imports("kernel32.dll", "GetTickCount")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetTickCount")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-1.dll", "GetTickCount")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-0.dll", "GetTickCount")) and not(pe.imports("rtmpal.dll", "GetTickCount")) and not(pe.imports("api-ms-win-core-sysinfo-l1-1-0.dll", "GetTickCount")) and not(pe.imports("kernelbase.dll", "GetTickCount"))) and (pe.imports("kernel32.dll", "GetModuleFileNameA") or pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetModuleFileNameA") or pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetModuleFileNameA") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetModuleFileNameA") or pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetModuleFileNameA") or pe.imports("kernelbase.dll", "GetModuleFileNameA")))

}


rule rule_cluster_8
{


	condition:
		((pe.imports("kernel32.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle")) and (pe.imports("kernel32.dll", "InterlockedFlushSList") or pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedFlushSList") or pe.imports("api-ms-win-core-interlocked-l1-1-0.dll", "InterlockedFlushSList")) and (not(pe.imports("kernel32.dll", "GetModuleFileNameW")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetModuleFileNameW")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetModuleFileNameW")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetModuleFileNameW")) and not(pe.imports("rtmpal.dll", "GetModuleFileNameW")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetModuleFileNameW"))))

}


rule rule_cluster_9
{


	condition:
		((pe.imports("kernel32.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle")) and (pe.imports("kernel32.dll", "InterlockedFlushSList") or pe.imports("api-ms-win-core-interlocked-l1-2-0.dll", "InterlockedFlushSList") or pe.imports("api-ms-win-core-interlocked-l1-1-0.dll", "InterlockedFlushSList")) and (pe.imports("kernel32.dll", "GetModuleFileNameW") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetModuleFileNameW") or pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetModuleFileNameW") or pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetModuleFileNameW") or pe.imports("rtmpal.dll", "GetModuleFileNameW") or pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetModuleFileNameW")) and (not(pe.imports("user32.dll", "GetMenuState"))))

}


rule rule_cluster_10
{


	condition:
		((not(pe.imports("kernel32.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle"))) and (not(pe.imports("kernel32.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentThreadId")) and not(pe.imports("rtmpal.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("kernelbase.dll", "GetCurrentThreadId"))) and (not(pe.imports("kernel32.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-2.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-0.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-1.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "VirtualProtect")) and not(pe.imports("rtmpal.dll", "VirtualProtect"))) and (not(pe.imports("user32.dll", "RegisterClassA"))) and (not(pe.imports("msvbvm60.dll", "__vbaGenerateBoundsError"))) and (pe.imports("msvcrt.dll", "_getche")))

}


rule rule_cluster_10
{


	condition:
		((not(pe.imports("kernel32.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle"))) and (not(pe.imports("kernel32.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentThreadId")) and not(pe.imports("rtmpal.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("kernelbase.dll", "GetCurrentThreadId"))) and (not(pe.imports("kernel32.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-2.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-0.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-1.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "VirtualProtect")) and not(pe.imports("rtmpal.dll", "VirtualProtect"))) and (not(pe.imports("user32.dll", "RegisterClassA"))) and (not(pe.imports("msvbvm60.dll", "__vbaGenerateBoundsError"))) and (pe.imports("msvcrt.dll", "_getche"))) or 
		((not(pe.imports("kernel32.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle"))) and (not(pe.imports("kernel32.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentThreadId")) and not(pe.imports("rtmpal.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("kernelbase.dll", "GetCurrentThreadId"))) and (not(pe.imports("kernel32.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-2.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-0.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-1.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "VirtualProtect")) and not(pe.imports("rtmpal.dll", "VirtualProtect"))) and (pe.imports("user32.dll", "RegisterClassA")) and (not(pe.imports("shell32.dll", "ShellExecuteExA"))) and (pe.imports("msvcrt.dll", "__getmainargs") or pe.imports("crtdll.dll", "__GetMainArgs") or pe.imports("msvcr120.dll", "__getmainargs") or pe.imports("msvcr90.dll", "__getmainargs") or pe.imports("msvcr120_clr0400.dll", "__getmainargs")))

}


rule rule_cluster_11
{


	condition:
		((not(pe.imports("kernel32.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle"))) and (not(pe.imports("kernel32.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentThreadId")) and not(pe.imports("rtmpal.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("kernelbase.dll", "GetCurrentThreadId"))) and (pe.imports("kernel32.dll", "VirtualProtect") or pe.imports("api-ms-win-core-memory-l1-1-2.dll", "VirtualProtect") or pe.imports("api-ms-win-core-memory-l1-1-0.dll", "VirtualProtect") or pe.imports("api-ms-win-core-memory-l1-1-1.dll", "VirtualProtect") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "VirtualProtect") or pe.imports("rtmpal.dll", "VirtualProtect")) and (pe.imports("kernel32.dll", "VirtualFree") or pe.imports("api-ms-win-core-memory-l1-1-2.dll", "VirtualFree") or pe.imports("api-ms-win-core-memory-l1-1-0.dll", "VirtualFree") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "VirtualFree") or pe.imports("api-ms-win-core-memory-l1-1-1.dll", "VirtualFree")))

}


rule rule_cluster_11
{


	condition:
		((not(pe.imports("kernel32.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle"))) and (not(pe.imports("kernel32.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentThreadId")) and not(pe.imports("rtmpal.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("kernelbase.dll", "GetCurrentThreadId"))) and (pe.imports("kernel32.dll", "VirtualProtect") or pe.imports("api-ms-win-core-memory-l1-1-2.dll", "VirtualProtect") or pe.imports("api-ms-win-core-memory-l1-1-0.dll", "VirtualProtect") or pe.imports("api-ms-win-core-memory-l1-1-1.dll", "VirtualProtect") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "VirtualProtect") or pe.imports("rtmpal.dll", "VirtualProtect")) and (pe.imports("kernel32.dll", "VirtualFree") or pe.imports("api-ms-win-core-memory-l1-1-2.dll", "VirtualFree") or pe.imports("api-ms-win-core-memory-l1-1-0.dll", "VirtualFree") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "VirtualFree") or pe.imports("api-ms-win-core-memory-l1-1-1.dll", "VirtualFree"))) or 
		((not(pe.imports("kernel32.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle"))) and (pe.imports("kernel32.dll", "GetCurrentThreadId") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentThreadId") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentThreadId") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentThreadId") or pe.imports("rtmpal.dll", "GetCurrentThreadId") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentThreadId") or pe.imports("kernelbase.dll", "GetCurrentThreadId")) and (pe.imports("shlwapi.dll", "UrlHashW") or pe.imports("api-ms-win-core-url-l1-1-0.dll", "UrlHashW")))

}


rule rule_cluster_12
{


	condition:
		((not(pe.imports("kernel32.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle"))) and (not(pe.imports("kernel32.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentThreadId")) and not(pe.imports("rtmpal.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("kernelbase.dll", "GetCurrentThreadId"))) and (not(pe.imports("kernel32.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-2.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-0.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-1.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "VirtualProtect")) and not(pe.imports("rtmpal.dll", "VirtualProtect"))) and (not(pe.imports("user32.dll", "RegisterClassA"))) and (not(pe.imports("msvbvm60.dll", "__vbaGenerateBoundsError"))) and (not(pe.imports("msvcrt.dll", "_getche"))) and (not(pe.imports("ws2_32.dll", "inet_ntoa")) and not(pe.imports("wsock32.dll", "inet_ntoa")) and not(pe.imports("ws2", "inet_ntoa"))) and (pe.imports("user32.dll", "EnumWindows") or pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "EnumWindows")))

}


rule rule_cluster_12
{


	condition:
		((not(pe.imports("kernel32.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle"))) and (not(pe.imports("kernel32.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentThreadId")) and not(pe.imports("rtmpal.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("kernelbase.dll", "GetCurrentThreadId"))) and (not(pe.imports("kernel32.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-2.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-0.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-1.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "VirtualProtect")) and not(pe.imports("rtmpal.dll", "VirtualProtect"))) and (not(pe.imports("user32.dll", "RegisterClassA"))) and (not(pe.imports("msvbvm60.dll", "__vbaGenerateBoundsError"))) and (not(pe.imports("msvcrt.dll", "_getche"))) and (not(pe.imports("ws2_32.dll", "inet_ntoa")) and not(pe.imports("wsock32.dll", "inet_ntoa")) and not(pe.imports("ws2", "inet_ntoa"))) and (pe.imports("user32.dll", "EnumWindows") or pe.imports("api-ms-win-rtcore-ntuser-window-l1-1-0.dll", "EnumWindows"))) or 
		((not(pe.imports("kernel32.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetStdHandle")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetStdHandle"))) and (not(pe.imports("kernel32.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentThreadId")) and not(pe.imports("rtmpal.dll", "GetCurrentThreadId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentThreadId")) and not(pe.imports("kernelbase.dll", "GetCurrentThreadId"))) and (not(pe.imports("kernel32.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-2.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-0.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-core-memory-l1-1-1.dll", "VirtualProtect")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "VirtualProtect")) and not(pe.imports("rtmpal.dll", "VirtualProtect"))) and (not(pe.imports("user32.dll", "RegisterClassA"))) and (not(pe.imports("msvbvm60.dll", "__vbaGenerateBoundsError"))) and (not(pe.imports("msvcrt.dll", "_getche"))) and (pe.imports("ws2_32.dll", "inet_ntoa") or pe.imports("wsock32.dll", "inet_ntoa") or pe.imports("ws2", "inet_ntoa")))

}
