namespace A3 {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;

    operation Solve (unitary : (Qubit => Unit is Adj+Ctl)) : Int {
        mutable result = 0; // Assume operation is Hadamard gate
        
        using(q = Qubit()){
            //  X = HZH
            // -Z = XZX

            unitary(q);
            Z(q);
            unitary(q);

            set result = MResetZ(q) == One ? 0 | 1;
            Reset(q);
        }
        return result;
    }
}