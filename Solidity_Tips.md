# Solidity Tips

This section will highlight best tips found during my learning path.

## Solidity Cheat-sheet
---



## GAS Optimization
---
### **Array**
--- 

### Tip-1

1. Cache Array `length` while looping over it.
2. Why? Because Solidity does not store the length of an array as a variable. Instead, it calculates the length of an array each time it is accessed. 
3. This means that if you access the length of an array within a loop, it will be recalculated on each iteration, resulting in additional gas costs.

```solidity
uint256[] myArray;

function myFunction() public {
    // caching array length and using it on every iteration
    uint256 arrayLength = myArray.length;
    for (uint256 i = 0; i < arrayLength; i++) {
        // do something with myArray[i]
    }
}
```