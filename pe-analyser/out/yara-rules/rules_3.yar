import "pe"
rule rule_cluster_0
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "GetFullPathNameA") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "GetFullPathNameA") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "GetFullPathNameA")) and (not(pe.imports("gdi32.dll", "SetWinMetaFileBits"))) and (not(pe.imports("gdi32.dll", "EndPage"))) and (pe.imports("kernel32.dll", "LocalAlloc") or pe.imports("api-ms-win-core-heap-l2-1-0.dll", "LocalAlloc") or pe.imports("api-ms-win-core-heap-obsolete-l1-1-0.dll", "LocalAlloc") or pe.imports("kernelbase.dll", "LocalAlloc") or pe.imports("api-ms-win-downlevel-kernel32-l2-1-0.dll", "LocalAlloc") or pe.imports("api-ms-win-core-misc-l1-1-0.dll", "LocalAlloc")))

}

rule rule_cluster_1
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "GetFullPathNameA") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "GetFullPathNameA") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "GetFullPathNameA")) and (not(pe.imports("gdi32.dll", "SetWinMetaFileBits"))) and (not(pe.imports("gdi32.dll", "EndPage"))) and (not(pe.imports("kernel32.dll", "LocalAlloc")) and not(pe.imports("api-ms-win-core-heap-l2-1-0.dll", "LocalAlloc")) and not(pe.imports("api-ms-win-core-heap-obsolete-l1-1-0.dll", "LocalAlloc")) and not(pe.imports("kernelbase.dll", "LocalAlloc")) and not(pe.imports("api-ms-win-downlevel-kernel32-l2-1-0.dll", "LocalAlloc")) and not(pe.imports("api-ms-win-core-misc-l1-1-0.dll", "LocalAlloc"))))

}

rule rule_cluster_2
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetFullPathNameA")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "GetFullPathNameA")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "GetFullPathNameA"))) and (not(pe.imports("kernel32.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA"))) and (not(pe.imports("kernel32.dll", "UnhandledExceptionFilter")) and not(pe.imports("api-ms-win-core-errorhandling-l1-1-1.dll", "UnhandledExceptionFilter")) and not(pe.imports("api-ms-win-core-errorhandling-l1-1-0.dll", "UnhandledExceptionFilter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "UnhandledExceptionFilter")) and not(pe.imports("kernelbase.dll", "UnhandledExceptionFilter")) and not(pe.imports("rtmpal.dll", "UnhandledExceptionFilter"))) and (not(pe.imports("user32.dll", "GetCursorInfo"))))

}

rule rule_cluster_3
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (pe.imports("kernel32.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA") or pe.imports("rtmpal.dll", "LoadLibraryA")) and (pe.imports("netapi32.dll", "NetGroupGetUsers") or pe.imports("samcli.dll", "NetGroupGetUsers")))

}

rule rule_cluster_4
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetFullPathNameA")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "GetFullPathNameA")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "GetFullPathNameA"))) and (pe.imports("kernel32.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA")) and (not(pe.imports("kernel32.dll", "GetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "GetEnvironmentVariableA"))) and (not(pe.imports("ole32.dll", "CLSIDFromString")) and not(pe.imports("api-ms-win-core-com-l1-1-1.dll", "CLSIDFromString")) and not(pe.imports("api-ms-win-core-com-l1-1-0.dll", "CLSIDFromString")) and not(pe.imports("api-ms-win-downlevel-ole32-l1-1-1.dll", "CLSIDFromString")) and not(pe.imports("rtmpal.dll", "CLSIDFromString"))))

}

rule rule_cluster_5
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetFullPathNameA")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "GetFullPathNameA")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "GetFullPathNameA"))) and (not(pe.imports("kernel32.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA"))) and (pe.imports("kernel32.dll", "UnhandledExceptionFilter") or pe.imports("api-ms-win-core-errorhandling-l1-1-1.dll", "UnhandledExceptionFilter") or pe.imports("api-ms-win-core-errorhandling-l1-1-0.dll", "UnhandledExceptionFilter") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "UnhandledExceptionFilter") or pe.imports("kernelbase.dll", "UnhandledExceptionFilter") or pe.imports("rtmpal.dll", "UnhandledExceptionFilter")) and (pe.imports("kernel32.dll", "GetLocalTime") or pe.imports("api-ms-win-core-sysinfo-l1-2-1.dll", "GetLocalTime") or pe.imports("api-ms-win-core-sysinfo-l1-2-0.dll", "GetLocalTime") or pe.imports("api-ms-win-core-sysinfo-l1-1-0.dll", "GetLocalTime") or pe.imports("rtmpal.dll", "GetLocalTime") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetLocalTime")))

}

