"""Heater controller for simulating heater behavior."""

controller_status = "OFF"
temperature = 25

def get_controller_status():
    return controller_status

def turn_on_controller():
    global controller_status
    controller_status = "ON"

def turn_off_controller():
    global controller_status
    controller_status = "OFF"

def reset_controller():
    global controller_status, temperature
    controller_status = "OFF"
    temperature = 25