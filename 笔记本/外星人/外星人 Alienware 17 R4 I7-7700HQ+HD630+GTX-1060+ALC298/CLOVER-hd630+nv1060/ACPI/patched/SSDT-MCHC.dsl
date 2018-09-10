/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLHFvzBw.aml, Fri Aug 10 19:23:54 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000004C (76)
 *     Revision         0x02
 *     Checksum         0x8B
 *     OEM ID           "hack"
 *     OEM Table ID     "MCHC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20171110 (538382608)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "MCHC", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0)
    {
        Device (MCHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }
    }
}

