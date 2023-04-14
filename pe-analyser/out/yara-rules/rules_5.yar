import "pe"
rule rule_cluster_0
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose")) and (pe.imports("kernel32.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject") or pe.imports("rtmpal.dll", "WaitForSingleObject") or pe.imports("kernelbase.dll", "WaitForSingleObject")) and (pe.imports("user32.dll", "GetSysColorBrush")) and (not(pe.imports("shlwapi.dll", "StrRChrIW")) and not(pe.imports("api-ms-win-core-shlwapi-obsolete-l1-2-0.dll", "StrRChrIW"))))

}

rule rule_cluster_1
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentProcessId")) and not(pe.imports("kernelbase.dll", "GetCurrentProcessId")) and not(pe.imports("rtmpal.dll", "GetCurrentProcessId"))) and (not(pe.imports("kernel32.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA")) and not(pe.imports("rtmpal.dll", "LoadLibraryA"))) and (not(pe.imports("ntoskrnl.exe", "ExAllocatePoolWithTag"))) and (pe.imports("msvbvm60.dll", "_CIlog") or pe.imports("msvcrt.dll", "_CIlog") or pe.imports("msvcr120_clr0400.dll", "_CIlog")))

}

rule rule_cluster_2
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose")) and (not(pe.imports("kernel32.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("rtmpal.dll", "WaitForSingleObject")) and not(pe.imports("kernelbase.dll", "WaitForSingleObject"))) and (not(pe.imports("kernel32.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetLocaleInfoW"))) and (not(pe.imports("kernel32.dll", "OutputDebugStringW")) and not(pe.imports("api-ms-win-core-debug-l1-1-1.dll", "OutputDebugStringW")) and not(pe.imports("api-ms-win-core-debug-l1-1-0.dll", "OutputDebugStringW")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "OutputDebugStringW")) and not(pe.imports("kernelbase.dll", "OutputDebugStringW"))) and (not(pe.imports("kernel32.dll", "CreateDirectoryA")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "CreateDirectoryA")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "CreateDirectoryA"))))

}

rule rule_cluster_3
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose")) and (not(pe.imports("kernel32.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("rtmpal.dll", "WaitForSingleObject")) and not(pe.imports("kernelbase.dll", "WaitForSingleObject"))) and (not(pe.imports("kernel32.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetLocaleInfoW"))) and (not(pe.imports("kernel32.dll", "OutputDebugStringW")) and not(pe.imports("api-ms-win-core-debug-l1-1-1.dll", "OutputDebugStringW")) and not(pe.imports("api-ms-win-core-debug-l1-1-0.dll", "OutputDebugStringW")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "OutputDebugStringW")) and not(pe.imports("kernelbase.dll", "OutputDebugStringW"))) and (pe.imports("kernel32.dll", "CreateDirectoryA") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "CreateDirectoryA") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "CreateDirectoryA")))

}

rule rule_cluster_3
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose")) and (not(pe.imports("kernel32.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("rtmpal.dll", "WaitForSingleObject")) and not(pe.imports("kernelbase.dll", "WaitForSingleObject"))) and (not(pe.imports("kernel32.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetLocaleInfoW"))) and (not(pe.imports("kernel32.dll", "OutputDebugStringW")) and not(pe.imports("api-ms-win-core-debug-l1-1-1.dll", "OutputDebugStringW")) and not(pe.imports("api-ms-win-core-debug-l1-1-0.dll", "OutputDebugStringW")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "OutputDebugStringW")) and not(pe.imports("kernelbase.dll", "OutputDebugStringW"))) and (pe.imports("kernel32.dll", "CreateDirectoryA") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "CreateDirectoryA") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "CreateDirectoryA"))) or 
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose")) and (not(pe.imports("kernel32.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("rtmpal.dll", "WaitForSingleObject")) and not(pe.imports("kernelbase.dll", "WaitForSingleObject"))) and (not(pe.imports("kernel32.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetLocaleInfoW")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetLocaleInfoW"))) and (pe.imports("kernel32.dll", "OutputDebugStringW") or pe.imports("api-ms-win-core-debug-l1-1-1.dll", "OutputDebugStringW") or pe.imports("api-ms-win-core-debug-l1-1-0.dll", "OutputDebugStringW") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "OutputDebugStringW") or pe.imports("kernelbase.dll", "OutputDebugStringW")))

}

rule rule_cluster_4
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose"))) and (pe.imports("kernel32.dll", "GetVersionExA") or pe.imports("api-ms-win-core-sysinfo-l1-1-0.dll", "GetVersionExA") or pe.imports("api-ms-win-core-sysinfo-l1-2-1.dll", "GetVersionExA") or pe.imports("api-ms-win-core-sysinfo-l1-2-0.dll", "GetVersionExA")) and (not(pe.imports("kernel32.dll", "CloseHandle")) and not(pe.imports("api-ms-win-core-handle-l1-1-0.dll", "CloseHandle")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "CloseHandle")) and not(pe.imports("rtmpal.dll", "CloseHandle")) and not(pe.imports("kernelbase.dll", "CloseHandle"))) and (not(pe.imports("winmm.dll", "midiStreamRestart")) and not(pe.imports("api-ms-win-mm-mme-l1-1-0.dll", "midiStreamRestart"))))

}

