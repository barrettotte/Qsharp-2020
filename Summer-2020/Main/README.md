# Summer 2020 - Main

The problem set for Microsoft Q# Coding Contest Summer 2020 - Main contest


Answers explained after warmup round -> 




## A1. Figure out direction of CNOT
https://codeforces.com/contest/1357/problem/A1

You are given an operation that implements a two-qubit unitary transformation: either the CNOT gate with the first qubit as control and the second qubit as target (CNOT_12), or the CNOT gate with the second qubit as control and the first qubit as target (CNOT_21). The operation will have Adjoint and Controlled variants defined.

Your task is to perform necessary operations and measurements to figure out which unitary it was and to return 0 if it was the CNOT_12 gate or 1 if it was the CNOT_21 gate.

You are allowed to apply the given operation and its adjoint/controlled variants **exactly once**.

You have to implement an operation which takes a two-qubit operation unitary as an input and returns an integer. The operation unitary will accept an array of qubits as input, but it will fail if the array is empty or has one or more than two qubits. Your code should have the following signature:

```php
namespace Solution {
    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : (Qubit[] => Unit is Adj+Ctl)) : Int {
        // your code here
    }
}
```


## A2. Distinguish I, CNOTs and SWAP
https://codeforces.com/contest/1357/problem/A2

You are given an operation that implements a two-qubit unitary transformation: either the identity (I ⊗ I gate), the CNOT gate (either with the first qubit as control and the second qubit as target or vice versa) or the SWAP gate. The operation will have Adjoint and Controlled variants defined.

Your task is to perform necessary operations and measurements to figure out which unitary it was and to return
* 0 if it was the I ⊗ I gate,
* 1 if it was the CNOT_12 gate,
* 2 if it was the CNOT_21 gate,
* 3 if it was the SWAP gate. 

You are allowed to apply the given operation and its adjoint/controlled variants **at most twice**.

You have to implement an operation which takes a two-qubit operation unitary as an input and returns an integer. The operation unitary will accept an array of qubits as input, but it will fail if the array is empty or has one or more than two qubits. Your code should have the following signature:

```php
namespace Solution {
    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : (Qubit[] => Unit is Adj+Ctl)) : Int {
        // your code here
    }
}
```


## A3. Distinguish H from X
https://codeforces.com/contest/1357/problem/A3

You are given an operation that implements a single-qubit unitary transformation: either the H gate or the X gate. The operation will have Adjoint and Controlled variants defined.

Your task is to perform necessary operations and measurements to figure out which unitary it was and to return 0 if it was the H gate or 1 if it was the X gate.

You are allowed to apply the given operation and its adjoint/controlled variants at most twice.

You have to implement an operation which takes a single-qubit operation as an input and returns an integer. Your code should have the following signature:

```php
namespace Solution {
    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : (Qubit => Unit is Adj+Ctl)) : Int {
        // your code here
    }
}
```


## A4. Distinguish Rz from R1
https://codeforces.com/contest/1357/problem/A4

You are given an operation that implements a single-qubit unitary transformation: either the Rz gate or the R1 gate. The operation will have Adjoint and Controlled variants defined.

Your task is to perform necessary operations and measurements to figure out which unitary it was and to return 0 if it was the Rz gate or 1 if it was the R1 gate.

You are allowed to apply the given operation and its adjoint/controlled variants exactly once (you can pass to it any rotation angle that you choose).

You have to implement an operation which takes a single-qubit operation unitary as an input and returns an integer. The operation unitary will accept two parameters (similarly to Rz and R1 intrinsic gates): the first parameter is the rotation angle and the second parameter is the qubit to which the rotation is applied. Your code should have the following signature:

```php
namespace Solution {
    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : ((Double, Qubit) => Unit is Adj+Ctl)) : Int {
        // your code here
    }
}
```


## A5. Distinguish Rz(θ) from Ry(θ)
https://codeforces.com/contest/1357/problem/A5

You are given an angle 𝜃 (in radians, 0.01𝜋 ≤ 𝜃 ≤ 0.99𝜋) and an operation that implements a single-qubit unitary transformation: either the 𝑅𝑧(𝜃) gate or the 𝑅𝑦(𝜃)

gate. The operation will have Adjoint and Controlled variants defined.

Your task is to perform necessary operations and measurements to figure out which unitary it was and to return 0 if it was the 𝑅𝑧(𝜃) gate or 1 if it was the 𝑅𝑦(𝜃) gate.

You are allowed to apply the given operation and its adjoint/controlled variants as many times as you need (within the time limit).

You have to implement an operation which takes a single-qubit operation as an input and returns an integer. Your code should have the following signature:

```php
namespace Solution {
    open Microsoft.Quantum.Intrinsic;

    operation Solve (theta : Double, unitary : (Qubit => Unit is Adj+Ctl)) : Int {
        // your code here
    }
}
```


## A6. Distinguish four Pauli gates
https://codeforces.com/contest/1357/problem/A6

You are given an operation that implements a single-qubit unitary transformation: either the identity (I gate) or one of the Pauli gates (X, Y or Z gate). The operation will have Adjoint and Controlled variants defined.

