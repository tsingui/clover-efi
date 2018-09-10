//
// SSDT-UIAC.dsl
//
// Dell XPS 15 9560 (with Fingerprint Sensor) 
//
// This SSDT contains customizations for USBInjectAll.kext.
//
// Would not have been possible without the work of RehabMan.
// https://github.com/RehabMan/OS-X-Clover-Laptop-Config
//

DefinitionBlock ("", "SSDT", 2, "hack", "UIAC", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            "8086_a12f", Package()
            {
                "port-count", Buffer() { 0x1A, 0, 0, 0 }, //Max virtual port is 26 (0x1A)
                "ports", Package()
                {
                    "HS01", Package() //Right side USB Type A (2.0)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x01, 0, 0, 0 },
                    },
                    "HS02", Package() //Let side USB Type A (2.0)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x02, 0, 0, 0 },
                    },
                    "HS04", Package() //Bluetooth
                    {
                        "UsbConnector", 0xFF,
                        "port", Buffer() { 0x04, 0, 0, 0 },
                    },
                    "HS07", Package() //Fingerprint sensor
                    {
                        "UsbConnector", 0xFF,
                        "port", Buffer() { 0x07, 0, 0, 0 },
                    },
                    "HS09", Package() //Touchscreen
                    {
                        "UsbConnector", 0xFF,
                        "port", Buffer() { 0x09, 0, 0, 0 },
                    },
                    "HS12", Package() //Camera
                    {
                        "UsbConnector", 0xFF,
                        "port", Buffer() { 0x0C, 0, 0, 0 },
                    },
                    "SS01", Package() //Right side USB Type A (3.0)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x11, 0, 0, 0 },
                    },
                    "SS02", Package() //Left side USB Type A (3.0)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x12, 0, 0, 0 },
                    },
                }
            }
        })
    }
}
//EOF