rule rule_cluster_4
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose"))) and (pe.imports("kernel32.dll", "GetVersionExA") or pe.imports("api-ms-win-core-sysinfo-l1-1-0.dll", "GetVersionExA") or pe.imports("api-ms-win-core-sysinfo-l1-2-1.dll", "GetVersionExA") or pe.imports("api-ms-win-core-sysinfo-l1-2-0.dll", "GetVersionExA")) and (not(pe.imports("kernel32.dll", "CloseHandle")) and not(pe.imports("api-ms-win-core-handle-l1-1-0.dll", "CloseHandle")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "CloseHandle")) and not(pe.imports("rtmpal.dll", "CloseHandle")) and not(pe.imports("kernelbase.dll", "CloseHandle"))) and (not(pe.imports("winmm.dll", "midiStreamRestart")) and not(pe.imports("api-ms-win-mm-mme-l1-1-0.dll", "midiStreamRestart")))) or 
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose")) and (not(pe.imports("kernel32.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("rtmpal.dll", "WaitForSingleObject")) and not(pe.imports("kernelbase.dll", "WaitForSingleObject"))) and (pe.imports("kernel32.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetLocaleInfoW")) and (pe.imports("kernel32.dll", "GetLocaleInfoA") or pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetLocaleInfoA") or pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetLocaleInfoA")) and (pe.imports("kernel32.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA") or pe.imports("rtmpal.dll", "LoadLibraryA")))

}

rule rule_cluster_5
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose")) and (pe.imports("kernel32.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject") or pe.imports("rtmpal.dll", "WaitForSingleObject") or pe.imports("kernelbase.dll", "WaitForSingleObject")) and (not(pe.imports("user32.dll", "GetSysColorBrush"))) and (pe.imports("user32.dll", "SetWindowTextA")))

}

rule rule_cluster_6
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose"))) and (not(pe.imports("kernel32.dll", "GetVersionExA")) and not(pe.imports("api-ms-win-core-sysinfo-l1-1-0.dll", "GetVersionExA")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-1.dll", "GetVersionExA")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-0.dll", "GetVersionExA"))) and (not(pe.imports("kernel32.dll", "FlsFree")) and not(pe.imports("api-ms-win-core-fibers-l1-1-1.dll", "FlsFree"))) and (pe.imports("shlwapi.dll", "StrChrA") or pe.imports("shell32.dll", "StrChrA") or pe.imports("api-ms-win-core-shlwapi-obsolete-l1-2-0.dll", "StrChrA") or pe.imports("api-ms-win-downlevel-shlwapi-l1-1-0.dll", "StrChrA")))

}

rule rule_cluster_6
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose"))) and (not(pe.imports("kernel32.dll", "GetVersionExA")) and not(pe.imports("api-ms-win-core-sysinfo-l1-1-0.dll", "GetVersionExA")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-1.dll", "GetVersionExA")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-0.dll", "GetVersionExA"))) and (not(pe.imports("kernel32.dll", "FlsFree")) and not(pe.imports("api-ms-win-core-fibers-l1-1-1.dll", "FlsFree"))) and (pe.imports("shlwapi.dll", "StrChrA") or pe.imports("shell32.dll", "StrChrA") or pe.imports("api-ms-win-core-shlwapi-obsolete-l1-2-0.dll", "StrChrA") or pe.imports("api-ms-win-downlevel-shlwapi-l1-1-0.dll", "StrChrA"))) or 
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose")) and (not(pe.imports("kernel32.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("rtmpal.dll", "WaitForSingleObject")) and not(pe.imports("kernelbase.dll", "WaitForSingleObject"))) and (pe.imports("kernel32.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetLocaleInfoW")) and (not(pe.imports("kernel32.dll", "GetLocaleInfoA")) and not(pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetLocaleInfoA")) and not(pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetLocaleInfoA"))) and (pe.imports("gdi32.dll", "SelectClipRgn")))

}

