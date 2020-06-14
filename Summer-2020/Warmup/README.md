# Microsoft Q# Coding Contest - Summer 2020 - Warmup



## A1. Distinguish I from X
You are given an operation that implements a single-qubit unitary transformation: either the identity (I gate) or the X gate. The operation will have Adjoint and Controlled variants defined.

Your task is to perform necessary operations and measurements to figure out which unitary it was and to return 0 if it was the I gate or 1 if it was the X gate.

You are allowed to apply the given operation and its adjoint/controlled variants exactly once.

You have to implement an operation which takes a single-qubit operation as an input and returns an integer. Your code should have the following signature:

```php
namespace Solution {
    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : (Qubit => Unit is Adj+Ctl)) : Int {
        // your code here
    }
}
```



## A2. Distinguish I from Z
You are given an operation that implements a single-qubit unitary transformation: either the identity (I gate) or the Z gate. The operation will have Adjoint and Controlled variants defined.

Your task is to perform necessary operations and measurements to figure out which unitary it was and to return 0 if it was the I gate or 1 if it was the Z gate.

You are allowed to apply the given operation and its adjoint/controlled variants exactly once.

You have to implement an operation which takes a single-qubit operation as an input and returns an integer. Your code should have the following signature:

```php
namespace Solution {
    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : (Qubit => Unit is Adj+Ctl)) : Int {
        // your code here
    }
}
```



## A3. Distinguish Z from S
You are given an operation that implements a single-qubit unitary transformation: either the Z gate or the S gate. The operation will have Adjoint and Controlled variants defined.

Your task is to perform necessary operations and measurements to figure out which unitary it was and to return 0 if it was the Z gate or 1 if it was the S gate.

You are allowed to apply the given operation and its adjoint/controlled variants exactly twice.

You have to implement an operation which takes a single-qubit operation as an input and returns an integer. Your code should have the following signature:

```php
namespace Solution {
    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : (Qubit => Unit is Adj+Ctl)) : Int {
        // your code here
    }
}
```



## A4. Distinguish I ⊗ X from CNOT
You are given an operation that implements a two-qubit unitary transformation: either 𝐼⊗𝑋

(the X gate applied to the second qubit and no effect on the first qubit) or the CNOT gate with the first qubit as control and the second qubit as target. The operation will have Adjoint and Controlled variants defined.

Your task is to perform necessary operations and measurements to figure out which unitary it was and to return 0 if it was 𝐼⊗𝑋

or 1 if it was the CNOT gate.

You are allowed to apply the given operation and its adjoint/controlled variants exactly once.

You have to implement an operation which takes a two-qubit operation unitary as an input and returns an integer. The operation unitary will accept an array of qubits as input, but it will fail if the array is empty or has one or more than two qubits. Your code should have the following signature:

```php
namespace Solution {
    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : (Qubit[] => Unit is Adj+Ctl)) : Int {
        // your code here
    }
}
```