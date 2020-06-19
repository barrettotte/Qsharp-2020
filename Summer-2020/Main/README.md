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