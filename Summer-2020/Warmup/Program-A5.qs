namespace A5 {

    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : (Qubit => Unit is Adj+Ctl)) : Int {
        mutable result = 0; // Assume transformation is Z-gate

        using(qs = Qubit[2]){
            H(qs[1]); // Switch from Z-basis to X-basis

            // See https://en.wikipedia.org/wiki/Controlled_NOT_gate#Behaviour_in_the_Hadamard_transformed_basis
            CNOT(qs[1], qs[0]);

            // Q# Controlled functor: 
            //   https://docs.microsoft.com/en-us/quantum/user-guide/using-qsharp/operations-functions#controlled-functor
            Controlled unitary([qs[0]], qs[1]);

            CNOT(qs[1], qs[0]);
            H(qs[1]);

            if(M(qs[1]) == Zero){
                set result = 1; // transformation is -Z gate
            }
            ResetAll(qs);
        }
        return result;
    }
}
