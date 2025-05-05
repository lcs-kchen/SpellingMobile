//
//  Filtering.swift
//  SpellingMobile
//
//  Created by Haowen Chen on 2025-05-05.
//

// Define the function
//
//name: filtering
//
//inputs (parameters):
//          the original array (originalList)
//          what to filter on (desiredOutcome)
//output (return type): an array of results filtered based on outcome
//
func filtering(
    originalList: [Result],
    on desiredOutcome: Outcome
) -> [Result] {
    //Sequence (steps in the correct order)
    
    //Selection
    // 0. See if the user selected "All results"
    if desiredOutcome == .undetermined {
        return originalList
    } else {
        
        // 1. Make a new empty array
        var filteredHistory: [Result] = []
        
        // 2. Iterate over each item
        //    in the original array and
        //    decide whether to copy it to
        //    the filtered array
        //
        //    "foodItem" points at each
        //    element of the array in turn
        for foodItem in originalList {
            
            // 3. Decide whether to copy over
            //
            // e.g.: say "desiredOutcome" is
            // "incorrect"... we copy over only
            // food items where the user made
            // the wrong guess
            if foodItem.outcome == desiredOutcome {
                filteredHistory.append(foodItem)
            }
        }
        
        // 4. Return the filtered array
        return filteredHistory
        
    }
    
}
