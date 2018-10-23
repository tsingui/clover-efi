/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20170929 (64-bit version)(RM)
 * Copyright (c) 2000 - 2017 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASL4vHdaX.aml, Sat Nov 11 07:07:44 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000003D (61)
 *     Revision         0x02
 *     Checksum         0x17
 *     OEM ID           "hack"
 *     OEM Table ID     "THDR"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20170929 (538380585)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "THDR", 0x00000000)
{
    Scope (\_GPE)
    {
        Method (_L6F, 2, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LEqual (Arg0, Arg1))
            {
                Return (Zero)
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}

