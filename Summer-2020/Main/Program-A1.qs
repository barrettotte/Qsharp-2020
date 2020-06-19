namespace A1 {
    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary: (Qubit[] => Unit is Adj+Ctl)): Int {
        mutable result = 0; // Assume operation is CNOT_12

        // CNOT_12: {00 -> 00, 01 -> 01, 10 -> 11, 11 -> 10}
        // CNOT_21: {00 -> 00, 01 -> 11, 10 -> 10, 11 -> 01}

        using(qs = Qubit[2]){
            X(qs[0]);    // 00 -> 10
            unitary(qs);

            if(M(qs[1]) == Zero){
                set result = 1;
            }
            ResetAll(qs);
        }
        return result;
    }
}