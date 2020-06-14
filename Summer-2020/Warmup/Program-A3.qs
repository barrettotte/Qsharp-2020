namespace A3 {

    open Microsoft.Quantum.Intrinsic;

    operation Solve (unitary : (Qubit => Unit is Adj+Ctl)) : Int {
        mutable result = 0;

        using(q = Qubit()){
            
            H(q);       // Switch from Z-basis to X-basis
            unitary(q); // Two Z gates == S gate
            unitary(q); // S gate also known as sqrt(Z)
            H(q);       // Switch from X-basis to Z-basis

            if(M(q) == One){
                set result = 1; // S Gate
            } else{
                set result = 0; // Z Gate
            }
            Reset(q);
        }
        return result;
    }
}

