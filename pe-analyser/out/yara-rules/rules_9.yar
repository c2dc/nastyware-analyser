import "pe"
rule rule_cluster_0
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "GetConsoleCP") or pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetConsoleCP")) and (pe.imports("kernel32.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject") or pe.imports("rtmpal.dll", "WaitForSingleObject") or pe.imports("kernelbase.dll", "WaitForSingleObject")) and (not(pe.imports("kernel32.dll", "PeekNamedPipe")) and not(pe.imports("api-ms-win-core-namedpipe-l1-2-0.dll", "PeekNamedPipe")) and not(pe.imports("api-ms-win-core-namedpipe-l1-1-0.dll", "PeekNamedPipe"))))

}

rule rule_cluster_1
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "GetConsoleCP") or pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetConsoleCP")) and (not(pe.imports("kernel32.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("rtmpal.dll", "WaitForSingleObject")) and not(pe.imports("kernelbase.dll", "WaitForSingleObject"))) and (not(pe.imports("kernel32.dll", "GetProcessHeap")) and not(pe.imports("api-ms-win-core-heap-l1-2-0.dll", "GetProcessHeap")) and not(pe.imports("api-ms-win-core-heap-l1-1-0.dll", "GetProcessHeap")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetProcessHeap")) and not(pe.imports("rtmpal.dll", "GetProcessHeap")) and not(pe.imports("kernelbase.dll", "GetProcessHeap"))) and (pe.imports("wininet.dll", "HttpAddRequestHeadersA")))

}

rule rule_cluster_1
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "GetConsoleCP") or pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetConsoleCP")) and (not(pe.imports("kernel32.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("rtmpal.dll", "WaitForSingleObject")) and not(pe.imports("kernelbase.dll", "WaitForSingleObject"))) and (not(pe.imports("kernel32.dll", "GetProcessHeap")) and not(pe.imports("api-ms-win-core-heap-l1-2-0.dll", "GetProcessHeap")) and not(pe.imports("api-ms-win-core-heap-l1-1-0.dll", "GetProcessHeap")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetProcessHeap")) and not(pe.imports("rtmpal.dll", "GetProcessHeap")) and not(pe.imports("kernelbase.dll", "GetProcessHeap"))) and (pe.imports("wininet.dll", "HttpAddRequestHeadersA"))) or 
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "GetConsoleCP") or pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetConsoleCP")) and (pe.imports("kernel32.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject") or pe.imports("rtmpal.dll", "WaitForSingleObject") or pe.imports("kernelbase.dll", "WaitForSingleObject")) and (pe.imports("kernel32.dll", "PeekNamedPipe") or pe.imports("api-ms-win-core-namedpipe-l1-2-0.dll", "PeekNamedPipe") or pe.imports("api-ms-win-core-namedpipe-l1-1-0.dll", "PeekNamedPipe")) and (not(pe.imports("advapi32.dll", "InitializeSecurityDescriptor")) and not(pe.imports("api-ms-win-security-base-l1-2-0.dll", "InitializeSecurityDescriptor")) and not(pe.imports("api-ms-win-security-base-l1-1-0.dll", "InitializeSecurityDescriptor")) and not(pe.imports("api-ms-win-downlevel-advapi32-l1-1-1.dll", "InitializeSecurityDescriptor")) and not(pe.imports("api-ms-win-downlevel-advapi32-l1-1-0.dll", "InitializeSecurityDescriptor"))))

}

rule rule_cluster_2
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetConsoleCP")) and not(pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetConsoleCP"))) and (not(pe.imports("kernel32.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA"))) and (not(pe.imports("kernel32.dll", "WaitForMultipleObjects")) and not(pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "WaitForMultipleObjects")) and not(pe.imports("api-ms-win-core-synch-l1-2-1.dll", "WaitForMultipleObjects")) and not(pe.imports("api-ms-win-core-kernel32-legacy-l1-1-1.dll", "WaitForMultipleObjects"))) and (not(pe.imports("kernel32.dll", "GetModuleHandleA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetModuleHandleA")) and not(pe.imports("kernel32", "GetModuleHandleA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetModuleHandleA")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetModuleHandleA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetModuleHandleA"))) and (not(pe.imports("advapi32.dll", "RegOpenKeyExW")) and not(pe.imports("api-ms-win-core-registry-l1-1-0.dll", "RegOpenKeyExW")) and not(pe.imports("api-ms-win-core-localregistry-l1-1-0.dll", "RegOpenKeyExW")) and not(pe.imports("api-ms-win-downlevel-advapi32-l1-1-1.dll", "RegOpenKeyExW")) and not(pe.imports("api-ms-win-downlevel-advapi32-l1-1-0.dll", "RegOpenKeyExW")) and not(pe.imports("kernel32.dll", "RegOpenKeyExW")) and not(pe.imports("rtmpal.dll", "RegOpenKeyExW")) and not(pe.imports("kernelbase.dll", "RegOpenKeyExW"))) and (not(pe.imports("gdi32.dll", "GetBkColor"))))

}

rule rule_cluster_3
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (pe.imports("msvbvm60.dll", "_adj_fdiv_r")) and (pe.imports("msvbvm60.dll", "__vbaVarTstLt")))

}