rule rule_cluster_5
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetFullPathNameA")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "GetFullPathNameA")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "GetFullPathNameA"))) and (not(pe.imports("kernel32.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA"))) and (pe.imports("kernel32.dll", "UnhandledExceptionFilter") or pe.imports("api-ms-win-core-errorhandling-l1-1-1.dll", "UnhandledExceptionFilter") or pe.imports("api-ms-win-core-errorhandling-l1-1-0.dll", "UnhandledExceptionFilter") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "UnhandledExceptionFilter") or pe.imports("kernelbase.dll", "UnhandledExceptionFilter") or pe.imports("rtmpal.dll", "UnhandledExceptionFilter")) and (pe.imports("kernel32.dll", "GetLocalTime") or pe.imports("api-ms-win-core-sysinfo-l1-2-1.dll", "GetLocalTime") or pe.imports("api-ms-win-core-sysinfo-l1-2-0.dll", "GetLocalTime") or pe.imports("api-ms-win-core-sysinfo-l1-1-0.dll", "GetLocalTime") or pe.imports("rtmpal.dll", "GetLocalTime") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetLocalTime"))) or 
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetFullPathNameA")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "GetFullPathNameA")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "GetFullPathNameA"))) and (pe.imports("kernel32.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA")) and (not(pe.imports("kernel32.dll", "GetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "GetEnvironmentVariableA"))) and (pe.imports("ole32.dll", "CLSIDFromString") or pe.imports("api-ms-win-core-com-l1-1-1.dll", "CLSIDFromString") or pe.imports("api-ms-win-core-com-l1-1-0.dll", "CLSIDFromString") or pe.imports("api-ms-win-downlevel-ole32-l1-1-1.dll", "CLSIDFromString") or pe.imports("rtmpal.dll", "CLSIDFromString")))

}

rule rule_cluster_6
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetFullPathNameA")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "GetFullPathNameA")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "GetFullPathNameA"))) and (pe.imports("kernel32.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA")) and (pe.imports("kernel32.dll", "GetEnvironmentVariableA") or pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "GetEnvironmentVariableA")))

}

rule rule_cluster_7
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetFullPathNameA")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "GetFullPathNameA")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "GetFullPathNameA"))) and (not(pe.imports("kernel32.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA"))) and (pe.imports("kernel32.dll", "UnhandledExceptionFilter") or pe.imports("api-ms-win-core-errorhandling-l1-1-1.dll", "UnhandledExceptionFilter") or pe.imports("api-ms-win-core-errorhandling-l1-1-0.dll", "UnhandledExceptionFilter") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "UnhandledExceptionFilter") or pe.imports("kernelbase.dll", "UnhandledExceptionFilter") or pe.imports("rtmpal.dll", "UnhandledExceptionFilter")) and (not(pe.imports("kernel32.dll", "GetLocalTime")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-1.dll", "GetLocalTime")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-0.dll", "GetLocalTime")) and not(pe.imports("api-ms-win-core-sysinfo-l1-1-0.dll", "GetLocalTime")) and not(pe.imports("rtmpal.dll", "GetLocalTime")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetLocalTime"))) and (pe.imports("kernel32.dll", "IsDebuggerPresent") or pe.imports("api-ms-win-core-debug-l1-1-1.dll", "IsDebuggerPresent") or pe.imports("api-ms-win-core-debug-l1-1-0.dll", "IsDebuggerPresent") or pe.imports("rtmpal.dll", "IsDebuggerPresent") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "IsDebuggerPresent")))

}

rule rule_cluster_8
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "GetFullPathNameA") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "GetFullPathNameA") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "GetFullPathNameA")) and (not(pe.imports("gdi32.dll", "SetWinMetaFileBits"))) and (not(pe.imports("gdi32.dll", "EndPage"))) and (not(pe.imports("kernel32.dll", "LocalAlloc")) and not(pe.imports("api-ms-win-core-heap-l2-1-0.dll", "LocalAlloc")) and not(pe.imports("api-ms-win-core-heap-obsolete-l1-1-0.dll", "LocalAlloc")) and not(pe.imports("kernelbase.dll", "LocalAlloc")) and not(pe.imports("api-ms-win-downlevel-kernel32-l2-1-0.dll", "LocalAlloc")) and not(pe.imports("api-ms-win-core-misc-l1-1-0.dll", "LocalAlloc"))))

}

rule rule_cluster_9
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "GetFullPathNameA") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "GetFullPathNameA") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "GetFullPathNameA")) and (not(pe.imports("gdi32.dll", "SetWinMetaFileBits"))) and (pe.imports("gdi32.dll", "EndPage")))

}

