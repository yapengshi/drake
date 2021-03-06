{
  "Cps-Version": "0.8.0",
  "Name": "optitrack",
  "Description": "Translates data streamed from the Optitrack Motive software (a.k.a. NatNet) into LCM messages",
  "License": "BSD-3-Clause",
  "Requires": {
    "lcm": {
      "Hints": ["@prefix@/lib/cmake/lcm"],
      "X-CMake-Find-Args": ["CONFIG"]
    }
  },
  "Default-Components": [":optitrack-lcmtypes-cpp"],
  "Components": {
    "optitrack-client": {
      "Type": "exe",
      "Location": "@prefix@/bin/optitrack_client"
    },
    "optitrack-lcmtypes-cpp": {
      "Type": "interface",
      "Includes": ["@prefix@/include/lcmtypes"]
    },
    "optitrack-lcmtypes-java": {
      "Type": "jar",
      "Location": "@prefix@/share/java/lcmtypes_optitrack.jar",
      "Requires": ["lcm:lcm-java"]
    }
  }
}
