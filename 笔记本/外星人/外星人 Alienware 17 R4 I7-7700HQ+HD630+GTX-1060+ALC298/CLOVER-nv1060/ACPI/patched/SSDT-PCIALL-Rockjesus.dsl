/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLK99MPh.aml, Sun Aug 12 15:05:05 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000008C4 (2244)
 *     Revision         0x02
 *     Checksum         0x36
 *     OEM ID           "hack"
 *     OEM Table ID     "PCI-RJ"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "PCI-RJ", 0x00000000)
{
    External (_SB_.PCI0.DPCH, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HDAU, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HDEF, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IGPU, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IMEI, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.MCHC, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.GFX0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PMCR, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP05.ENET, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP06.ARPT, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP09.NVME, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SATA, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SBUS, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_, DeviceObj)    // (from opcode)

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
                "onboard-2"
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
                 0x0B, 0x00, 0x00, 0x00                         
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
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

        Return (Package (0x08)
        {
            "compatible", 
            "pci14e4,43a0", 
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

