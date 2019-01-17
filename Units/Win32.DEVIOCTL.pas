unit Win32.DEVIOCTL;

(*++ BUILD Version: 0004    // Increment this if a change has global effects

Copyright (c) 1992-1999  Microsoft Corporation

Module Name:

    devioctl.h

Abstract:

    This module contains


Revision History:


--*)


{$mode delphi}

interface

uses
    Windows, Classes, SysUtils;

const

    // Define the various device type values.  Note that values used by Microsoft
    // Corporation are in the range 0-32767, and 32768-65535 are reserved for use
    // by customers.
    FILE_DEVICE_BEEP = $00000001;
    FILE_DEVICE_CD_ROM = $00000002;
    FILE_DEVICE_CD_ROM_FILE_SYSTEM = $00000003;
    FILE_DEVICE_CONTROLLER = $00000004;
    FILE_DEVICE_DATALINK = $00000005;
    FILE_DEVICE_DFS = $00000006;
    FILE_DEVICE_DISK = $00000007;
    FILE_DEVICE_DISK_FILE_SYSTEM = $00000008;
    FILE_DEVICE_FILE_SYSTEM = $00000009;
    FILE_DEVICE_INPORT_PORT = $0000000a;
    FILE_DEVICE_KEYBOARD = $0000000b;
    FILE_DEVICE_MAILSLOT = $0000000c;
    FILE_DEVICE_MIDI_IN = $0000000d;
    FILE_DEVICE_MIDI_OUT = $0000000e;
    FILE_DEVICE_MOUSE = $0000000f;
    FILE_DEVICE_MULTI_UNC_PROVIDER = $00000010;
    FILE_DEVICE_NAMED_PIPE = $00000011;
    FILE_DEVICE_NETWORK = $00000012;
    FILE_DEVICE_NETWORK_BROWSER = $00000013;
    FILE_DEVICE_NETWORK_FILE_SYSTEM = $00000014;
    FILE_DEVICE_NULL = $00000015;
    FILE_DEVICE_PARALLEL_PORT = $00000016;
    FILE_DEVICE_PHYSICAL_NETCARD = $00000017;
    FILE_DEVICE_PRINTER = $00000018;
    FILE_DEVICE_SCANNER = $00000019;
    FILE_DEVICE_SERIAL_MOUSE_PORT = $0000001a;
    FILE_DEVICE_SERIAL_PORT = $0000001b;
    FILE_DEVICE_SCREEN = $0000001c;
    FILE_DEVICE_SOUND = $0000001d;
    FILE_DEVICE_STREAMS = $0000001e;
    FILE_DEVICE_TAPE = $0000001f;
    FILE_DEVICE_TAPE_FILE_SYSTEM = $00000020;
    FILE_DEVICE_TRANSPORT = $00000021;
    FILE_DEVICE_UNKNOWN = $00000022;
    FILE_DEVICE_VIDEO = $00000023;
    FILE_DEVICE_VIRTUAL_DISK = $00000024;
    FILE_DEVICE_WAVE_IN = $00000025;
    FILE_DEVICE_WAVE_OUT = $00000026;
    FILE_DEVICE_8042_PORT = $00000027;
    FILE_DEVICE_NETWORK_REDIRECTOR = $00000028;
    FILE_DEVICE_BATTERY = $00000029;
    FILE_DEVICE_BUS_EXTENDER = $0000002a;
    FILE_DEVICE_MODEM = $0000002b;
    FILE_DEVICE_VDM = $0000002c;
    FILE_DEVICE_MASS_STORAGE = $0000002d;
    FILE_DEVICE_SMB = $0000002e;
    FILE_DEVICE_KS = $0000002f;
    FILE_DEVICE_CHANGER = $00000030;
    FILE_DEVICE_SMARTCARD = $00000031;
    FILE_DEVICE_ACPI = $00000032;
    FILE_DEVICE_DVD = $00000033;
    FILE_DEVICE_FULLSCREEN_VIDEO = $00000034;
    FILE_DEVICE_DFS_FILE_SYSTEM = $00000035;
    FILE_DEVICE_DFS_VOLUME = $00000036;
    FILE_DEVICE_SERENUM = $00000037;
    FILE_DEVICE_TERMSRV = $00000038;
    FILE_DEVICE_KSEC = $00000039;
    FILE_DEVICE_FIPS = $0000003A;
    FILE_DEVICE_INFINIBAND = $0000003B;
    FILE_DEVICE_VMBUS = $0000003E;
    FILE_DEVICE_CRYPT_PROVIDER = $0000003F;
    FILE_DEVICE_WPD = $00000040;
    FILE_DEVICE_BLUETOOTH = $00000041;
    FILE_DEVICE_MT_COMPOSITE = $00000042;
    FILE_DEVICE_MT_TRANSPORT = $00000043;
    FILE_DEVICE_BIOMETRIC = $00000044;
    FILE_DEVICE_PMI = $00000045;
    FILE_DEVICE_EHSTOR = $00000046;
    FILE_DEVICE_DEVAPI = $00000047;
    FILE_DEVICE_GPIO = $00000048;
    FILE_DEVICE_USBEX = $00000049;
    FILE_DEVICE_CONSOLE = $00000050;
    FILE_DEVICE_NFP = $00000051;
    FILE_DEVICE_SYSENV = $00000052;
    FILE_DEVICE_VIRTUAL_BLOCK = $00000053;
    FILE_DEVICE_POINT_OF_SERVICE = $00000054;
    FILE_DEVICE_STORAGE_REPLICATION = $00000055;
    FILE_DEVICE_TRUST_ENV = $00000056;
    FILE_DEVICE_UCM = $00000057;
    FILE_DEVICE_UCMTCPCI = $00000058;
    FILE_DEVICE_PERSISTENT_MEMORY = $00000059;
    FILE_DEVICE_NVDIMM = $0000005a;
    FILE_DEVICE_HOLOGRAPHIC = $0000005b;
    FILE_DEVICE_SDFXHCI = $0000005c;
    FILE_DEVICE_UCMUCSI = $0000005d;



    // Define the method codes for how buffers are passed for I/O and FS controls


    METHOD_BUFFERED = 0;
    METHOD_IN_DIRECT = 1;
    METHOD_OUT_DIRECT = 2;
    METHOD_NEITHER = 3;


    // Define some easier to comprehend aliases:
    //   METHOD_DIRECT_TO_HARDWARE (writes, aka METHOD_IN_DIRECT)
    //   METHOD_DIRECT_FROM_HARDWARE (reads, aka METHOD_OUT_DIRECT)


    METHOD_DIRECT_TO_HARDWARE = METHOD_IN_DIRECT;
    METHOD_DIRECT_FROM_HARDWARE = METHOD_OUT_DIRECT;


    // Define the access check value for any access


    // The FILE_READ_ACCESS and FILE_WRITE_ACCESS constants are also defined in
    // ntioapi.h as FILE_READ_DATA and FILE_WRITE_DATA. The values for these
    // constants *MUST* always be in sync.


    // FILE_SPECIAL_ACCESS is checked by the NT I/O system the same as FILE_ANY_ACCESS.
    // The file systems, however, may add additional access checks for I/O and FS controls
    // that use this value.



    FILE_ANY_ACCESS = 0;
    FILE_SPECIAL_ACCESS = (FILE_ANY_ACCESS);
    FILE_READ_ACCESS = ($0001);    // file & pipe
    FILE_WRITE_ACCESS = ($0002);    // file & pipe


type
    TDEVICE_TYPE = ULONG;

implementation

end.