rule rule_cluster_7
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentProcessId")) and not(pe.imports("kernelbase.dll", "GetCurrentProcessId")) and not(pe.imports("rtmpal.dll", "GetCurrentProcessId"))) and (pe.imports("kernel32.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA") or pe.imports("rtmpal.dll", "LoadLibraryA")) and (not(pe.imports("esent.dll", "JetRollback"))) and (pe.imports("comdlg32.dll", "FindTextW")))

}

rule rule_cluster_7
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentProcessId")) and not(pe.imports("kernelbase.dll", "GetCurrentProcessId")) and not(pe.imports("rtmpal.dll", "GetCurrentProcessId"))) and (pe.imports("kernel32.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA") or pe.imports("rtmpal.dll", "LoadLibraryA")) and (not(pe.imports("esent.dll", "JetRollback"))) and (pe.imports("comdlg32.dll", "FindTextW"))) or 
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose")) and (pe.imports("kernel32.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject") or pe.imports("rtmpal.dll", "WaitForSingleObject") or pe.imports("kernelbase.dll", "WaitForSingleObject")) and (pe.imports("user32.dll", "GetSysColorBrush")) and (pe.imports("shlwapi.dll", "StrRChrIW") or pe.imports("api-ms-win-core-shlwapi-obsolete-l1-2-0.dll", "StrRChrIW")))

}

rule rule_cluster_8
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentProcessId")) and not(pe.imports("kernelbase.dll", "GetCurrentProcessId")) and not(pe.imports("rtmpal.dll", "GetCurrentProcessId"))) and (not(pe.imports("kernel32.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA")) and not(pe.imports("rtmpal.dll", "LoadLibraryA"))) and (not(pe.imports("ntoskrnl.exe", "ExAllocatePoolWithTag"))) and (not(pe.imports("msvbvm60.dll", "_CIlog")) and not(pe.imports("msvcrt.dll", "_CIlog")) and not(pe.imports("msvcr120_clr0400.dll", "_CIlog"))) and (not(pe.imports("msvcrt.dll", "fopen")) and not(pe.imports("api-ms-win-crt-stdio-l1-1-0.dll", "fopen")) and not(pe.imports("msvcr120.dll", "fopen"))) and (not(pe.imports("storport.sys", "StorPortExtendedFunction"))) and (not(pe.imports("win32k.sys", "EngDeleteSurface")) and not(pe.imports("gdi32.dll", "EngDeleteSurface")) and not(pe.imports("win32kbase.sys", "EngDeleteSurface"))))

}

rule rule_cluster_9
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentProcessId")) and not(pe.imports("kernelbase.dll", "GetCurrentProcessId")) and not(pe.imports("rtmpal.dll", "GetCurrentProcessId"))) and (not(pe.imports("kernel32.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA")) and not(pe.imports("rtmpal.dll", "LoadLibraryA"))) and (not(pe.imports("ntoskrnl.exe", "ExAllocatePoolWithTag"))) and (not(pe.imports("msvbvm60.dll", "_CIlog")) and not(pe.imports("msvcrt.dll", "_CIlog")) and not(pe.imports("msvcr120_clr0400.dll", "_CIlog"))) and (pe.imports("msvcrt.dll", "fopen") or pe.imports("api-ms-win-crt-stdio-l1-1-0.dll", "fopen") or pe.imports("msvcr120.dll", "fopen")))

}

rule rule_cluster_10
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose"))) and (pe.imports("kernel32.dll", "GetVersionExA") or pe.imports("api-ms-win-core-sysinfo-l1-1-0.dll", "GetVersionExA") or pe.imports("api-ms-win-core-sysinfo-l1-2-1.dll", "GetVersionExA") or pe.imports("api-ms-win-core-sysinfo-l1-2-0.dll", "GetVersionExA")) and (not(pe.imports("kernel32.dll", "CloseHandle")) and not(pe.imports("api-ms-win-core-handle-l1-1-0.dll", "CloseHandle")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "CloseHandle")) and not(pe.imports("rtmpal.dll", "CloseHandle")) and not(pe.imports("kernelbase.dll", "CloseHandle"))) and (pe.imports("winmm.dll", "midiStreamRestart") or pe.imports("api-ms-win-mm-mme-l1-1-0.dll", "midiStreamRestart")))

}

