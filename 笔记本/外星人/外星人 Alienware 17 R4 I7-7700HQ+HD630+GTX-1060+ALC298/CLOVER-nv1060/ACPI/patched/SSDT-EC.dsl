/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20170929 (64-bit version)(RM)
 * Copyright (c) 2000 - 2017 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASL2vRUDn.aml, Tue Nov 14 11:26:47 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000004C (76)
 *     Revision         0x02
 *     Checksum         0x7A
 *     OEM ID           "hack"
 *     OEM Table ID     "MCHC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20170929 (538380585)
 */
// Inject Fake EC device
DefinitionBlock("", "SSDT", 2, "hack", "EC", 0)
{
    Device(_SB.EC)
    {
        Name(_HID, "EC000000")
    }
}
//EOF
