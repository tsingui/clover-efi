/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLrjCfSe.aml, Fri Aug 10 22:17:48 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000186 (390)
 *     Revision         0x02
 *     Checksum         0xD3
 *     OEM ID           "hack"
 *     OEM Table ID     "_LPC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_LPC", 0x00000000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0.LPCB)
    {
        OperationRegion (RMP0, PCI_Config, 0x02, 0x02)
        Field (RMP0, AnyAcc, NoLock, Preserve)
        {
            LDID,   16
        }

        Name (LPDL, Package (0x19)
        {
            0x1E49, 
            Zero, 
            Package (0x04)
            {
                "device-id", 
                Buffer (0x04)
                {
                     0x42, 0x1E, 0x00, 0x00                         
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,1e42"
                }
            }, 

            0x8C46, 
            0x8C49, 
            0x8C4A, 
            0x8C4C, 
            0x8C4E, 
            0x8C4F, 
            0x8C50, 
            0x8C52, 
            0x8C54, 
            0x8C56, 
            0x8C5C, 
            0x8CC3, 
            Zero, 
            Package (0x04)
            {
                "device-id", 
                Buffer (0x04)
                {
                     0x4B, 0x8C, 0x00, 0x00                         
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,8c4b"
                }
            }, 

            0x8CC6, 
            0x9D48, 
            0x9D58, 
            0xA14E, 
            0xA154, 
            0xA2C5, 
            Zero, 
            Package (0x04)
            {
                "device-id", 
                Buffer (0x04)
                {
                     0xC1, 0x9C, 0x00, 0x00                         
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,9cc1"
                }
            }
        })
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LNot (Arg2))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Store (Match (LPDL, MEQ, ^LDID, MTR, Zero, Zero), Local0)
            If (LNotEqual (Ones, Local0))
            {
                Store (Match (LPDL, MEQ, Zero, MTR, Zero, Add (Local0, One)), Local0)
                Return (DerefOf (Index (LPDL, Add (Local0, One))))
            }

            Return (Package (0x00){})
        }
    }
}

