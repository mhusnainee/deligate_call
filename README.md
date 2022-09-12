# deligate_call
Delegate call from contract two to contract one's function set1 to change the state variables of contract two


## Functionality

Delegate calls are necessary when dealing with upgradeable smart contracts

- Contract two initiates a delegate call to the set1 function of contract one

- Then set1 function of contract one implements the logic and changes state variables of contract two

### Steps

- Deploy both contracts

- Copy the address of contract one and paste it in the address parameter of contract two's set1 function
