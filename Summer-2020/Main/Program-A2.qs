namespace A2 {
    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : (Qubit[] => Unit is Adj+Ctl)) : Int {
        mutable result = 0; // Assume operation is Identity

        // [0] I:       { 00 -> 00,  01 -> 01,  10 -> 10,  11 -> 11 }
        // [1] CNOT_12: { 00 -> 00,  01 -> 01,  10 -> 11,  11 -> 10 }
        // [2] CNOT_21: { 00 -> 00,  01 -> 11,  10 -> 10,  11 -> 01 }
        // [3] SWAP:    { 00 -> 00,  01 -> 10,  10 -> 01,  11 -> 11 }

        using(qs = Qubit[2]){
            
            X(qs[0]); // 00 -> 01
            unitary(qs);
            let m0 = M(qs[0]); 
            let m1 = M(qs[1]);
            ResetAll(qs);

            X(qs[1]); // 00 -> 10
            unitary(qs);
            let n0 = M(qs[0]); 
            let n1 = M(qs[1]);
            ResetAll(qs);

            if(m0 == One and m1 == One and n0 == Zero and n1 == One){
                set result = 1; // CNOT_12
            } elif(m0 == One and m1 == Zero and n0 == One and n1 == One){
                set result = 2; // CNOT_21
            } elif(m0 == Zero and m1 == One and n0 == One and n1 == Zero){
                set result = 3; // SWAP
            }
        }
        return result;
    }
}