/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20170929 (64-bit version)(RM)
 * Copyright (c) 2000 - 2017 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLMuweCa.aml, Wed Nov 22 11:42:04 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000012D (301)
 *     Revision         0x01
 *     Checksum         0x1E
 *     OEM ID           "APPLE "
 *     OEM Table ID     "DefMon"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20170929 (538380585)
 */
DefinitionBlock ("", "SSDT", 1, "APPLE ", "DefMon", 0x00003000)
{
    External (_SB_.PCI0.LPCB.EC__.ECRM, MethodObj)    // 1 Arguments (from opcode)

    Device (_SB.PCI0.LPCB.MON0)
    {
        Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
        Name (_CID, "MON00000")  // _CID: Compatible ID
        Name (TACH, Package (0x12)
        {
            "System Fan 0", 
            "FAN0", 
            "Fan 1 Temp", 
            "FAN6", 
            "Fan 2 Temp", 
            "FAN7", 
            "B0D4", 
            "FAN8", 
            "AR and PD", 
            "FAN9", 
            "Skin 1", 
            "FANA", 
            "Skin 2", 
            "FANB", 
            "SSD", 
            "FANC", 
            "RAM", 
            "FAND"
        })
        Method (FAN0, 0, NotSerialized)
        {
            Store (\_SB.PCI0.LPCB.EC.ECRM (0x02), Local0)
            Return (Add (0x07D0, Multiply (Local0, 0x0A)))
        }
    }
}

