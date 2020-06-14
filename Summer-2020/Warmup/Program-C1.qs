namespace C1 {

    open Microsoft.Quantum.Intrinsic;

    operation Solve(qs: Qubit[]): Unit {
        // A1 Winter 2019 contest
        //   and Quantum Katas Superposition 2.3

        mutable result = Zero;
        X(qs[0]);
        X(qs[1]);

        using(ancilla = Qubit()){
            repeat{
                for(i in 0..Length(qs)-1){
                    X(qs[i]); 
                    H(qs[i]);
                }
                Controlled X(qs, ancilla);
                set result = M(ancilla);
                Reset(ancilla);
            } until(result == Zero);
                
            Reset(ancilla);
        }
        X(qs[0]);
        X(qs[1]);
    }
}