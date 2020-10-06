The code for the Ridiculous Coffee Machine  (AKA Crop Circle Coffeemaker) consists of python scripts that control the movement of the machinery and one a Bash script that calls the individual python scripts at the appropriate times.

A pair of python scripts control each motor: one script (with the "cw" designation) turns the motorshaft in a clockwise direction, the second script (with a ccw designation) turns the motorshaft in a counterclockwise direction.

For example: Script "1_cw.py" turns the shaft of motor 1 in a clockwise direction. Script "1_ccw.py" turns the motorshaft in a counterclockwise direction. 

From the Linux command line the following will rotate the motor's shaft at a rate of 1 step/millisecond for 10 steps:

$ python 1_cw.py 1 10

Each motor is fitted with a pulley gear wound with a cable. As the motorshaft rotates, the cable is either reeled in or out, and each motor works as a cable actuator. Three of these cable actuators are connected to central "effector" thereby creating a "Cable Robot."

The python script, "move_dist.py" coordinates the actions of the three stepper motors (the cable actuators) so as to control the movement of the "effector." Movement of the coffee cup is acheived by placing it upon the effector and executing the move_dist.py script.

Pouring water from the kettle is controlled with the Bash script "brew_flow.sh"  

"Brew.sh" is the script that initiates the brewing.

# Crop_Circle_Coffeemaker_V1.0
