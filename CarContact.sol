// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;


contract Service_Contract {

string public constant Stringvalue="MyValue";
bool public MyBool = true;
int public MyInt = 1;
int public Myint = 1; // an integer can be signed and a uint can be an unsigned value meaning it can not be negative
int8 public Myint8 = 8; // '8' signifies an 8 bit variable
int256 public Myint256 = 4444; // '256' signifies a 256 bit variable

    bool public LF_tire = false; // Left Front tire
    bool public RF_tire = false; // Right Front tire
    bool public LR_tire = false; // Left Rear tire
    bool public RR_tire = false; // Right Rear tire

    bool public requiresService = false;

    bool public needsTireRotation = false;

    bool public needsOilChange = false;

    uint256 public vehicleInspectionTime;

    constructor() public {
        vehicleInspectionTime = block.timestamp;
    }

function Myfunction(int my_first_int, int my_second_int) public {
        if ((my_first_int - my_second_int) > 2) {
            MyBool = false;
        }
    }

    function checkMileage(int256 currentMileage, int256 lastMileage) public {
        int256 diff = currentMileage - lastMileage;

        if (diff > 5000) {
            requiresService = true;
            needsOilChange = true;
        } else {
            requiresService = false;
            needsOilChange = false;
        }
    }

function checkTireCondition(bool leftFront, bool rightFront, bool leftBack, bool rightBack) public {
        if (leftFront || rightFront || leftBack || rightBack) {
            requiresService = true;
            needsTireRotation = true;
        } else {
            requiresService = false;
            needsTireRotation = false;
        }
    }



}
