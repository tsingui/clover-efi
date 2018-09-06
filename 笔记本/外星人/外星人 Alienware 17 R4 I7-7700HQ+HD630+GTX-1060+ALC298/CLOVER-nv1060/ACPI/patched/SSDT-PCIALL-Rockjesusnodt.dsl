/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20170929 (64-bit version)(RM)
 * Copyright (c) 2000 - 2017 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLKYzcIf.aml, Thu Nov  9 18:27:02 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000ABF (2751)
 *     Revision         0x02
 *     Checksum         0xFB
 *     OEM ID           "APPLE "
 *     OEM Table ID     "RJ-ALL"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20170929 (538380585)
 */
DefinitionBlock ("", "SSDT", 2, "APPLE ", "RJ-ALL", 0x00001000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HDAU, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HDEF, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IGPU, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG2, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.PEGP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.PEGP.PCIB.TBLT, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP05, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP05.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP06, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP06.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SAT0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SBUS, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PPMC, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IMEI, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SPTS, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.KPTS, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.MCHC, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    

    Scope (\_SB.PCI0)
    {
        Scope (\_SB.PCI0.HDEF)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x14)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "Realtek Audio Controller", 
                        "model", 
                        Buffer (0x20)
                        {
                            "Realtek ALC298 Audio Controller"
                        }, 

                        "device_type", 
                        Buffer (0x11)
                        {
                            "Audio Controller"
                        }, 

                        "layout-id", 
                        Buffer (0x04)
                        {
                             0x0B, 0x00, 0x00, 0x00                         
                        }, 

                        "PinConfigurations", 
                        Buffer (0x40)
                        {
                             0x01, 0x27, 0x1c, 0x40, 
                             0x01, 0x27, 0x1d, 0x01, 
                             0x01, 0x27, 0x1e, 0xa6, 
                             0x01, 0x27, 0x1f, 0xb7, 
                             0x01, 0x77, 0x1c, 0x10, 
                             0x01, 0x77, 0x1d, 0x01, 
                             0x01, 0x77, 0x1e, 0x17, 
                             0x01, 0x77, 0x1f, 0x90,
                             0x01, 0xa7, 0x1c, 0x30,  
                             0x01, 0xa7, 0x1d, 0x10, 
                             0x01, 0xa7, 0x1e, 0xa1, 
                             0x01, 0xa7, 0x1f, 0x03, 
                             0x02, 0x17, 0x1c, 0x20, 
                             0x02, 0x17, 0x1d, 0x10, 
                             0x02, 0x17, 0x1e, 0x21, 
                             0x02, 0x17, 0x1f, 0x03, 
                        },
                         
                        "MaximumBootBeepVolume", 
                        Buffer (One)
                        {
                             0x40                                           
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-1"
                        },
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x71, 0xA1, 0x00, 0x00                         
                        }
                    })
            }
        }

        Scope (\_SB.PCI0.IGPU)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x12)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "Intel Display Controller", 
                        "model", 
                        Buffer (0x16)
                        {
                            "Intel HD Graphics 630"
                        }, 

                        "device_type", 
                        Buffer (0x13)
                        {
                            "Display Controller"
                        }, 

                        "AAPL,ig-platform-id", 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x1B, 0x59                         
                        }, 

                        "AAPL,GfxYTile", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-1"
                        },
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x1B, 0x59, 0x00, 0x00                         
                        }
                    })
            }
        }

        Scope (\_SB.PCI0.HDAU)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x10)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "HDMI Audio Controller", 
                        "model", 
                        Buffer (0x22)
                        {
                            "Intel HD 630 HDMI Audio Controller"
                        }, 

                        "device_type", 
                        Buffer (0x10)
                        {
                            "HDMI Controller"
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
                        },
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x03, 0x19, 0x00, 0x00                         
                        }
                    })
            }
        }

        Scope (\_SB.PCI0.XHC)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x14)
                    {
                        "AAPL,clock-id", 
                        Buffer (One)
                        {
                             0x01                                           
                        }, 

                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "Intel XHCI Controller", 
                        "model", 
                        Buffer (0x38)
                        {
                            "Intel 10 Series Chipset Family USB xHCI Host Controller"
                        }, 

                        "device_type", 
                        Buffer (0x0F)
                        {
                            "USB Controller"
                        }, 

                        "AAPL,current-available", 
                        0x04B0, 
                        "AAPL,current-extra", 
                        0x02BC, 
                        "AAPL,current-in-sleep", 
                        0x03E8, 
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x2F, 0xA1, 0x00, 0x00                         
                        }
                        
