namespace A2 {
    
    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : (Qubit => Unit is Adj+Ctl)) : Int {
        mutable result = 0;

        using(q = Qubit()){
            
            // X = HZH
            H(q);         // switch from Z-basis to X-basis
            unitary(q);   // If its a Z gate, it will perform NOT on Z-basis
            H(q);         // switch from X-basis to Z-basis

            if(M(q) == One){
                set result = 1; // Pauli Z
            } else{
                set result = 0; // Identity
            }
            Reset(q);
        }
        return result;
    }
}

