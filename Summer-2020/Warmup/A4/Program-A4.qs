namespace A4 {

    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : (Qubit[] => Unit is Adj+Ctl)) : Int {
        mutable result = 0;

        using(qs = Qubit[2]){
            unitary(qs);

            if(M(qs[1]) == One){
                set result = 0; // I ⊗ X
            } else{
                set result = 1; // CNOT
            }
            ResetAll(qs);
        }
        return result;
    }
}