/*                        "AAPL,current-extra-in-sleep", 
                        0x0834, 
                        "AAPL,max-port-current-in-sleep", 
                        0x0A8C, 
                        "AAPL,device-internal", 
                        0x02, 
                        Buffer (One)
                        {
                             0x00                                           
                        }
*/                        
                    })
            }
        }
        
        Scope (\_SB.PCI0.PEG0)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x0E)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "PCIe Controller", 
                        "model", 
                        Buffer (0x32)
                        {
                            "Intel Corporation Kabylake PCIe Controller x16"
                        }, 

                        "device_type", 
                        Buffer (0x12)
                        {
                            "Kabylake PCIe Controller"
                        }, 

                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },

                        
                        "device-id", 
                        Buffer (0x04)
                        {
                             0x01, 0x19, 0x00, 0x00                         
                        },

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-2"
                        }
                    })
            }
        }

        Scope (\_SB.PCI0.PEG0.PEGP)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x14)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "Nvidia Display Controller", 
                        "model", 
                        Buffer (0x32)
                        {
                            "NVIDIA Corporation GP106M GeForce GTX 1060 Mobile"
                        }, 

                        "device_type", 
                        Buffer (0x12)
                        {
                            "Nvidia Controller"
                        }, 
                        
                        "AAPL,backlight-control", 
                        One, 
                        "AAPL,HasLid", 
                        One, 
                        "AAPL,HasPanel", 
                        One, 
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0xDE, 0x10, 0x00, 0x00                         
                        },

                        
                        "device-id", 
                        Buffer (0x04)
                        {
                             0x20, 0x1C, 0x00, 0x00                         
                        },

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-2"
                        }
                    })
            }
        }