rule rule_cluster_10
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "GetFullPathNameA") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "GetFullPathNameA") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "GetFullPathNameA")) and (pe.imports("gdi32.dll", "SetWinMetaFileBits")) and (not(pe.imports("kernel32.dll", "FileTimeToLocalFileTime")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "FileTimeToLocalFileTime")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "FileTimeToLocalFileTime")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FileTimeToLocalFileTime")) and not(pe.imports("api-ms-win-core-file-l1-2-0.dll", "FileTimeToLocalFileTime"))))

}

rule rule_cluster_11
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "GetFullPathNameA") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "GetFullPathNameA") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "GetFullPathNameA")) and (pe.imports("gdi32.dll", "SetWinMetaFileBits")) and (pe.imports("kernel32.dll", "FileTimeToLocalFileTime") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "FileTimeToLocalFileTime") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "FileTimeToLocalFileTime") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FileTimeToLocalFileTime") or pe.imports("api-ms-win-core-file-l1-2-0.dll", "FileTimeToLocalFileTime")) and (not(pe.imports("user32.dll", "DrawFocusRect"))))

}

rule rule_cluster_12
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "GetFullPathNameA") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "GetFullPathNameA") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "GetFullPathNameA")) and (pe.imports("gdi32.dll", "SetWinMetaFileBits")) and (pe.imports("kernel32.dll", "FileTimeToLocalFileTime") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "FileTimeToLocalFileTime") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "FileTimeToLocalFileTime") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FileTimeToLocalFileTime") or pe.imports("api-ms-win-core-file-l1-2-0.dll", "FileTimeToLocalFileTime")) and (pe.imports("user32.dll", "DrawFocusRect")))

}

rule rule_cluster_13
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (pe.imports("kernel32.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA") or pe.imports("rtmpal.dll", "LoadLibraryA")) and (not(pe.imports("netapi32.dll", "NetGroupGetUsers")) and not(pe.imports("samcli.dll", "NetGroupGetUsers"))) and (pe.imports("advapi32.dll", "RegSaveKeyExA") or pe.imports("api-ms-win-core-registry-l1-1-0.dll", "RegSaveKeyExA")))

}

rule rule_cluster_14
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (not(pe.imports("kernel32.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA")) and not(pe.imports("rtmpal.dll", "LoadLibraryA"))) and (pe.imports("msvbvm60.dll", "_adj_fdivr_m32i")))

}

rule rule_cluster_15
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (pe.imports("kernel32.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA") or pe.imports("rtmpal.dll", "LoadLibraryA")) and (not(pe.imports("netapi32.dll", "NetGroupGetUsers")) and not(pe.imports("samcli.dll", "NetGroupGetUsers"))) and (not(pe.imports("advapi32.dll", "RegSaveKeyExA")) and not(pe.imports("api-ms-win-core-registry-l1-1-0.dll", "RegSaveKeyExA"))))

}

rule rule_cluster_15
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-core-profile-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "QueryPerformanceCounter")) and not(pe.imports("kernelbase.dll", "QueryPerformanceCounter")) and not(pe.imports("rtmpal.dll", "QueryPerformanceCounter"))) and (pe.imports("kernel32.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA") or pe.imports("rtmpal.dll", "LoadLibraryA")) and (not(pe.imports("netapi32.dll", "NetGroupGetUsers")) and not(pe.imports("samcli.dll", "NetGroupGetUsers"))) and (not(pe.imports("advapi32.dll", "RegSaveKeyExA")) and not(pe.imports("api-ms-win-core-registry-l1-1-0.dll", "RegSaveKeyExA")))) or 
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "GetFullPathNameA")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "GetFullPathNameA")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "GetFullPathNameA"))) and (not(pe.imports("kernel32.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-2-0.dll", "SetEnvironmentVariableA")) and not(pe.imports("api-ms-win-core-processenvironment-l1-1-0.dll", "SetEnvironmentVariableA"))) and (not(pe.imports("kernel32.dll", "UnhandledExceptionFilter")) and not(pe.imports("api-ms-win-core-errorhandling-l1-1-1.dll", "UnhandledExceptionFilter")) and not(pe.imports("api-ms-win-core-errorhandling-l1-1-0.dll", "UnhandledExceptionFilter")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "UnhandledExceptionFilter")) and not(pe.imports("kernelbase.dll", "UnhandledExceptionFilter")) and not(pe.imports("rtmpal.dll", "UnhandledExceptionFilter"))) and (pe.imports("user32.dll", "GetCursorInfo")))

}
