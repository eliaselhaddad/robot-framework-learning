"""Simulates a device for testing purposes."""

device_status = "OFF"
temperature = 25

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

def get_temperature():
    return temperature

def set_temperature(new_temperature):
    global temperature
    temperature = int(new_temperature)

def reset_device():
    global device_status, temperature
    device_status = "OFF"
    temperature = 25
    print("Device has been reset to default settings.")

def increase_temperature(amount):
    global temperature
    temperature += int(amount)