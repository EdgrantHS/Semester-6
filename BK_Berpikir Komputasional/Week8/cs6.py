// Input data
INPUT locationList, priorityList, currentWeatherData, batteryCapacity, obstacleLocations

// Initialize variables
CREATE path WITH first element as drone launch location
CREATE counter = 0
CREATE minElement = INFINITY
CREATE locCounter = 0
CREATE i = 0

// Main loop
WHILE locationList IS NOT EMPTY DO
    // Check priority list
    IF counter < LENGTH(priorityList) THEN
        minElement = priorityList[counter]
    END IF

    // Find nearest location
    FOR EACH location IN locationList DO
        IF distance(path[LAST], location) < distance(path[LAST], minElement) THEN
            minElement = location
            i = locCounter // Store index of nearest location
        END IF
        locCounter = locCounter + 1
    END FOR

    // Remove selected location from lists
    REMOVE locationList[i]
    REMOVE priorityList[counter]

    // Add selected location to path
    APPEND minElement TO path

    // Check for rain
    IF currentWeatherData.isRaining THEN
        DISPLAY "It is raining"
    END IF

    // Check battery capacity
    IF batteryCapacity < distance(path[LAST], path[LAST-1]) THEN
        DISPLAY "Not enough battery"
        BREAK // Exit loop
    END IF

    // Check for obstacles
    IF obstaclesPresent(path[LAST], obstacleLocations) THEN
        DISPLAY "Obstacles detected"
        // Handle obstacle avoidance (not detailed in flowchart)
        // ...
    END IF

    // Update variables
    counter = counter + 1
    locCounter = 0
    i = 0
    minElement = INFINITY
END WHILE

// Output final path
DISPLAY path

END