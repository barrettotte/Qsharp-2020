namespace A1 {

    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : (Qubit => Unit is Adj+Ctl)) : Int {
        mutable result = 0;

        using(q = Qubit()){
            if(M(q) == One){
                X(q); // Force qubit to 0 state
            }
            unitary(q);

            if(M(q) == Zero){
                set result = 0; // Identity
            } else{
                set result = 1; // Pauli X
            }
            Reset(q);
        }
        return result;
    }
}

