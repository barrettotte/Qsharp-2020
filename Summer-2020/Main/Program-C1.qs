namespace Solution {
    open Microsoft.Quantum.Intrinsic;

    operation Solve (qs : Qubit[]) : Unit {
        mutable result = Zero;
        
        using(ancilla = Qubit()){
            repeat{
                for(i in 0..Length(qs)-1){
                    H(qs[i]);
                }
                Controlled X(qs, ancilla);
                set result = M(ancilla);
                Reset(ancilla);
            } until(result == Zero);
            Reset(ancilla);
        }
    }
}