/*        
        Scope (\_SB.PCI0.PEG2)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x0E)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "PCIe Controller", 
                        "model", 
                        Buffer (0x32)
                        {
                            "Intel Corporation Kabylake PCIe Controller x4"
                        }, 

                        "device_type", 
                        Buffer (0x17)
                        {
                            "Kabylake PCIe Controller"
                        },
                       
                        
                       
                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-2"
                        },
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x09, 0x19, 0x00, 0x00                         
                        }
                    })
            }
        }
        
        Scope (\_SB.PCI0.PEG2.PEGP)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x0E)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "Thunderbolt Controller", 
                        "model", 
                        Buffer (0x32)
                        {
                            "Thunderbolt Controller"
                        }, 

                        "device_type", 
                        Buffer (0x17)
                        {
                            "Thunderbolt Controller"
                        },
                       
                        
                       
                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-2"
                        },
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },

                        "device-id", 
                        Buffer (0x04)
                        {
                             0xDA, 0x15, 0x00, 0x00                         
                        }
                    })
            }
        }
        

        Scope (\_SB.PCI0.PEG2.PEGP.PCIB.TBLT)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x12)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "Thunderbolt Controller", 
                        "model", 
                        Buffer (0x32)
                        {
                            "Thunderbolt Controller"
                        }, 

                        "device_type", 
                        Buffer (0x17)
                        {
                            "Thunderbolt Controller"
                        },
                        
                        "AAPL,clock-id", 
                        Buffer (One)
                        {
                             0x00                                           
                        },
                        
                        "AAPL,current-available", 
                        0x04B0, 
                        "AAPL,current-extra", 
                        0x02BC, 
                        "AAPL,current-in-sleep", 
                        0x03E8, 
                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-2"
                        },
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },

                        "device-id", 
                        Buffer (0x04)
                        {
                             0xDB, 0x15, 0x00, 0x00                         
                        }
                    })
            }
        }
*/
        Scope (\_SB.PCI0.SAT0)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x0E)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "AHCI 1.31", 
                        "model", 
                        Buffer (0x49)
                        {
                            "Intel Corporation Sunrise Point-H 10 Series Chipset AHCI SATA controller"
                        }, 

                        "device_type", 
                        Buffer (0x0A)
                        {
                            "AHCI SATA"
                        }, 

                        "built-in", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }, 
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },


                        "device-id", 
                        Buffer (0x04)
                        {
                             0x02, 0xA1, 0x00, 0x00                         
                        }
                    })
            }
        }

        Scope (\_SB.PCI0.RP05.PXSX)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x10)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "AtherosE2500", 
                        "model", 
                        Buffer (0x3C)
                        {
                            "Qualcomm Atheros Killer E2500 PCI Express Gigabit Ethernet"
                        }, 

                        "device_type", 
                        Buffer (0x09)
                        {
                            "ethernet"
                        }, 

                        "built-in", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }, 

                        "location", 
                        Buffer (0x04)
                        {
                            "5"
                        },
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x69, 0x19, 0x00, 0x00                         
                        },

                        "device-id", 
                        Buffer (0x04)
                        {
                             0xB1, 0xE0, 0x00, 0x00                         
                        }
                    })
            }
        }

        Scope (\_SB.PCI0.RP06.PXSX)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x10)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "AirPort Extreme", 
                        "model", 
                        Buffer (0x3B)
                        {
                            "Qualcomm Atheros QCA6174 802.11ac Wireless Network Adapter"
                        }, 

                        "device_type", 
                        Buffer (0x08)
                        {
                            "AirPort"
                        }, 

                        "built-in", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }, 

                        "location", 
                        Buffer (0x04)
                        {
                            "6"
                        },
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x8C, 0x16, 0x00, 0x00                         
                        },

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x3E, 0x00, 0x00, 0x00                         
                        }
                    })
            }
        }

        Scope (\_SB.PCI0.RP01)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x10)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "PCI1 Controller", 
                        "model", 
                        Buffer (0x10)
                        {
                            "PCI1 Controller"
                        }, 

                        "device_type", 
                        Buffer (0x12)
                        {
                            "PCIE-1 Controller"
                        }, 

                        "built-in", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }, 

                        "location", 
                        Buffer (0x04)
                        {
                            "1"
                        },
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x10, 0xA1, 0x00, 0x00                         
                        }
                    })
            }
        }
        
        Scope (\_SB.PCI0.RP05)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x10)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "PCI5 Controller", 
                        "model", 
                        Buffer (0x10)
                        {
                            "PCI5 Controller"
                        }, 

                        "device_type", 
                        Buffer (0x12)
                        {
                            "PCIE-5 Controller"
                        }, 

                        "built-in", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }, 

                        "location", 
                        Buffer (0x04)
                        {
                            "5"
                        },
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x14, 0xA1, 0x00, 0x00                         
                        }
                    })
            }
        }
        
        Scope (\_SB.PCI0.RP06)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x10)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "PCI6 Controller", 
                        "model", 
                        Buffer (0x10)
                        {
                            "PCI6 Controller"
                        }, 

                        "device_type", 
                        Buffer (0x12)
                        {
                            "PCIE-6 Controller"
                        }, 

                        "built-in", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }, 

                        "location", 
                        Buffer (0x04)
                        {
                            "6"
                        },
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x15, 0xA1, 0x00, 0x00                         
                        }
                    })
            }
        }
        
        Scope (\_SB.PCI0.SBUS)  
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x0E)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "SMBUS", 
                        "model", 
                        Buffer (0x08)
                        {
                            "Intel Corporation Sunrise Point-H SMBus"
                        }, 

                        "device_type", 
                        Buffer (0x0A)
                        {
                            "APPLE SMBUS"
                        }, 

                        "built-in", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }, 
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },


                        "device-id", 
                        Buffer (0x04)
                        {
                             0x23, 0xA1, 0x00, 0x00                         
                        }
                    })
            }
        }
        
        Scope (\_SB.PCI0.PPMC)  
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x0E)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "PPMC", 
                        "model", 
                        Buffer (0x08)
                        {
                            "Intel Corporation Sunrise Point-H PMC"
                        }, 

                        "device_type", 
                        Buffer (0x0A)
                        {
                            "APPLE PCHPMC"
                        }, 

                        "built-in", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        },
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },



                        "device-id", 
                        Buffer (0x04)
                        {
                             0x21, 0xA1, 0x00, 0x00                         
                        }
                    })
            }
        }
        
        Scope (\_SB.PCI0.IMEI)  
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x0E)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "IMEI", 
                        "model", 
                        Buffer (0x0A)
                        {
                            "Intel Corporation Sunrise Point-H CSME HECI"
                        }, 

                        "device_type", 
                        Buffer (0x0A)
                        {
                            "APPLE IMEI"
                        }, 

                        "built-in", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        },
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },


                        "device-id", 
                        Buffer (0x04)
                        {
                             0x3A, 0xA1, 0x00, 0x00                         
                        }
                    })
            }
        }
        
        Scope (\_SB.PCI0.MCHC)  
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x0E)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "MCHC", 
                        "model", 
                        Buffer (0x0A)
                        {
                            "Intel Corporation HOST BRIDGE DRAM"
                        }, 

                        "device_type", 
                        Buffer (0x0A)
                        {
                            "HOST BRIDGE"
                        }, 

                        "built-in", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        },
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },



                        "device-id", 
                        Buffer (0x04)
                        {
                             0x10, 0x59, 0x00, 0x00                         
                        }
                    })
            }
        }
        
        Scope (\_SB.PCI0.LPCB)  
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x0E)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "LPCB", 
                        "model", 
                        Buffer (0x0A)
                        {
                            "Intel Corporation Sunrise Point-H LPC Controller"
                        }, 

                        "device_type", 
                        Buffer (0x0A)
                        {
                            "LPCB"
                        }, 

                        "built-in", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        },
                        
                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },

                        "device-id", 
                        Buffer (0x04)
                        {
                             0x54, 0xA1, 0x00, 0x00                         
                        }
                    })
            }
        }