Your task is to perform necessary operations and measurements to figure out which unitary it was and to return
* 0 if it was the I gate,
* 1 if it was the X gate,
* 2 if it was the Y gate,
* 3 if it was the Z gate. 

You are allowed to apply the given operation and its adjoint/controlled variants **exactly once**.

You have to implement an operation which takes a single-qubit operation as an input and returns an integer. Your code should have the following signature:

```php
namespace Solution {
    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : (Qubit => Unit is Adj+Ctl)) : Int {
        // your code here
    }
}
```


## A7. Distinguish Y, XZ, -Y and -XZ
https://codeforces.com/contest/1357/problem/A7

You are given an operation that implements a single-qubit unitary transformation: either the Y gate (possibly with an extra global phase of −1) or the sequence of Pauli Z and Pauli X gates (the Z gate applied first and the X gate applied second; possibly with an extra global phase of −1

). The operation will have Adjoint and Controlled variants defined.

Your task is to perform necessary operations and measurements to figure out which unitary it was and to return
* 0 if it was the Y gate,
* 1 if it was the −XZ gate,
* 2 if it was the −Y gate,
* 3 if it was the XZ gate. 

You are allowed to apply the given operation and its adjoint/controlled variants **at most three times**.

You have to implement an operation which takes a single-qubit operation as an input and returns an integer. Your code should have the following signature:

```php
namespace Solution {
    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : (Qubit => Unit is Adj+Ctl)) : Int {
        // your code here
    }
}
```


## B1. "Is the bit string balanced?" oracle
https://codeforces.com/contest/1357/problem/B1

Implement a quantum oracle on 𝑁 qubits which checks whether the input bit string is balanced, i.e., whether it has exactly 𝑁/2 zeros and 𝑁/2 ones in it.

Your operation should take the following inputs:
* an array of 𝑁 ≤ 10 qubits "inputs" in an arbitrary state. 𝑁 will be an even number.
* a qubit "output" in an arbitrary state. 

Your operation should perform a unitary transformation on those qubits that can be described by its effect on the basis states: if "inputs" is in the basis state |𝑥⟩ and "output" is in the basis state |𝑦⟩, the result of applying the operation should be |𝑥⟩|𝑦 ⊕ 𝑓(𝑥)⟩, where 𝑓(𝑥)=1 if the bit string 𝑥 has the same number of zeros and ones in it, and 0 otherwise.

For example, if the qubits passed to your operation are in the state 1/√(2)(|01⟩ + |00⟩)𝑥 ⊗ |0⟩𝑦, the state of the system after applying the operation should be 1/√(2)(|01⟩𝑥 ⊗ |1⟩𝑦 + |00⟩𝑥|0⟩𝑦).

Your code should have the following signature (note that your operation should have Adjoint and Controlled variants defined for it; is Adj+Ctl in the operation signature will generate them automatically based on your code):

```php
namespace Solution {
    open Microsoft.Quantum.Intrinsic;

    operation Solve (inputs : Qubit[], output : Qubit) : Unit is Adj+Ctl {
        // your code here
    }
}
```

Your code is not allowed to use measurements or arbitrary rotation gates. This operation can be implemented using just the X gate and its controlled variants (possibly with multiple qubits as controls).


## B2. "Is the number divisible by 3?" oracle
https://codeforces.com/contest/1357/problem/B2

Implement a quantum oracle on 𝑁 qubits which checks whether the input bit string is a little-endian notation of a number that is divisible by 3.

Your operation should take the following inputs:
* an array of 𝑁 ≤ 8 qubits "inputs" in an arbitrary state.
* a qubit "output" in an arbitrary state. 

Your operation should perform a unitary transformation on those qubits that can be described by its effect on the basis states: if "inputs" is in the basis state |𝑥⟩
and "output" is in the basis state |𝑦⟩, the result of applying the operation should be |𝑥⟩|𝑦⊕𝑓(𝑥)⟩, where 𝑓(𝑥)=1 if the integer represented by the bit string 𝑥 is divisible by 3, and 0

otherwise.

For example, if the qubits passed to your operation are in the state 12√(|110⟩+|001⟩)𝑥⊗|0⟩𝑦=12√(|3⟩+|4⟩)𝑥⊗|0⟩𝑦
, the state of the system after applying the operation should be 12√(|3⟩𝑥⊗|1⟩𝑦+|4⟩𝑥|0⟩𝑦)=12√(|110⟩𝑥⊗|1⟩𝑦+|001⟩𝑥|0⟩𝑦)

.

Your code should have the following signature (note that your operation should have Adjoint and Controlled variants defined for it; is Adj+Ctl in the operation signature will generate them automatically based on your code):

```php
namespace Solution {
    open Microsoft.Quantum.Intrinsic;

    operation Solve (inputs : Qubit[], output : Qubit) : Unit is Adj+Ctl {
        // your code here
    }
}
```

Your code is not allowed to use measurements or arbitrary rotation gates. This operation can be implemented using just the X gate and its controlled variants (possibly with multiple qubits as controls).