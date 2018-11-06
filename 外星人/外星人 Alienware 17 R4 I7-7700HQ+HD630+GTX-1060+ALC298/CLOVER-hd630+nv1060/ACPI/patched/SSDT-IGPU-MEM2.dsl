/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLkxUyaj.aml, Thu Aug  2 13:14:25 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000083 (131)
 *     Revision         0x02
 *     Checksum         0x23
 *     OEM ID           "hack"
 *     OEM Table ID     "MEM2"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20170929 (538380585)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "MEM2", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0)
    {
        Device (MEM2)
        {
            Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_STA, 0x0F)  // _STA: Status
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x20000000,         // Address Base
                    0x00200000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x40000000,         // Address Base
                    0x00200000,         // Address Length
                    )
            })
        }
    }
}