rule rule_cluster_4
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("msvbvm60.dll", "_adj_fdiv_r"))) and (not(pe.imports("msvcrt.dll", "__p___initenv"))) and (pe.imports("shlwapi.dll", "StrStrIA") or pe.imports("shell32.dll", "StrStrIA") or pe.imports("api-ms-win-downlevel-shlwapi-l1-1-0.dll", "StrStrIA") or pe.imports("api-ms-win-core-shlwapi-obsolete-l1-2-0.dll", "StrStrIA")) and (not(pe.imports("gdi32.dll", "RealizePalette"))))

}

rule rule_cluster_4
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("msvbvm60.dll", "_adj_fdiv_r"))) and (not(pe.imports("msvcrt.dll", "__p___initenv"))) and (pe.imports("shlwapi.dll", "StrStrIA") or pe.imports("shell32.dll", "StrStrIA") or pe.imports("api-ms-win-downlevel-shlwapi-l1-1-0.dll", "StrStrIA") or pe.imports("api-ms-win-core-shlwapi-obsolete-l1-2-0.dll", "StrStrIA")) and (not(pe.imports("gdi32.dll", "RealizePalette")))) or 
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("msvbvm60.dll", "_adj_fdiv_r"))) and (pe.imports("msvcrt.dll", "__p___initenv")))

}

rule rule_cluster_6
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "GetConsoleCP") or pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetConsoleCP")) and (not(pe.imports("kernel32.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("rtmpal.dll", "WaitForSingleObject")) and not(pe.imports("kernelbase.dll", "WaitForSingleObject"))) and (not(pe.imports("kernel32.dll", "GetProcessHeap")) and not(pe.imports("api-ms-win-core-heap-l1-2-0.dll", "GetProcessHeap")) and not(pe.imports("api-ms-win-core-heap-l1-1-0.dll", "GetProcessHeap")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetProcessHeap")) and not(pe.imports("rtmpal.dll", "GetProcessHeap")) and not(pe.imports("kernelbase.dll", "GetProcessHeap"))) and (not(pe.imports("wininet.dll", "HttpAddRequestHeadersA"))))

}

rule rule_cluster_7
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "GetConsoleCP") or pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetConsoleCP")) and (not(pe.imports("kernel32.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("rtmpal.dll", "WaitForSingleObject")) and not(pe.imports("kernelbase.dll", "WaitForSingleObject"))) and (pe.imports("kernel32.dll", "GetProcessHeap") or pe.imports("api-ms-win-core-heap-l1-2-0.dll", "GetProcessHeap") or pe.imports("api-ms-win-core-heap-l1-1-0.dll", "GetProcessHeap") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetProcessHeap") or pe.imports("rtmpal.dll", "GetProcessHeap") or pe.imports("kernelbase.dll", "GetProcessHeap")))

}

rule rule_cluster_8
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetConsoleCP")) and not(pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetConsoleCP"))) and (pe.imports("kernel32.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA")) and (not(pe.imports("user32.dll", "GetDlgItem"))) and (not(pe.imports("kernel32.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetLocaleInfoW"))))

}

rule rule_cluster_8
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetConsoleCP")) and not(pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetConsoleCP"))) and (pe.imports("kernel32.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA")) and (not(pe.imports("user32.dll", "GetDlgItem"))) and (not(pe.imports("kernel32.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetLocaleInfoW")))) or 
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetConsoleCP")) and not(pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetConsoleCP"))) and (pe.imports("kernel32.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA")) and (not(pe.imports("user32.dll", "GetDlgItem"))) and (pe.imports("kernel32.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetLocaleInfoW")))

}

rule rule_cluster_9
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetConsoleCP")) and not(pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetConsoleCP"))) and (pe.imports("kernel32.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA")) and (not(pe.imports("user32.dll", "GetDlgItem"))) and (pe.imports("kernel32.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetLocaleInfoW")))

}

rule rule_cluster_10
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetConsoleCP")) and not(pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetConsoleCP"))) and (not(pe.imports("kernel32.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA"))) and (pe.imports("kernel32.dll", "WaitForMultipleObjects") or pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "WaitForMultipleObjects") or pe.imports("api-ms-win-core-synch-l1-2-1.dll", "WaitForMultipleObjects") or pe.imports("api-ms-win-core-kernel32-legacy-l1-1-1.dll", "WaitForMultipleObjects")))

}

rule rule_cluster_11
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("msvbvm60.dll", "_adj_fdiv_r"))) and (not(pe.imports("msvcrt.dll", "__p___initenv"))) and (pe.imports("shlwapi.dll", "StrStrIA") or pe.imports("shell32.dll", "StrStrIA") or pe.imports("api-ms-win-downlevel-shlwapi-l1-1-0.dll", "StrStrIA") or pe.imports("api-ms-win-core-shlwapi-obsolete-l1-2-0.dll", "StrStrIA")) and (pe.imports("gdi32.dll", "RealizePalette")))

}