rule rule_cluster_11
{


	condition:
		((not(pe.imports("kernel32.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess"))) and (not(pe.imports("kernel32.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "GetCurrentProcessId")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetCurrentProcessId")) and not(pe.imports("kernelbase.dll", "GetCurrentProcessId")) and not(pe.imports("rtmpal.dll", "GetCurrentProcessId"))) and (pe.imports("kernel32.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA") or pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA") or pe.imports("rtmpal.dll", "LoadLibraryA")) and (not(pe.imports("esent.dll", "JetRollback"))) and (not(pe.imports("comdlg32.dll", "FindTextW"))))

}

rule rule_cluster_13
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose")) and (pe.imports("kernel32.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject") or pe.imports("rtmpal.dll", "WaitForSingleObject") or pe.imports("kernelbase.dll", "WaitForSingleObject")) and (not(pe.imports("user32.dll", "GetSysColorBrush"))) and (not(pe.imports("user32.dll", "SetWindowTextA"))))

}

rule rule_cluster_14
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose"))) and (not(pe.imports("kernel32.dll", "GetVersionExA")) and not(pe.imports("api-ms-win-core-sysinfo-l1-1-0.dll", "GetVersionExA")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-1.dll", "GetVersionExA")) and not(pe.imports("api-ms-win-core-sysinfo-l1-2-0.dll", "GetVersionExA"))) and (pe.imports("kernel32.dll", "FlsFree") or pe.imports("api-ms-win-core-fibers-l1-1-1.dll", "FlsFree")))

}

rule rule_cluster_15
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose"))) and (pe.imports("kernel32.dll", "GetVersionExA") or pe.imports("api-ms-win-core-sysinfo-l1-1-0.dll", "GetVersionExA") or pe.imports("api-ms-win-core-sysinfo-l1-2-1.dll", "GetVersionExA") or pe.imports("api-ms-win-core-sysinfo-l1-2-0.dll", "GetVersionExA")) and (pe.imports("kernel32.dll", "CloseHandle") or pe.imports("api-ms-win-core-handle-l1-1-0.dll", "CloseHandle") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "CloseHandle") or pe.imports("rtmpal.dll", "CloseHandle") or pe.imports("kernelbase.dll", "CloseHandle")) and (not(pe.imports("user32.dll", "CharUpperBuffW")) and not(pe.imports("api-ms-win-core-string-l2-1-0.dll", "CharUpperBuffW")) and not(pe.imports("api-ms-win-downlevel-user32-l1-1-1.dll", "CharUpperBuffW"))))

}

rule rule_cluster_15
{


	condition:
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (not(pe.imports("kernel32.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose")) and not(pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose"))) and (pe.imports("kernel32.dll", "GetVersionExA") or pe.imports("api-ms-win-core-sysinfo-l1-1-0.dll", "GetVersionExA") or pe.imports("api-ms-win-core-sysinfo-l1-2-1.dll", "GetVersionExA") or pe.imports("api-ms-win-core-sysinfo-l1-2-0.dll", "GetVersionExA")) and (pe.imports("kernel32.dll", "CloseHandle") or pe.imports("api-ms-win-core-handle-l1-1-0.dll", "CloseHandle") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "CloseHandle") or pe.imports("rtmpal.dll", "CloseHandle") or pe.imports("kernelbase.dll", "CloseHandle")) and (not(pe.imports("user32.dll", "CharUpperBuffW")) and not(pe.imports("api-ms-win-core-string-l2-1-0.dll", "CharUpperBuffW")) and not(pe.imports("api-ms-win-downlevel-user32-l1-1-1.dll", "CharUpperBuffW")))) or 
		((pe.imports("kernel32.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-2.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-1.dll", "ExitProcess") or pe.imports("api-ms-win-core-processthreads-l1-1-0.dll", "ExitProcess") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "ExitProcess")) and (pe.imports("kernel32.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-1.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "FindClose") or pe.imports("api-ms-win-core-file-l1-2-0.dll", "FindClose")) and (not(pe.imports("kernel32.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-2-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-core-synch-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "WaitForSingleObject")) and not(pe.imports("rtmpal.dll", "WaitForSingleObject")) and not(pe.imports("kernelbase.dll", "WaitForSingleObject"))) and (pe.imports("kernel32.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetLocaleInfoW") or pe.imports("api-ms-win-downlevel-kernel32-l1-1-0.dll", "GetLocaleInfoW")) and (pe.imports("kernel32.dll", "GetLocaleInfoA") or pe.imports("api-ms-win-core-localization-l1-2-1.dll", "GetLocaleInfoA") or pe.imports("api-ms-win-core-localization-l1-2-0.dll", "GetLocaleInfoA")) and (not(pe.imports("kernel32.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-2.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-kernel32-legacy-l1-1-0.dll", "LoadLibraryA")) and not(pe.imports("api-ms-win-core-libraryloader-l1-2-1.dll", "LoadLibraryA")) and not(pe.imports("rtmpal.dll", "LoadLibraryA"))))

}