/*        
        Scope (\_SB.PCI0.KPTS)  
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x0E)
                    {
                        "AAPL,slot-name", 
                    "Built In", 
                    "name", 
                    "KPTS", 
                    "model", 
                    Buffer (0x3C)
                    {
                        "Intel Corporation Sunrise Processor Thermal Subsystem"
                    }, 

                    "device_type", 
                    Buffer (0x09)
                    {
                        "KThermal"
                    }, 

                    "built-in", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                         
                    },
                    
                    "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },

                    

                    "device-id", 
                        Buffer (0x04)
                        {
                             0x03, 0x19, 0x00, 0x00                         
                        }
                    })
            }
        }
        
        Scope (\_SB.PCI0.SPTS)  
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x0E)
                    {
                        "AAPL,slot-name", 
                    "Built In", 
                    "name", 
                    "SPTS", 
                    "model", 
                    Buffer (0x3C)
                    {
                        "Intel Corporation Sunrise Point-H Thermal subsystem"
                    }, 

                    "device_type", 
                    Buffer (0x09)
                    {
                        "SThermal"
                    }, 

                    "built-in", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                         
                    }, 
                    
                    "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        },

                    "device-id", 
                        Buffer (0x04)
                        {
                             0x31, 0xA1, 0x00, 0x00                         
                        }
                        
                       
                    })
            }
        }
        
*/

        
    }
}