rule rule_cluster_11
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("msvbvm60.dll", "_adj_fdiv_r"))) and (not(pe.imports("msvcrt.dll", "__p___initenv"))) and (pe.imports("shlwapi.dll", "StrStrIA") or pe.imports("shell32.dll", "StrStrIA") or pe.imports("api-ms-win-downlevel-shlwapi-l1-1-0.dll", "StrStrIA") or pe.imports("api-ms-win-core-shlwapi-obsolete-l1-2-0.dll", "StrStrIA")) and (pe.imports("gdi32.dll", "RealizePalette"))) or 
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetConsoleCP")) and not(pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetConsoleCP"))) and (not(pe.imports("kernel32.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA"))) and (not(pe.imports("kernel32.dll", "WaitForMultipleObjects")) and not(pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "WaitForMultipleObjects")) and not(pe.imports("api-ms-win-core-synch-l1-2-1.dll", "WaitForMultipleObjects")) and not(pe.imports("api-ms-win-core-kernel32-legacy-l1-1-1.dll", "WaitForMultipleObjects"))) and (not(pe.imports("kernel32.dll", "GetModuleHandleA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetModuleHandleA")) and not(pe.imports("kernel32", "GetModuleHandleA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetModuleHandleA")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetModuleHandleA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetModuleHandleA"))) and (pe.imports("advapi32.dll", "RegOpenKeyExW") or pe.imports("api-ms-win-core-registry-l1-1-0.dll", "RegOpenKeyExW") or pe.imports("api-ms-win-core-localregistry-l1-1-0.dll", "RegOpenKeyExW") or pe.imports("api-ms-win-downlevel-advapi32-l1-1-1.dll", "RegOpenKeyExW") or pe.imports("api-ms-win-downlevel-advapi32-l1-1-0.dll", "RegOpenKeyExW") or pe.imports("kernel32.dll", "RegOpenKeyExW") or pe.imports("rtmpal.dll", "RegOpenKeyExW") or pe.imports("kernelbase.dll", "RegOpenKeyExW")))

}

rule rule_cluster_11
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("msvbvm60.dll", "_adj_fdiv_r"))) and (not(pe.imports("msvcrt.dll", "__p___initenv"))) and (pe.imports("shlwapi.dll", "StrStrIA") or pe.imports("shell32.dll", "StrStrIA") or pe.imports("api-ms-win-downlevel-shlwapi-l1-1-0.dll", "StrStrIA") or pe.imports("api-ms-win-core-shlwapi-obsolete-l1-2-0.dll", "StrStrIA")) and (pe.imports("gdi32.dll", "RealizePalette"))) or 
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetConsoleCP")) and not(pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetConsoleCP"))) and (not(pe.imports("kernel32.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA"))) and (not(pe.imports("kernel32.dll", "WaitForMultipleObjects")) and not(pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "WaitForMultipleObjects")) and not(pe.imports("api-ms-win-core-synch-l1-2-1.dll", "WaitForMultipleObjects")) and not(pe.imports("api-ms-win-core-kernel32-legacy-l1-1-1.dll", "WaitForMultipleObjects"))) and (not(pe.imports("kernel32.dll", "GetModuleHandleA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-0.dll", "GetModuleHandleA")) and not(pe.imports("kernel32", "GetModuleHandleA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-1.dll", "GetModuleHandleA")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetModuleHandleA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-1-0.dll", "GetModuleHandleA"))) and (pe.imports("advapi32.dll", "RegOpenKeyExW") or pe.imports("api-ms-win-core-registry-l1-1-0.dll", "RegOpenKeyExW") or pe.imports("api-ms-win-core-localregistry-l1-1-0.dll", "RegOpenKeyExW") or pe.imports("api-ms-win-downlevel-advapi32-l1-1-1.dll", "RegOpenKeyExW") or pe.imports("api-ms-win-downlevel-advapi32-l1-1-0.dll", "RegOpenKeyExW") or pe.imports("kernel32.dll", "RegOpenKeyExW") or pe.imports("rtmpal.dll", "RegOpenKeyExW") or pe.imports("kernelbase.dll", "RegOpenKeyExW"))) or 
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetConsoleCP")) and not(pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetConsoleCP"))) and (pe.imports("kernel32.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA")) and (pe.imports("user32.dll", "GetDlgItem")))

}

rule rule_cluster_12
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetConsoleCP")) and not(pe.imports("api-ms-win-core-console-l1-1-0.dll", "GetConsoleCP"))) and (pe.imports("kernel32.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA")) and (pe.imports("user32.dll", "GetDlgItem")))

}

rule rule_cluster_13
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (pe.imports("msvbvm60.dll", "_adj_fdiv_r")) and (not(pe.imports("msvbvm60.dll", "__vbaVarTstLt"))))

}
