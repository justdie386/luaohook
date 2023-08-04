{
    files = {
        [[src\mouse.c]]
    },
    values = {
        [[C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.36.32532\bin\HostX64\x64\cl.exe]],
        {
            "-nologo",
            [[-IC:\lua\luajit\include]],
            "-O2",
            "-fp:fast",
            "/EHsc",
            "-external:W0",
            [[-external:IC:\Users\justi\AppData\Local\.xmake\packages\l\luajit\2.1.0-beta3\13e6f4a6b257413e98184c57fe7c168b\include\luajit]],
            "-external:W0",
            [[-external:IC:\Users\justi\AppData\Local\.xmake\packages\l\libuiohook\1.2.2\cafd076020034bb5bf8455b8c8407c4a\include]],
            "-DNDEBUG"
        }
    },
    depfiles_cl_json = "{\
    \"Version\": \"1.2\",\
    \"Data\": {\
        \"Source\": \"c:\\\\users\\\\justi\\\\desktop\\\\luaohook\\\\src\\\\mouse.c\",\
        \"ProvidedModule\": \"\",\
        \"Includes\": [\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\windows.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\winapifamily.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\winpackagefamily.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\sdkddkver.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\excpt.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\vcruntime.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\sal.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\concurrencysal.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\vadefs.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\stdarg.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\windef.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\minwindef.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\specstrings.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\specstrings_strict.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\specstrings_undef.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\driverspecs.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\sdv_driverspecs.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\winnt.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\ctype.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wctype.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\kernelspecs.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\basetsd.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\guiddef.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\string.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_memory.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_memcpy_s.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\errno.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\vcruntime_string.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wstring.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack4.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack4.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack4.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack2.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack2.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack2.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack8.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack1.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack1.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\apiset.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\ktmtypes.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\winbase.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\apisetcconv.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\minwinbase.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\apiquery2.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\processenv.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\fileapifromapp.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\fileapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\debugapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\utilapiset.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\handleapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\errhandlingapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\fibersapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\namedpipeapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\profileapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\heapapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\ioapiset.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\synchapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\interlockedapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\processthreadsapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\sysinfoapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\memoryapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\enclaveapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\threadpoollegacyapiset.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\threadpoolapiset.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\jobapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\jobapi2.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\wow64apiset.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\libloaderapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\securitybaseapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\namespaceapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\systemtopologyapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\processtopologyapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\securityappcontainer.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\realtimeapiset.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\winerror.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\timezoneapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\wingdi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack1.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack2.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack2.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack4.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack4.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\winuser.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack2.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\tvout.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\winnls.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\datetimeapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\stringapiset.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\winnls.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\wincon.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\wincontypes.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\consoleapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\consoleapi2.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\consoleapi3.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\winver.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\verrsrc.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\winreg.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\reason.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\winnetwk.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\wnnc.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\cderr.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\dde.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\ddeml.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\dlgs.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\lzexpand.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\mmsystem.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\mmsyscom.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack1.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack1.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\mciapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\mmsyscom.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\mmiscapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\mmsyscom.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\mmiscapi2.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\mmsyscom.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\playsoundapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\mmsyscom.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\mmeapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\mmsyscom.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\timeapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\mmsyscom.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\joystickapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\mmsyscom.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\nb30.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\rpc.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack8.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\rpcdce.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\rpcdcep.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\rpcnsi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\rpcnterr.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\rpcasync.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack8.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\shellapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\winperf.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack8.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\winsock.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\inaddr.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\wincrypt.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\bcrypt.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\ncrypt.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\dpapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\winefs.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\winscard.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\wtypes.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\rpcndr.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack8.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\rpcnsip.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\rpcsal.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\wtypesbase.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\guiddef.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\winioctl.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack1.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack1.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack1.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack1.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack1.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack1.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack1.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\winsmcrd.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\winspool.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\prsht.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack8.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\ole2.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack8.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\objbase.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack8.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\combaseapi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack8.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\stdlib.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_malloc.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_search.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\stddef.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wstdlib.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\limits.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\unknwnbase.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\objidlbase.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\guiddef.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\cguid.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\coml2api.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\objidl.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\unknwn.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\propidlbase.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\oaidl.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\urlmon.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\oleidl.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\servprov.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\msxml.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\propidl.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\oleauto.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\pshpack8.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\poppack.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\commdlg.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\prsht.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\shared\\\\stralign.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\winsvc.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\mcx.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\imm.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\um\\\\ime_cmodes.h\",\
            \"c:\\\\users\\\\justi\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\l\\\\luajit\\\\2.1.0-beta3\\\\13e6f4a6b257413e98184c57fe7c168b\\\\include\\\\luajit\\\\lauxlib.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\stdio.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_wstdio.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22000.0\\\\ucrt\\\\corecrt_stdio_config.h\",\
            \"c:\\\\users\\\\justi\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\l\\\\luajit\\\\2.1.0-beta3\\\\13e6f4a6b257413e98184c57fe7c168b\\\\include\\\\luajit\\\\lua.h\",\
            \"c:\\\\users\\\\justi\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\l\\\\luajit\\\\2.1.0-beta3\\\\13e6f4a6b257413e98184c57fe7c168b\\\\include\\\\luajit\\\\luaconf.h\",\
            \"c:\\\\lua\\\\luajit\\\\include\\\\lua.h\",\
            \"c:\\\\users\\\\justi\\\\appdata\\\\local\\\\.xmake\\\\packages\\\\l\\\\libuiohook\\\\1.2.2\\\\cafd076020034bb5bf8455b8c8407c4a\\\\include\\\\uiohook.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\stdbool.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.36.32532\\\\include\\\\stdint.h\"\
        ]\
    }\
}"
}