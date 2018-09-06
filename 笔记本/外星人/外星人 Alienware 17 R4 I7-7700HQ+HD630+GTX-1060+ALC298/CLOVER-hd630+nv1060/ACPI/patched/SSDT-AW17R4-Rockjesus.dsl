/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLtmKdrK.aml, Tue Aug 14 18:04:00 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000019E4 (6628)
 *     Revision         0x02
 *     Checksum         0x29
 *     OEM ID           "hack"
 *     OEM Table ID     "AW17-RJ"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "AW17-RJ", 0x00000000)
{
    External (_PR_.CPU0, DeviceObj)    // (from opcode)
    External (_SB_.GGOV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.DPCH, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HDAU, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HDEF, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.I2C0.DFUD, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IGPU, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IMEI, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.MCHC, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.GFX0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG1.EGPU, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.TBLT, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PMCR, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP05.ENET, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP06.ARPT, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP09.NVME, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SATA, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SBUS, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS04, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS05, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS07, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS08, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS04, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.USR1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.USR2, DeviceObj)    // (from opcode)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments (from opcode)
    External (GPBS, UnknownObj)    // (from opcode)
    External (RMCF.BKLT, IntObj)    // (from opcode)
    External (RMCF.FBTP, IntObj)    // (from opcode)
    External (RMCF.GRAN, IntObj)    // (from opcode)
    External (RMCF.LEVW, IntObj)    // (from opcode)
    External (RMCF.LMAX, IntObj)    // (from opcode)
    External (SDS0, UnknownObj)    // (from opcode)
    External (SHAP, UnknownObj)    // (from opcode)
    External (SPTH, UnknownObj)    // (from opcode)
    External (USBH, UnknownObj)    // (from opcode)

    Scope (_SB.PCI0)
    {
        Device (MCHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }

        Device (DPCH)
        {
            Name (_ADR, 0x00140002)  // _ADR: Address
        }
    }

    Device (_SB.EC)
    {
        Name (_HID, "EC000000")  // _HID: Hardware ID
    }

    Device (_SB.USBX)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LNot (Arg2))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x04)
            {
                "kUSBSleepPortCurrentLimit", 
                0x0BB8, 
                "kUSBWakePortCurrentLimit", 
                0x0BB8
            })
        }
    }

    Method (_PR.CPU0._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LNot (Arg2))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x02)
        {
            "plugin-type", 
            One
        })
    }

    Scope (\)
    {
        Device (SHAD)
        {
            Name (_HID, EisaId ("INT33D0"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (LOr (And (SDS0, One), And (USBH, One)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (XDSM, 4, Serialized)
            {
                Name (PGCE, Zero)
                Name (PGCD, Zero)
                Name (PGCG, 0x2E)
                Name (DFUE, Zero)
                Name (DFUD, Zero)
                Name (OLDV, Zero)
                Name (PGCV, Zero)
                Name (DFUV, Zero)
                If (LEqual (Arg0, ToUUID ("03c868d5-563f-42a8-9f57-9a18d949b7cb")))
                {
                    If (LEqual (SHAP, One))
                    {
                        Store (0x3A, PGCG)
                    }

                    If (LGreaterEqual (ToInteger (Arg1), One))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Return (Buffer (One)
                                {
                                     0x0F                                           
                                })
                            }
                            Case (One)
                            {
                                Store (DerefOf (Index (Arg3, Zero)), PGCE)
                                Store (DerefOf (Index (Arg3, One)), PGCD)
                                Store (\_SB.GGOV (0x02010016), OLDV)
                                \_SB.SGOV (0x02010016, PGCE)
                                If (LGreater (PGCD, Zero))
                                {
                                    Sleep (PGCD)
                                    \_SB.GGOV (0x02010016)
                                }

                                If (LEqual (\_SB.GGOV (0x02010016), One))
                                {
                                    Sleep (0x96)
                                    If (LEqual (\_SB.GGOV (0x02010014), One)){}
                                    Else
                                    {
                                        Notify (\_SB.PCI0.I2C0.DFUD, One)
                                    }
                                }

                                Return (Zero)
                            }
                            Case (0x02)
                            {
                                Store (DerefOf (Index (Arg3, Zero)), DFUE)
                                Store (DerefOf (Index (Arg3, One)), DFUD)
                                Store (\_SB.GGOV (0x02010014), OLDV)
                                \_SB.GGOV (0x02010014)
                                If (LGreater (DFUD, Zero))
                                {
                                    Sleep (DFUD)
                                    \_SB.GGOV (0x02010014)
                                }

                                Return (Zero)
                            }
                            Case (0x03)
                            {
                                Store (\_SB.GGOV (0x02010014), DFUV)
                                Store (\_SB.GGOV (0x02010016), PGCV)
                                Return (Package (0x02)
                                {
                                    PGCV, 
                                    DFUV
                                })
                            }

                        }

                        Return (Zero)
                    }

                    Return (Zero)
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }
        }
    }

    Method (XOSI, 1, NotSerialized)
    {
        Store (Package (0x08)
            {
                "Windows", 
                "Windows 2001", 
                "Windows 2001 SP2", 
                "Windows 2006", 
                "Windows 2006 SP1", 
                "Windows 2006.1", 
                "Windows 2009", 
                "Windows 2012"
            }, Local0)
        Return (LNotEqual (Ones, Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
    }

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

            Return (Zero)
        }
    }

    Device (_SB.PCI0.SBUS.BUS0)
    {
        Name (_CID, "smbus")  // _CID: Compatible ID
        Name (_ADR, Zero)  // _ADR: Address
        Device (DVL0)
        {
            Name (_ADR, 0x57)  // _ADR: Address
            Name (_CID, "diagsvault")  // _CID: Compatible ID
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x02)
                {
                    "address", 
                    0x57
                })
            }
        }
    }

    Name (_SB.PCI0.HDEF.RMCF, Package (0x02)
    {
        "CodecCommander", 
        Package (0x08)
        {
            "Custom Commands", 
            Package (0x04)
            {
                Package (0x00){}, 
                Package (0x08)
                {
                    "Command", 
                    Buffer (0x04)
                    {
                         0x01, 0xA7, 0x07, 0x20                         
                    }, 

                    "On Init", 
                    ">y", 
                    "On Sleep", 
                    ">n", 
                    "On Wake", 
                    ">y"
                }, 

                Package (0x08)
                {
                    "Command", 
                    Buffer (0x04)
                    {
                         0x02, 0x17, 0x08, 0x83                         
                    }, 

                    "On Init", 
                    ">y", 
                    "On Sleep", 
                    ">n", 
                    "On Wake", 
                    ">y"
                }, 

                Package (0x08)
                {
                    "Command", 
                    Buffer (0x04)
                    {
                         0x01, 0x74, 0x00, 0x33                         
                    }, 

                    "On Init", 
                    ">y", 
                    "On Sleep", 
                    ">n", 
                    "On Wake", 
                    ">y"
                }
            }, 

            "Perform Reset", 
            ">y", 
            "Send Delay", 
            0x0A, 
            "Sleep Nodes", 
            ">n"
        }
    })
    Device (_SB.ALS0)
    {
        Name (_HID, "ACPI0008")  // _HID: Hardware ID
        Name (_CID, "smc-als")  // _CID: Compatible ID
        Name (_ALI, 0x012C)  // _ALI: Ambient Light Illuminance
        Name (_ALR, Package (0x01)  // _ALR: Ambient Light Response
        {
            Package (0x02)
            {
                0x64, 
                0x012C
            }
        })
    }

    Scope (_SB.PCI0.IGPU)
    {
        OperationRegion (RMP3, PCI_Config, Zero, 0x14)
    }

    Device (_SB.PCI0.IGPU.PNLF)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
        Name (_CID, "backlight")  // _CID: Compatible ID
        Name (_UID, Zero)  // _UID: Unique ID
        Name (_STA, 0x0B)  // _STA: Status
        Field (^RMP3, AnyAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            GDID,   16, 
            Offset (0x10), 
            BAR1,   32
        }

        OperationRegion (RMB1, SystemMemory, And (BAR1, 0xFFFFFFFFFFFFFFF0), 0x000E1184)
        Field (RMB1, AnyAcc, Lock, Preserve)
        {
            Offset (0x48250), 
            LEV2,   32, 
            LEVL,   32, 
            Offset (0x70040), 
            P0BL,   32, 
            Offset (0xC2000), 
            GRAN,   32, 
            Offset (0xC8250), 
            LEVW,   32, 
            LEVX,   32, 
            Offset (0xE1180), 
            PCHL,   32
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (One, Local4)
            If (CondRefOf (\RMCF.BKLT))
            {
                Store (\RMCF.BKLT, Local4)
            }

            If (LEqual (Zero, And (One, Local4)))
            {
                Return (Zero)
            }

            Store (^GDID, Local0)
            Store (Ones, Local2)
            If (CondRefOf (\RMCF.LMAX))
            {
                Store (\RMCF.LMAX, Local2)
            }

            Store (Zero, Local3)
            If (CondRefOf (\RMCF.FBTP))
            {
                Store (\RMCF.FBTP, Local3)
            }

            If (LEqual (Zero, Local3))
            {
                If (LNotEqual (Ones, Match (Package (0x10)
                                {
                                    0x010B, 
                                    0x0102, 
                                    0x0106, 
                                    0x1106, 
                                    0x1601, 
                                    0x0116, 
                                    0x0126, 
                                    0x0112, 
                                    0x0122, 
                                    0x0152, 
                                    0x0156, 
                                    0x0162, 
                                    0x0166, 
                                    0x016A, 
                                    0x46, 
                                    0x42
                                }, MEQ, Local0, MTR, Zero, Zero)))
                {
                    Store (One, Local3)
                }
                Else
                {
                    Store (0x02, Local3)
                }
            }

            If (LEqual (One, Local3))
            {
                If (LEqual (Ones, Local2))
                {
                    Store (0x0710, Local2)
                }

                ShiftRight (^LEVX, 0x10, Local1)
                If (LNot (Local1))
                {
                    Store (Local2, Local1)
                }

                If (LNotEqual (Local2, Local1))
                {
                    Divide (Multiply (^LEVL, Local2), Local1, , Local0)
                    ShiftLeft (Local2, 0x10, Local3)
                    If (LGreater (Local2, Local1))
                    {
                        Store (Local3, ^LEVX)
                        Store (Local0, ^LEVL)
                    }
                    Else
                    {
                        Store (Local0, ^LEVL)
                        Store (Local3, ^LEVX)
                    }
                }
            }
            ElseIf (LEqual (0x02, Local3))
            {
                If (LEqual (Ones, Local2))
                {
                    If (LNotEqual (Ones, Match (Package (0x16)
                                    {
                                        0x0D26, 
                                        0x0A26, 
                                        0x0D22, 
                                        0x0412, 
                                        0x0416, 
                                        0x0A16, 
                                        0x0A1E, 
                                        0x0A1E, 
                                        0x0A2E, 
                                        0x041E, 
                                        0x041A, 
                                        0x0BD1, 
                                        0x0BD2, 
                                        0x0BD3, 
                                        0x1606, 
                                        0x160E, 
                                        0x1616, 
                                        0x161E, 
                                        0x1626, 
                                        0x1622, 
                                        0x1612, 
                                        0x162B
                                    }, MEQ, Local0, MTR, Zero, Zero)))
                    {
                        Store (0x0AD9, Local2)
                    }
                    Else
                    {
                        Store (0x056C, Local2)
                    }
                }

                If (LEqual (Zero, And (0x02, Local4)))
                {
                    Store (0xC0000000, Local5)
                    If (CondRefOf (\RMCF.LEVW))
                    {
                        If (LNotEqual (Ones, \RMCF.LEVW))
                        {
                            Store (\RMCF.LEVW, Local5)
                        }
                    }

                    Store (Local5, ^LEVW)
                }

                If (And (0x04, Local4))
                {
                    If (CondRefOf (\RMCF.GRAN))
                    {
                        Store (\RMCF.GRAN, ^GRAN)
                    }
                    Else
                    {
                        Store (Zero, ^GRAN)
                    }
                }

                ShiftRight (^LEVX, 0x10, Local1)
                If (LNot (Local1))
                {
                    Store (Local2, Local1)
                }

                If (LNotEqual (Local2, Local1))
                {
                    Or (Divide (Multiply (And (^LEVX, 0xFFFF), Local2), Local1, ), ShiftLeft (Local2, 0x10), Local0)
                    Store (Local0, ^LEVX)
                }
            }

            If (LEqual (Local2, 0x0710))
            {
                Store (0x0E, _UID)
            }
            ElseIf (LEqual (Local2, 0x0AD9))
            {
                Store (0x0F, _UID)
            }
            ElseIf (LEqual (Local2, 0x056C))
            {
                Store (0x10, _UID)
            }
            ElseIf (LEqual (Local2, 0x07A1))
            {
                Store (0x11, _UID)
            }
            ElseIf (LEqual (Local2, 0x1499))
            {
                Store (0x12, _UID)
            }
            Else
            {
                Store (0x63, _UID)
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB)
    {
        Method (GPLD, 2, Serialized)
        {
            Name (PCKG, Package (0x01)
            {
                Buffer (0x10){}
            })
            CreateField (DerefOf (Index (PCKG, Zero)), Zero, 0x07, REV)
            Store (One, REV)
            CreateField (DerefOf (Index (PCKG, Zero)), 0x40, One, VISI)
            Store (Arg0, VISI)
            CreateField (DerefOf (Index (PCKG, Zero)), 0x57, 0x08, GPOS)
            Store (Arg1, GPOS)
            Return (PCKG)
        }

        Method (GUPC, 1, Serialized)
        {
            Name (PCKG, Package (0x04)
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
            Store (Arg0, Index (PCKG, Zero))
            Return (PCKG)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, One))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS02)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x02))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x04))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS05)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x05))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS07)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, 0x07))
        }

        Device (WCAM)
        {
            Name (_ADR, 0x07)  // _ADR: Address
            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Name (PLDP, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0008 */  0x24, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0010 */  0xC8, 0x00, 0xA0, 0x00                         
                    }
                })
                Return (PLDP)
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS08)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            One, 
            0x0A, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x08))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.USR1)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.USR2)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, One))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS02)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            One, 
            0x0A, 
            Zero, 
            Zero
        })
        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x08))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x02))
        }
    }

    Scope (_SB.PCI0.PEG2.TBLT)
    {
        Device (TBL0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (NHI0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg2, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }

                    Return (Package (0x06)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x0E)
                        {
                            "PCI-Express@1"
                        }, 

                        "device_type", 
                        Buffer (0x15)
                        {
                            "Thunderbolt Ethernet"
                        }, 

                        "model", 
                        Buffer (0x29)
                        {
                            "Thunderbolt 3 JHL6340 Ethernet Controler"
                        }
                    })
                }
            }
        }

        Device (TBL1)
        {
            Name (_ADR, 0x00010000)  // _ADR: Address
            Device (TBDP)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }
        }

        Device (TBL2)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Device (TBLU)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (LEqual (Arg2, Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }

                    Return (Package (0x06)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x0E)
                        {
                            "PCI-Express@3"
                        }, 

                        "device_type", 
                        Buffer (0x11)
                        {
                            "Thunderbolt XHCI"
                        }, 

                        "model", 
                        Buffer (0x25)
                        {
                            "Thunderbolt 3 JHL6340 XHCI Controler"
                        }
                    })
                }
            }
        }
    }

    Method (_SB.PCI0.DPCH._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x0A)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "device_type", 
            Buffer (0x16)
            {
                "Nvidia HDMI controler"
            }, 

            "model", 
            Buffer (0x3E)
            {
                "Intel Corporation 100 Series Chipset Family Thermal Subsystem"
            }, 

            "layout-id", 
            Buffer (0x04)
            {
                 0x0B, 0x00, 0x00, 0x00                         
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }
        })
    }

    Method (_SB.PCI0.MCHC._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "device_type", 
            Buffer (0x16)
            {
                "INTEL MCHC controler"
            }, 

            "model", 
            Buffer (0x3E)
            {
                "Intel Corporation MCHC controler"
            }
        })
    }

    Method (_SB.PCI0.HDAU._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x0A)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "device_type", 
            Buffer (0x15)
            {
                "Intel HDMI controler"
            }, 

            "model", 
            Buffer (0x2F)
            {
                "Intel Corporation HD 630 HDMI Audio Controller"
            }, 

            "layout-id", 
            Buffer (0x04)
            {
                 0x01, 0x00, 0x00, 0x00                         
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-2"
            }
        })
    }

    Method (_SB.PCI0.HDEF._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x08)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "model", 
            Buffer (0x20)
            {
                "Realtek ALC298 Audio Controller"
            }, 

            "layout-id", 
            Buffer (0x04)
            {
                 0x0B, 0x00, 0x00, 0x00                         
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }
        })
    }

    Method (_SB.PCI0.IGPU._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }, 

            "model", 
            Buffer (0x22)
            {
                "Intel Corporation Graphics HD 630"
            }
        })
    }

    Method (_SB.PCI0.IMEI._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "device_type", 
            Buffer (0x0F)
            {
                "IMEI controler"
            }, 

            "model", 
            Buffer (0x21)
            {
                "Intel Corporation IMEI controler"
            }
        })
    }

    Method (_SB.PCI0.PMCR._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "device_type", 
            Buffer (0x17)
            {
                "Power Manage controler"
            }, 

            "model", 
            Buffer (0x20)
            {
                "Intel Corporation PMC controler"
            }
        })
    }

    Method (_SB.PCI0.RP05.ENET._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0E)
            {
                "PCI-Express@5"
            }, 

            "model", 
            Buffer (0x3F)
            {
                "Qualcomm Atheros Killer E2500 PCI Express Gigabit Ethernet"
            }
        })
    }

    Method (_SB.PCI0.RP06.ARPT._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x06)
        {
            "device_type", 
            Buffer (0x13)
            {
                "Wireless controler"
            }, 

            "AAPL,slot-name", 
            Buffer (0x0E)
            {
                "PCI-Express@6"
            }, 

            "model", 
            Buffer (0x33)
            {
                "Broadcom BCM4352 802.11ac Wireless Network Adapter"
            }
        })
    }

    Method (_SB.PCI0.RP09.NVME._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0E)
            {
                "PCI-Express@9"
            }, 

            "model", 
            Buffer (0x2E)
            {
                "Samsung Electronics NVMe SSD Controller SM961"
            }
        })
    }

    Method (_SB.PCI0.SATA._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "model", 
            Buffer (0x3A)
            {
                "Intel Corporation 100 Series Chipset AHCI SATA controller"
            }
        })
    }

    Method (_SB.PCI0.SBUS._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "model", 
            Buffer (0x21)
            {
                "Intel Corporation SBUS controler"
            }
        })
    }

    Method (_SB.PCI0.XHC._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "model", 
            Buffer (0x45)
            {
                "Intel Corporation 100 Series Chipset Family USB xHCI Host Controller"
            }
        })
    }
}

