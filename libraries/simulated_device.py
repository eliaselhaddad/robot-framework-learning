"""Simulates a device for testing purposes."""

device_status = "OFF"

def turn_on():
    global device_status
    device_status = "ON"
    print("Device is now ON.")

def turn_off():
    global device_status
    device_status = "OFF"
    print("Device is now OFF.")

def get_status():
    return device_status
